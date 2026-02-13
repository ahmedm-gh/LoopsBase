---
trigger: manual
---

# AI Rules for Dart and Flutter

Expert Flutter/Dart agent specializing in beautiful, performant, maintainable code following modern best practices for mobile, web, and desktop platforms.

**Versions**: Dart >=3.11.0, Flutter >=3.41.0

---

## Syntax Rules

### 1. Dot Shorthands
Use `.member` instead of `Type.member` when context type is clear.

```dart
// Valid
Color color = .red;
EdgeInsets padding = .all(16.0);
if (status == .success) {}
switch (value) { .option1 => "First" }

// Invalid
.myStaticMethod(); // Can't start statements
final user = .new(name: "John"); // Avoid for unnamed constructors
```

**Rule**: Use full `Type.member` only when context is ambiguous.

### 2. String Literals
Always use double quotes `"` (except imports/exports/parts).

```dart
// const message = "Hello";
// const message = 'Hello';
```

### 3. Switch Expressions Over Statements
```dart
String getStatus(int code) => switch (code) {
  200 => "Success",
  404 => "Not Found",
  >= 500 => "Server Error",
  _ => "Unknown",
};

Widget build() => switch (state) {
  Loading() => const CircularProgressIndicator(),
  Success(data: final d) => DataView(d),
  Error(message: final msg) => ErrorView(msg),
};
```

**Rules**:
- Prefer exhaustive switches on sealed types
- Avoid `_` when all cases are known
- Use guards for conditional logic: `when y > 5`

---

## Linter Configuration

```yaml
linter:
  rules:
    always_declare_return_types: true
    always_put_required_named_parameters_first: true
    avoid_dynamic_calls: true
    avoid_print: true
    avoid_unnecessary_containers: true
    cascade_invocations: true
    prefer_const_constructors: true
    prefer_const_declarations: true
    prefer_final_fields: true
    prefer_final_locals: true
    require_trailing_commas: true
    use_super_parameters: true
    unawaited_futures: true
    no_wildcard_variable_uses: true

analyzer:
  language:
    strict-casts: true
    strict-inference: true
    strict-raw-types: true
```

---

## Best Practices

### Null Safety
```dart
final name = user?.name ?? "Guest";
final names = [?nullableName, "Alice"];
final children = [?optionalWidget, const Footer()];

// if-case for null checking
if (user case final user?) { print(user.name); }
```

### Immutability
```dart
const userName = "John";
const padding = EdgeInsets.all(16.0);

@immutable
class User {
  const User({required this.name});
  final String name;
}

// Use const BorderRadius
borderRadius: const BorderRadius.all(Radius.circular(12.0))
```

**Rules**: Maximize `final` and `const`. All fields `final` unless mutation required.

### Collections
```dart
final items = [
  "Home",
  if (isLoggedIn) "Profile",
  for (final item in extras) item,
  ?nullableItem,
];

final combined = [...list1, ...?nullableList2];

// Records for multiple returns
(String, int) getUserData() => ("Alice", 25);
final (name, age) = getUserData();
```

**Optimize**: Use `Set` for uniqueness, `Map` for O(1) lookup.

### Async/Await
```dart
Future<User> fetchUser(String id) async {
  final response = await http.get(Uri.parse("$url/users/$id"));
  if (response.statusCode != 200) throw NetworkException("Failed");
  return User.fromJson(jsonDecode(response.body));
}

// Parallel execution
final [user, posts, comments] = await Future.wait([
  fetchUser(), fetchPosts(), fetchComments(),
]);

// Guard against stale state
Future<void> search(String query) async {
  final searchId = ++_searchCounter;
  final results = await api.search(query);
  if (searchId == _searchCounter && mounted) {
    setState(() => _results = results);
  }
}
```

**Critical**: Always check `mounted` before `setState` in async callbacks. Use `Future.wait` for independent operations.

### Widget Building
```dart
// Extract complex widgets (prefer classes for large/stateful widgets)
class ProfileCard extends StatelessWidget {
  const ProfileCard({required this.user, super.key});
  final User user;
  
  @override
  Widget build(BuildContext context) => Card(
    child: Column(children: [_buildHeader(), _buildBody()]),
  );
  
  Widget _buildHeader() => Text(user.name);
  Widget _buildBody() => Text(user.bio);
}

// Use const everywhere
const SizedBox(height: 20);
const Divider();

// Switch expressions in widgets
child: switch (state) {
  .loading => const CircularProgressIndicator(),
  .error => const ErrorWidget(),
  _ => null,
},

// Nullable switch for optional widgets
Column(
  children: [
    const Header(),
    ?switch (mode) {
      .compact => const CompactView(),
      .expanded => const ExpandedView(),
      _ => null,
    },
  ],
)
```

### Records & Destructuring
```dart
(String, int) getUserData() => ("Alice", 25);
({String id, String title}) getPost() => (id: "1", title: "Hello");

final (name, age) = getUserData();
final (:id, :title) = getPost();
```

**Use records when**: No behavior needed, used locally, short-lived data.
**Use classes when**: Shared across files, needs methods, public API, validation required.

### State Management

**Option 1: Sealed classes for state machines**
```dart
sealed class LoadingState {}
final class Initial extends LoadingState {}
final class Loading extends LoadingState {}
final class Success<T> extends LoadingState {
  const Success(this.data);
  final T data;
}
final class Failure extends LoadingState {
  const Failure(this.error);
  final Object error;
}

Widget build() => switch (state) {
  Initial() => const Placeholder(),
  Loading() => const CircularProgressIndicator(),
  Success(data: final d) => DataView(d),
  Failure(error: final e) => ErrorView(e),
};
```

**Option 2: Single class with copyWith**
```dart
@immutable
final class AppState with EquatableMixin {
  const AppState({required this.user, required this.posts});
  
  final User? user;
  final List<Post> posts;
  
  AppState copyWith({User? user, List<Post>? posts}) {
    return AppState(
      user: user ?? this.user,
      posts: posts ?? this.posts,
    );
  }
  
  @override
  List<Object?> get props => [user, posts];
}
```

**Rules**: All state classes immutable, no public mutable fields, separate UI state from domain models.

### Performance
```dart
// const prevents rebuilds
const Padding(padding: EdgeInsets.all(16), child: Text("Static"));

// Cache expensive computations
late final ExpensiveData _cached = _computeExpensive();

// ListView.builder for large lists
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) => ItemTile(items[index]),
);

// RepaintBoundary for isolated widgets
RepaintBoundary(child: ComplexChart(data));

// Avoid Opacity, use Color.withAlpha
Container(color: Colors.blue.withAlpha(128)) // Not Opacity(opacity: 0.5)
```

**Checklist**:
- Use `const` constructors everywhere possible
- Move expensive work outside `build`
- Use `late final` for values computed once
- Use `.builder` for large lists
- Avoid creating closures in frequently rebuilt widgets
- Never perform heavy work inside `build`

**Rebuild optimization**: Use `BlocSelector`, `ValueListenableBuilder` to minimize scope.

### Keys
```dart
// ValueKey for stable IDs
ListView(
  children: items.map((item) => ItemWidget(
    key: ValueKey(item.id),
    item: item,
  )).toList(),
);
```

**Rules**: Provide keys for dynamic lists when order changes. Prefer `ValueKey` over `UniqueKey`. Avoid `GlobalKey` unless necessary.

### Classes & JSON
```dart
// Generic type-safe helper
T toValue<T>(dynamic json, T defaultValue) {
  if (json is T) return json;
  return defaultValue;
}

// Usage in fromJson
factory User.fromJson(Map<String, dynamic> json) {
  return User(
    id: toValue(json["id"], ""),
    name: toValue(json["name"], "Unknown"),
    tags: toValue<List>(json["tags"], []).whereType<String>().toSet(),
  );
}
```

**Class modifiers**:
- `sealed` → Closed hierarchies (states, unions)
- `final` → Prevent subclassing
- `base` → Controlled inheritance
- `interface` → Contract-only types

**JSON safety**: Handle missing keys, null values, validate types, provide defaults.

### Architecture
```dart
// Feature-first structure
lib/
  features/
    auth/
      data/repositories/, datasources/
      domain/entities/, repositories/, usecases/
      presentation/bloc/, pages/, widgets/
  core/network/, utils/
```

**Layer rules**:
1. Domain: No dependencies, pure Dart, business logic only
2. Data: Depends on domain, implements repositories
3. Presentation: Depends on domain (NOT data), UI + state

**Rules**: Use DI, domain must not depend on UI/data, avoid files >500 lines.

### Code Style
```dart
// Descriptive names
final List<User> activeUsers = [];
bool isAuthenticated = false;
bool hasPermission = true;

// Early returns
String getName(User? user) {
  if (user == null) return "Guest";
  if (user.name.isEmpty) return "Anonymous";
  return user.name;
}
```

**Rules**: Max function ~50 lines, max nesting 3 levels, descriptive names, booleans as predicates (is/has/can/should).

### Error Handling
```dart
class NetworkException implements Exception {
  const NetworkException(this.message, [this.statusCode]);
  final String message;
  final int? statusCode;
}

// Never swallow silently
try {
  await riskyOp();
} catch (e, stackTrace) {
  developer.log("Op failed", error: e, stackTrace: stackTrace);
  rethrow;
}
```

### Logging
```dart
import "dart:developer" as developer;

developer.log("User authenticated", name: "AuthService", level: 800);
developer.log("Failed", error: e, stackTrace: st, level: 1000);

// Never use print()
```

---

## Pre-submission Checklist

- [ ] Double quotes for strings (except imports)
- [ ] Dot shorthands where context clear
- [ ] Switch expressions over statements
- [ ] All fields `final` unless mutation required
- [ ] `const` for compile-time constants
- [ ] Proper null safety (`?.`, `??`, if-case)
- [ ] Async checks `mounted` before `setState`
- [ ] `const` constructors in widgets
- [ ] No heavy work in `build`
- [ ] `.builder` for large lists
- [ ] Keys for dynamic lists
- [ ] JSON validates types/nulls
- [ ] Typed meaningful errors
- [ ] `developer.log` not `print()`
- [ ] Clean architecture (domain/data/presentation)
- [ ] Functions ~50 lines, nesting ≤3
- [ ] Trailing commas on multi-line

**Agent directive**: Strictly adhere to ALL rules. Prioritize correctness, type safety, performance. Generate code passing all linters following modern Dart/Flutter best practices without exception.