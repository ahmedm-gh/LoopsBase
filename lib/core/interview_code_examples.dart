/// Interview Questions - Complete Code Examples Library
/// Merged from extra_questions.json and flutter_interview_questions_complete.json
/// Contains simple and complex examples for each topic
library;

// ============================================================================
// CODE EXAMPLES ORGANIZED BY TOPIC
// ============================================================================

abstract class CodeExamples {
  // ==========================================================================
  // 1. WIDGETS - StatelessWidget vs StatefulWidget
  // ==========================================================================
  
  static const statelessWidgetSimple = r'''
// مثال بسيط - Simple Example
class MyText extends StatelessWidget {
  final String text;
  
  const MyText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
''';

  static const statefulWidgetSimple = r'''
// مثال بسيط - Simple Example
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('العداد: $_counter'),
        ElevatedButton(
          onPressed: _increment,
          child: const Text('زيادة'),
        ),
      ],
    );
  }
}
''';

  static const statefulWidgetComplex = r'''
// مثال معقد - Complex Example with lifecycle
class DataFetcher extends StatefulWidget {
  final String userId;
  
  const DataFetcher({required this.userId, super.key});

  @override
  State<DataFetcher> createState() => _DataFetcherState();
}

class _DataFetcherState extends State<DataFetcher> {
  bool _isLoading = false;
  String? _data;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  void didUpdateWidget(DataFetcher oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.userId != widget.userId) {
      _fetchData();
    }
  }

  Future<void> _fetchData() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final data = await ApiService.fetchUser(widget.userId);
      setState(() {
        _data = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const CircularProgressIndicator();
    }
    
    if (_error != null) {
      return Text('خطأ: $_error');
    }
    
    return Text(_data ?? 'لا توجد بيانات');
  }

  @override
  void dispose() {
    // تنظيف الموارد - Clean up resources
    super.dispose();
  }
}
''';

  // ==========================================================================
  // 2. DART BASICS - Mixins
  // ==========================================================================

  static const mixinsSimple = r'''
// مثال بسيط - Simple Mixin Example
mixin Logger {
  void log(String message) {
    print('📝 LOG: $message');
  }
}

class MyService with Logger {
  void doWork() {
    log('بدء العمل');
    // ... do work
    log('انتهى العمل');
  }
}
''';

  static const mixinsComplex = r'''
// مثال معقد - Complex Mixin Example
mixin Validation {
  bool validateEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
  
  bool validatePhone(String phone) {
    return RegExp(r'^\+?[\d\s-]{10,}$').hasMatch(phone);
  }
}

mixin ApiMixin {
  Future<T> makeRequest<T>(
    String endpoint, {
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response = await http.get(Uri.parse(endpoint));
      if (response.statusCode == 200) {
        return fromJson(json.decode(response.body));
      }
      throw Exception('فشل التحميل');
    } catch (e) {
      rethrow;
    }
  }
}

class UserRepository with Validation, ApiMixin {
  Future<User> getUser(String email) async {
    if (!validateEmail(email)) {
      throw ArgumentError('بريد إلكتروني غير صالح');
    }
    
    return makeRequest(
      '/api/users/$email',
      fromJson: (json) => User.fromJson(json),
    );
  }
}

// Multiple mixins with method override
mixin TimestampMixin {
  DateTime createdAt = DateTime.now();
  DateTime? updatedAt;
  
  void markAsUpdated() {
    updatedAt = DateTime.now();
  }
}

mixin SerializableMixin {
  Map<String, dynamic> toJson();
  
  String toJsonString() => json.encode(toJson());
}

class TodoItem with TimestampMixin, SerializableMixin {
  final String id;
  String title;
  bool isDone;
  
  TodoItem({
    required this.id,
    required this.title,
    this.isDone = false,
  });
  
  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'isDone': isDone,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
  };
}
''';

  // ==========================================================================
  // 3. EXTENSION METHODS
  // ==========================================================================

  static const extensionsSimple = r'''
// مثال بسيط - Simple Extensions
extension StringExtensions on String {
  int toIntOrZero() {
    return int.tryParse(this) ?? 0;
  }
  
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}

void main() {
  print('123'.toIntOrZero()); // 123
  print('abc'.toIntOrZero()); // 0
  print('hello'.capitalize()); // Hello
}
''';

  static const extensionsComplex = r'''
// مثال معقد - Complex Extensions
extension StringValidation on String {
  bool get isValidEmail {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
  }
  
  bool get isValidUrl {
    return Uri.tryParse(this)?.hasAbsolutePath ?? false;
  }
  
  bool get isValidPhone {
    return RegExp(r'^\+?[\d\s-]{10,}$').hasMatch(this);
  }
  
  String maskEmail() {
    if (!isValidEmail) return this;
    final parts = split('@');
    final username = parts[0];
    final masked = username.length > 3
        ? '${username.substring(0, 2)}***${username.substring(username.length - 1)}'
        : '***';
    return '$masked@${parts[1]}';
  }
}

extension ListExtensions<T> on List<T> {
  List<T> get unique {
    return toSet().toList();
  }
  
  T? get firstOrNull => isEmpty ? null : first;
  T? get lastOrNull => isEmpty ? null : last;
  
  List<List<T>> chunk(int size) {
    final chunks = <List<T>>[];
    for (var i = 0; i < length; i += size) {
      chunks.add(sublist(i, i + size > length ? length : i + size));
    }
    return chunks;
  }
  
  Map<K, List<T>> groupBy<K>(K Function(T) keyFunction) {
    return fold<Map<K, List<T>>>({}, (map, element) {
      final key = keyFunction(element);
      map.putIfAbsent(key, () => []).add(element);
      return map;
    });
  }
}

extension DateTimeExtensions on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }
  
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year && 
           month == yesterday.month && 
           day == yesterday.day;
  }
  
  String get toRelativeTime {
    final now = DateTime.now();
    final difference = now.difference(this);
    
    if (difference.inDays > 365) {
      return 'منذ ${difference.inDays ~/ 365} سنة';
    } else if (difference.inDays > 30) {
      return 'منذ ${difference.inDays ~/ 30} شهر';
    } else if (difference.inDays > 0) {
      return 'منذ ${difference.inDays} يوم';
    } else if (difference.inHours > 0) {
      return 'منذ ${difference.inHours} ساعة';
    } else if (difference.inMinutes > 0) {
      return 'منذ ${difference.inMinutes} دقيقة';
    } else {
      return 'الآن';
    }
  }
}

extension IntExtensions on int {
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);
  
  String get toArabicNumber {
    const arabicDigits = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    return toString().split('').map((d) => arabicDigits[int.parse(d)]).join();
  }
}

// Usage examples
void main() {
  // String
  print('test@example.com'.isValidEmail); // true
  print('test@example.com'.maskEmail()); // te***t@example.com
  
  // List
  final numbers = [1, 2, 2, 3, 3, 3, 4];
  print(numbers.unique); // [1, 2, 3, 4]
  print(numbers.chunk(3)); // [[1, 2, 2], [3, 3, 3], [4]]
  
  final users = [User('احمد', 25), User('محمد', 25), User('علي', 30)];
  print(users.groupBy((u) => u.age)); // {25: [User('احمد'), User('محمد')], 30: [User('علي')]}
  
  // DateTime
  print(DateTime.now().isToday); // true
  print(DateTime.now().subtract(2.days).toRelativeTime); // منذ 2 يوم
  
  // Int
  await Future.delayed(5.seconds);
  print(123.toArabicNumber); // ١٢٣
}
''';

  // ==========================================================================
  // 4. ASYNC PROGRAMMING - Future vs Stream
  // ==========================================================================

  static const futureSimple = r'''
// مثال بسيط - Simple Future
Future<String> fetchUserName(int userId) async {
  await Future.delayed(const Duration(seconds: 2));
  return 'User $userId';
}

void main() async {
  print('جاري التحميل...');
  final name = await fetchUserName(1);
  print('الاسم: $name');
}
''';

  static const streamSimple = r'''
// مثال بسيط - Simple Stream
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (final value in countStream(5)) {
    print('العدد: $value');
  }
}
''';

  static const asyncComplex = r'''
// مثال معقد - Complex Async Example
class DataService {
  // Multiple concurrent futures
  Future<UserProfile> getUserProfile(String userId) async {
    final results = await Future.wait([
      fetchUserInfo(userId),
      fetchUserPosts(userId),
      fetchUserFollowers(userId),
    ]);
    
    return UserProfile(
      info: results[0] as UserInfo,
      posts: results[1] as List<Post>,
      followers: results[2] as List<User>,
    );
  }
  
  // Error handling with timeout
  Future<String> fetchWithTimeout(String url) async {
    try {
      final response = await http.get(Uri.parse(url))
          .timeout(const Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw HttpException('فشل: ${response.statusCode}');
      }
    } on TimeoutException {
      throw Exception('انتهت المهلة');
    } on SocketException {
      throw Exception('لا يوجد اتصال بالإنترنت');
    } catch (e) {
      throw Exception('خطأ: $e');
    }
  }
  
  // Retry logic
  Future<T> retryOperation<T>(
    Future<T> Function() operation, {
    int maxAttempts = 3,
    Duration delay = const Duration(seconds: 1),
  }) async {
    int attempts = 0;
    
    while (true) {
      try {
        attempts++;
        return await operation();
      } catch (e) {
        if (attempts >= maxAttempts) {
          rethrow;
        }
        await Future.delayed(delay * attempts);
      }
    }
  }
}

// Stream controllers and transformations
class ChatService {
  final _messagesController = StreamController<Message>.broadcast();
  Stream<Message> get messages => _messagesController.stream;
  
  // Transform stream
  Stream<List<Message>> get messagesByHour {
    return messages
        .bufferTime(const Duration(hours: 1))
        .where((messages) => messages.isNotEmpty);
  }
  
  // Filter and map
  Stream<String> get userMessages {
    return messages
        .where((msg) => msg.type == MessageType.user)
        .map((msg) => msg.content);
  }
  
  void sendMessage(Message message) {
    _messagesController.add(message);
  }
  
  void dispose() {
    _messagesController.close();
  }
}

// StreamBuilder with error handling
class MessageList extends StatelessWidget {
  final ChatService chatService;
  
  const MessageList({required this.chatService, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Message>(
      stream: chatService.messages,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorWidget('خطأ: ${snapshot.error}');
        }
        
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        
        if (!snapshot.hasData) {
          return const Text('لا توجد رسائل');
        }
        
        final message = snapshot.data!;
        return MessageTile(message: message);
      },
    );
  }
}
''';

  // ==========================================================================
  // 5. DESIGN PATTERNS - Factory & Singleton
  // ==========================================================================

  static const factorySimple = r'''
// مثال بسيط - Simple Factory
class Point {
  final double x, y;
  
  Point(this.x, this.y);
  
  factory Point.origin() {
    return Point(0, 0);
  }
  
  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(
      json['x'] as double,
      json['y'] as double,
    );
  }
}

void main() {
  final p1 = Point.origin();
  final p2 = Point.fromJson({'x': 10.0, 'y': 20.0});
}
''';

  static const singletonSimple = r'''
// مثال بسيط - Simple Singleton
class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  
  factory DatabaseService() => _instance;
  
  DatabaseService._internal();
  
  void query(String sql) {
    print('تنفيذ: $sql');
  }
}

void main() {
  final db1 = DatabaseService();
  final db2 = DatabaseService();
  print(identical(db1, db2)); // true
}
''';

  static const designPatternsComplex = r'''
// مثال معقد - Complex Design Patterns

// Factory Pattern with Type Selection
abstract class Logger {
  void log(String message);
  
  factory Logger.create(LoggerType type) {
    return switch (type) {
      LoggerType.console => ConsoleLogger(),
      LoggerType.file => FileLogger(),
      LoggerType.remote => RemoteLogger(),
    };
  }
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) => print(message);
}

class FileLogger implements Logger {
  @override
  void log(String message) {
    // كتابة إلى ملف
  }
}

class RemoteLogger implements Logger {
  @override
  void log(String message) {
    // إرسال إلى خادم
  }
}

// Singleton with lazy initialization and thread safety
class AppConfig {
  static AppConfig? _instance;
  static final _lock = Object();
  
  final String apiUrl;
  final String apiKey;
  
  AppConfig._({
    required this.apiUrl,
    required this.apiKey,
  });
  
  static Future<AppConfig> getInstance() async {
    if (_instance == null) {
      synchronized(_lock, () async {
        if (_instance == null) {
          final config = await _loadConfig();
          _instance = AppConfig._(
            apiUrl: config['apiUrl'],
            apiKey: config['apiKey'],
          );
        }
      });
    }
    return _instance!;
  }
  
  static Future<Map<String, String>> _loadConfig() async {
    // تحميل من ملف أو API
    return {'apiUrl': 'https://api.example.com', 'apiKey': 'key'};
  }
}

// Builder Pattern
class HttpRequest {
  final String url;
  final String method;
  final Map<String, String>? headers;
  final Map<String, dynamic>? body;
  final Duration? timeout;
  
  HttpRequest._({
    required this.url,
    required this.method,
    this.headers,
    this.body,
    this.timeout,
  });
  
  factory HttpRequest.builder(String url) => _HttpRequestBuilder(url);
}

class _HttpRequestBuilder {
  final String _url;
  String _method = 'GET';
  Map<String, String>? _headers;
  Map<String, dynamic>? _body;
  Duration? _timeout;
  
  _HttpRequestBuilder(this._url);
  
  _HttpRequestBuilder method(String method) {
    _method = method;
    return this;
  }
  
  _HttpRequestBuilder headers(Map<String, String> headers) {
    _headers = headers;
    return this;
  }
  
  _HttpRequestBuilder body(Map<String, dynamic> body) {
    _body = body;
    return this;
  }
  
  _HttpRequestBuilder timeout(Duration timeout) {
    _timeout = timeout;
    return this;
  }
  
  HttpRequest build() {
    return HttpRequest._(
      url: _url,
      method: _method,
      headers: _headers,
      body: _body,
      timeout: _timeout,
    );
  }
}

// Observer Pattern
abstract class Observer {
  void update(String event, dynamic data);
}

class Subject {
  final List<Observer> _observers = [];
  
  void attach(Observer observer) {
    _observers.add(observer);
  }
  
  void detach(Observer observer) {
    _observers.remove(observer);
  }
  
  void notify(String event, dynamic data) {
    for (final observer in _observers) {
      observer.update(event, data);
    }
  }
}

class DataStore extends Subject {
  void updateData(dynamic newData) {
    // تحديث البيانات
    notify('dataUpdated', newData);
  }
}

class UIComponent implements Observer {
  @override
  void update(String event, dynamic data) {
    if (event == 'dataUpdated') {
      // تحديث واجهة المستخدم
      print('تحديث UI بالبيانات: $data');
    }
  }
}

// Repository Pattern
abstract class Repository<T> {
  Future<T?> getById(String id);
  Future<List<T>> getAll();
  Future<void> save(T item);
  Future<void> delete(String id);
}

class UserRepository implements Repository<User> {
  final ApiService _api;
  final CacheService _cache;
  
  UserRepository(this._api, this._cache);
  
  @override
  Future<User?> getById(String id) async {
    // تحقق من الذاكرة المؤقتة أولاً
    final cached = await _cache.get<User>(id);
    if (cached != null) return cached;
    
    // جلب من API
    final user = await _api.fetchUser(id);
    await _cache.set(id, user);
    return user;
  }
  
  @override
  Future<List<User>> getAll() async {
    return _api.fetchAllUsers();
  }
  
  @override
  Future<void> save(User item) async {
    await _api.saveUser(item);
    await _cache.set(item.id, item);
  }
  
  @override
  Future<void> delete(String id) async {
    await _api.deleteUser(id);
    await _cache.remove(id);
  }
}
''';

  // ==========================================================================
  // 6. STATE MANAGEMENT
  // ==========================================================================

  static const providerSimple = r'''
// مثال بسيط - Simple Provider
class CounterNotifier extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  
  void increment() {
    _count++;
    notifyListeners();
  }
}

// في الواجهة
class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterNotifier(),
      child: Consumer<CounterNotifier>(
        builder: (context, counter, child) {
          return Column(
            children: [
              Text('العداد: ${counter.count}'),
              ElevatedButton(
                onPressed: counter.increment,
                child: const Text('زيادة'),
              ),
            ],
          );
        },
      ),
    );
  }
}
''';

  static const stateManagementComplex = r'''
// مثال معقد - Complex State Management with BLoC

// Events
abstract class UserEvent {}
class LoadUsers extends UserEvent {}
class AddUser extends UserEvent {
  final User user;
  AddUser(this.user);
}
class DeleteUser extends UserEvent {
  final String userId;
  DeleteUser(this.userId);
}

// States
abstract class UserState {}
class UserInitial extends UserState {}
class UserLoading extends UserState {}
class UserLoaded extends UserState {
  final List<User> users;
  UserLoaded(this.users);
}
class UserError extends UserState {
  final String message;
  UserError(this.message);
}

// BLoC
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _repository;
  
  UserBloc(this._repository) : super(UserInitial()) {
    on<LoadUsers>(_onLoadUsers);
    on<AddUser>(_onAddUser);
    on<DeleteUser>(_onDeleteUser);
  }
  
  Future<void> _onLoadUsers(
    LoadUsers event,
    Emitter<UserState> emit,
  ) async {
    emit(UserLoading());
    try {
      final users = await _repository.getAll();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
  
  Future<void> _onAddUser(
    AddUser event,
    Emitter<UserState> emit,
  ) async {
    try {
      await _repository.save(event.user);
      add(LoadUsers());
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
  
  Future<void> _onDeleteUser(
    DeleteUser event,
    Emitter<UserState> emit,
  ) async {
    try {
      await _repository.delete(event.userId);
      add(LoadUsers());
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}

// في الواجهة
class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(
        context.read<UserRepository>(),
      )..add(LoadUsers()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return switch (state) {
            UserLoading() => const CircularProgressIndicator(),
            UserError() => Text('خطأ: ${state.message}'),
            UserLoaded() => ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  final user = state.users[index];
                  return ListTile(
                    title: Text(user.name),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        context.read<UserBloc>().add(
                          DeleteUser(user.id),
                        );
                      },
                    ),
                  );
                },
              ),
            _ => const SizedBox(),
          };
        },
      ),
    );
  }
}

// Riverpod Example
final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(
    ref.watch(apiServiceProvider),
    ref.watch(cacheServiceProvider),
  );
});

final usersProvider = FutureProvider<List<User>>((ref) async {
  final repository = ref.watch(userRepositoryProvider);
  return repository.getAll();
});

class UserListWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(usersProvider);
    
    return usersAsync.when(
      data: (users) => ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(users[index].name),
        ),
      ),
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('خطأ: $error'),
    );
  }
}
''';

  // ==========================================================================
  // 7. PERFORMANCE OPTIMIZATION
  // ==========================================================================

  static const performanceSimple = r'''
// مثال بسيط - Simple Performance
class MyList extends StatelessWidget {
  final List<String> items;
  
  const MyList(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Text(items[index]);
      },
    );
  }
}
''';

  static const performanceComplex = r'''
// مثال معقد - Complex Performance Optimization

// 1. Const constructors
class MyWidget extends StatelessWidget {
  final String title;
  
  const MyWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // استخدام const لتجنب إعادة البناء
        Icon(Icons.star, size: 24),
        SizedBox(height: 8),
      ],
    );
  }
}

// 2. ListView with keys and const
class OptimizedList extends StatelessWidget {
  final List<Item> items;
  
  const OptimizedList(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      // إضافة itemExtent لتحسين الأداء
      itemExtent: 72.0,
      itemBuilder: (context, index) {
        final item = items[index];
        return ItemTile(
          key: ValueKey(item.id),
          item: item,
        );
      },
    );
  }
}

// 3. RepaintBoundary for complex widgets
class ExpensiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        painter: ComplexPainter(),
        child: Container(
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}

// 4. Computed values caching
class DataProcessor extends StatefulWidget {
  final List<int> numbers;
  
  const DataProcessor(this.numbers, {super.key});

  @override
  State<DataProcessor> createState() => _DataProcessorState();
}

class _DataProcessorState extends State<DataProcessor> {
  late int _sum;
  late double _average;
  
  @override
  void initState() {
    super.initState();
    _computeValues();
  }
  
  @override
  void didUpdateWidget(DataProcessor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.numbers != oldWidget.numbers) {
      _computeValues();
    }
  }
  
  void _computeValues() {
    _sum = widget.numbers.reduce((a, b) => a + b);
    _average = _sum / widget.numbers.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('المجموع: $_sum'),
        Text('المتوسط: $_average'),
      ],
    );
  }
}

// 5. Image caching
class CachedImage extends StatelessWidget {
  final String url;
  
  const CachedImage(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      memCacheWidth: 300,
      memCacheHeight: 300,
    );
  }
}

// 6. Debouncing expensive operations
class SearchField extends StatefulWidget {
  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Timer? _debounce;
  
  void _onSearchChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _performSearch(query);
    });
  }
  
  void _performSearch(String query) {
    // عملية بحث مكلفة
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: _onSearchChanged,
    );
  }
}

// 7. Lazy loading and pagination
class InfiniteList extends StatefulWidget {
  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  final List<Item> _items = [];
  bool _isLoading = false;
  int _page = 1;
  
  final ScrollController _scrollController = ScrollController();
  
  @override
  void initState() {
    super.initState();
    _loadMore();
    _scrollController.addListener(_onScroll);
  }
  
  void _onScroll() {
    if (_scrollController.position.pixels >= 
        _scrollController.position.maxScrollExtent - 200) {
      _loadMore();
    }
  }
  
  Future<void> _loadMore() async {
    if (_isLoading) return;
    
    setState(() => _isLoading = true);
    
    final newItems = await ApiService.fetchItems(_page);
    setState(() {
      _items.addAll(newItems);
      _page++;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _items.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= _items.length) {
          return const CircularProgressIndicator();
        }
        return ItemTile(_items[index]);
      },
    );
  }
  
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

// 8. Compute for heavy calculations
Future<List<int>> _heavyCalculation(List<int> numbers) async {
  // عملية حسابية ثقيلة
  return numbers.map((n) => n * n).toList();
}

class HeavyWidget extends StatefulWidget {
  @override
  State<HeavyWidget> createState() => _HeavyWidgetState();
}

class _HeavyWidgetState extends State<HeavyWidget> {
  List<int>? _results;
  
  @override
  void initState() {
    super.initState();
    _compute();
  }
  
  Future<void> _compute() async {
    final numbers = List.generate(1000000, (i) => i);
    final results = await compute(_heavyCalculation, numbers);
    setState(() => _results = results);
  }

  @override
  Widget build(BuildContext context) {
    if (_results == null) {
      return const CircularProgressIndicator();
    }
    return Text('نتائج: ${_results!.length}');
  }
}
''';

  // ==========================================================================
  // 8. NAVIGATION & ROUTING
  // ==========================================================================

  static const navigationSimple = r'''
// مثال بسيط - Simple Navigation
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفحة الرئيسية')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen()),
            );
          },
          child: const Text('اذهب للتفاصيل'),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التفاصيل')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('رجوع'),
        ),
      ),
    );
  }
}
''';

  static const navigationComplex = r'''
// مثال معقد - Complex Navigation with GoRouter

// 1. Route configuration
final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'profile/:userId',
          name: 'profile',
          builder: (context, state) {
            final userId = state.pathParameters['userId']!;
            return ProfileScreen(userId: userId);
          },
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) => const SettingsScreen(),
      redirect: (context, state) {
        // التحقق من تسجيل الدخول
        if (!AuthService.isLoggedIn) {
          return '/login';
        }
        return null;
      },
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
  redirect: (context, state) {
    final isLoggedIn = AuthService.isLoggedIn;
    final isLoggingIn = state.matchedLocation == '/login';
    
    if (!isLoggedIn && !isLoggingIn) {
      return '/login';
    }
    
    if (isLoggedIn && isLoggingIn) {
      return '/home';
    }
    
    return null;
  },
  errorBuilder: (context, state) => ErrorScreen(
    error: state.error,
  ),
);

// 2. Named routes with parameters
void navigateToProfile(BuildContext context, String userId) {
  context.goNamed(
    'profile',
    pathParameters: {'userId': userId},
    queryParameters: {'tab': 'posts'},
  );
}

// 3. Nested navigation with Shell Route
final appRouter = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SearchScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);

class ScaffoldWithNavBar extends StatelessWidget {
  final Widget child;
  
  const ScaffoldWithNavBar({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'بحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الملف الشخصي',
          ),
        ],
      ),
    );
  }
  
  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    if (location.startsWith('/home')) return 0;
    if (location.startsWith('/search')) return 1;
    if (location.startsWith('/profile')) return 2;
    return 0;
  }
  
  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/search');
        break;
      case 2:
        context.go('/profile');
        break;
    }
  }
}

// 4. Deep linking
final router = GoRouter(
  routes: [...],
  redirect: (context, state) {
    // معالجة الروابط العميقة
    final uri = state.uri;
    if (uri.path == '/reset-password') {
      final token = uri.queryParameters['token'];
      if (token != null) {
        return '/reset-password/$token';
      }
    }
    return null;
  },
);

// 5. Passing data between screens
class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          title: Text(product.name),
          onTap: () async {
            final result = await Navigator.push<bool>(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                  product: product,
                ),
              ),
            );
            
            if (result == true) {
              // تم إضافة المنتج للسلة
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('تمت الإضافة للسلة')),
              );
            }
          },
        );
      },
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  
  const ProductDetailsScreen({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Text(product.description),
          ElevatedButton(
            onPressed: () {
              // إضافة للسلة
              Navigator.pop(context, true);
            },
            child: const Text('أضف للسلة'),
          ),
        ],
      ),
    );
  }
}
''';

  // ==========================================================================
  // 9. TESTING
  // ==========================================================================

  static const testingSimple = r'''
// مثال بسيط - Simple Unit Test
import 'package:flutter_test/flutter_test.dart';

class Calculator {
  int add(int a, int b) => a + b;
  int subtract(int a, int b) => a - b;
}

void main() {
  group('Calculator', () {
    test('add returns sum of two numbers', () {
      final calculator = Calculator();
      expect(calculator.add(2, 3), 5);
    });
    
    test('subtract returns difference', () {
      final calculator = Calculator();
      expect(calculator.subtract(5, 3), 2);
    });
  });
}
''';

  static const testingComplex = r'''
// مثال معقد - Complex Testing

// 1. Widget Testing
void main() {
  group('CounterWidget', () {
    testWidgets('displays initial count', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterWidget(),
        ),
      );
      
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
    });
    
    testWidgets('increments counter on button tap', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterWidget(),
        ),
      );
      
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      
      expect(find.text('1'), findsOneWidget);
    });
  });
}

// 2. Mocking with Mockito
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([UserRepository, ApiService])
void main() {
  group('UserBloc', () {
    late UserBloc bloc;
    late MockUserRepository repository;
    
    setUp(() {
      repository = MockUserRepository();
      bloc = UserBloc(repository);
    });
    
    tearDown(() {
      bloc.close();
    });
    
    test('emits UserLoaded when LoadUsers succeeds', () async {
      final users = [
        User(id: '1', name: 'أحمد'),
        User(id: '2', name: 'محمد'),
      ];
      
      when(repository.getAll()).thenAnswer((_) async => users);
      
      bloc.add(LoadUsers());
      
      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<UserLoading>(),
          isA<UserLoaded>().having(
            (state) => state.users,
            'users',
            users,
          ),
        ]),
      );
      
      verify(repository.getAll()).called(1);
    });
    
    test('emits UserError when LoadUsers fails', () async {
      when(repository.getAll()).thenThrow(Exception('خطأ في الشبكة'));
      
      bloc.add(LoadUsers());
      
      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<UserLoading>(),
          isA<UserError>().having(
            (state) => state.message,
            'message',
            contains('خطأ في الشبكة'),
          ),
        ]),
      );
    });
  });
}

// 3. Integration Testing
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  group('end-to-end test', () {
    testWidgets('complete user flow', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      
      // تسجيل الدخول
      await tester.enterText(
        find.byKey(const Key('email_field')),
        'test@example.com',
      );
      await tester.enterText(
        find.byKey(const Key('password_field')),
        'password123',
      );
      await tester.tap(find.text('تسجيل الدخول'));
      await tester.pumpAndSettle();
      
      // التحقق من الصفحة الرئيسية
      expect(find.text('الصفحة الرئيسية'), findsOneWidget);
      
      // الانتقال للإعدادات
      await tester.tap(find.byIcon(Icons.settings));
      await tester.pumpAndSettle();
      
      // تغيير الإعدادات
      await tester.tap(find.byType(Switch).first);
      await tester.pumpAndSettle();
      
      // تسجيل الخروج
      await tester.tap(find.text('تسجيل الخروج'));
      await tester.pumpAndSettle();
      
      expect(find.text('تسجيل الدخول'), findsOneWidget);
    });
  });
}

// 4. Golden Tests
void main() {
  testWidgets('golden test', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MyWidget(),
      ),
    );
    
    await expectLater(
      find.byType(MyWidget),
      matchesGoldenFile('goldens/my_widget.png'),
    );
  });
}

// 5. Performance Testing
void main() {
  testWidgets('scrolling performance', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ListView.builder(
          itemCount: 10000,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item $index'),
          ),
        ),
      ),
    );
    
    final scrollable = find.byType(Scrollable);
    
    await tester.fling(scrollable, const Offset(0, -500), 10000);
    await tester.pumpAndSettle();
    
    // التحقق من الأداء
  });
}
''';

  // ==========================================================================
  // HELPER METHOD TO GET CODE BY KEY
  // ==========================================================================

  static String? getCode(String key) {
    return switch (key) {
      // Widgets
      'statelessWidgetSimple' => statelessWidgetSimple,
      'statefulWidgetSimple' => statefulWidgetSimple,
      'statefulWidgetComplex' => statefulWidgetComplex,
      
      // Mixins
      'mixinsSimple' => mixinsSimple,
      'mixinsComplex' => mixinsComplex,
      
      // Extensions
      'extensionsSimple' => extensionsSimple,
      'extensionsComplex' => extensionsComplex,
      
      // Async
      'futureSimple' => futureSimple,
      'streamSimple' => streamSimple,
      'asyncComplex' => asyncComplex,
      
      // Design Patterns
      'factorySimple' => factorySimple,
      'singletonSimple' => singletonSimple,
      'designPatternsComplex' => designPatternsComplex,
      
      // State Management
      'providerSimple' => providerSimple,
      'stateManagementComplex' => stateManagementComplex,
      
      // Performance
      'performanceSimple' => performanceSimple,
      'performanceComplex' => performanceComplex,
      
      // Navigation
      'navigationSimple' => navigationSimple,
      'navigationComplex' => navigationComplex,
      
      // Testing
      'testingSimple' => testingSimple,
      'testingComplex' => testingComplex,
      
      _ => null,
    };
  }
}
