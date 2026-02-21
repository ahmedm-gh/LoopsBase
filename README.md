# LoopsBase (in Dart)

A comprehensive, visually stunning Flutter application designed to master **Object-Oriented Programming (OOP)**, **Design Patterns**, and **Refactoring Techniques** using the Dart programming language.

## Overview

**LoopsBase** is more than just a reference app; it's an interactive learning ecosystem for Dart developers. Whether you are a beginner looking to understand "Separation of Concerns" or a senior engineer refining your "Design Pattern" knowledge, this app provides clear, concise, and professional examples.

Built with a focus on developer experience, the app features a responsive design, interactive code blocks, and a robust architecture using industry-standard state management.

---

## Key Features

| Category | Patterns |
| :--- | :--- |
| **Creational** | Singleton, Factory Method, Builder, Abstract Factory, Prototype, Object Pool, Lazy Initialization, Multiton, Factory Kit |
| **Structural** | Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy, Wrapper, DTO, Data Mapper, Plugin |
| **Behavioral** | Observer, Strategy, Command, State, Chain of Responsibility, Iterator, Mediator, Memento, Visitor, DI, Repository, Specification |
| **Architectural** | MVC, MVP, MVVM, Clean Architecture, Hexagonal, Layered, Microservices, CQRS, Event Sourcing |
| **State Mgmt** | BLoC, Cubit, Provider, StateNotifier, Redux, Unidirectional Data Flow, Feature-First |

### 2. Refactoring Suite
Master the art of improving code without changing its external behavior.
- **Composing Methods**: Extract Method, Inline Method, Extract Variable.
- **Moving Features**: Move Method, Move Field, Extract Class.
- **Organizing Data**: Self Encapsulate Field, Replace Data Value with Object.

### 3. Interview Preparation
Prepare for your next technical interview with 90+ curated tags covering OOP, SOLID, Flutter internals, and advanced system design.
- **Comprehensive Coverage**: From basic Dart syntax to complex rendering optimizations.
- **Detailed Answers**: In-depth explanations for each question with best practices.
- **Bookmarking**: Save important questions to review later.
- **Search & Filter**: Quickly find questions by tag, difficulty, or keyword.

### 4. Programming Terms
A glossary of essential programming concepts and terminology.
- **Searchable Database**: Quickly find definitions for technical jargon.
- **Category Filtering**: Filter terms by OOP, Clean Code, Architecture, and Performance.
- **Persistent Bookmarks**: Keep your most-used terms handy at all times.

---

## Core Capabilities

- **Dynamic Theme Engine**: Seamless switching between Light and Dark modes.
- **Localization Support**: Multi-language support (AR/EN) built with `flutter_localizations`.
- **Font Scaling**: Adjust the app's font scale dynamically for better readability.
- **State Persistence**: Powered by `HydratedBloc`, your preferences (theme, locale, bookmarks) are saved across sessions.
- **Premium UI**: Custom design system with smooth micro-animations and Material 3 principles.
- **Developer-First Code**: Code blocks use **FiraCode** with ligatures for a professional look.

---

## Technical Stack

- **Framework**: [Flutter](https://flutter.dev) (Latest Material 3)
- **Language**: [Dart](https://dart.dev)
- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc) & [HydratedBloc](https://pub.dev/packages/hydrated_bloc)
- **Dependency Injection**: [get_it](https://pub.dev/packages/get_it)
- **Vector Graphics**: [flutter_svg](https://pub.dev/packages/flutter_svg)
- **Navigation & OS**: [url_launcher](https://pub.dev/packages/url_launcher)
- **Icons**: Material Icons & Custom SVGs
- **Storage**: [path_provider](https://pub.dev/packages/path_provider)

---

## Project Structure

```text
lib/
├── core/               # Shared business logic and infrastructure
│   ├── app_controller/ # Global state (Theme, Locale, Font Scale) using HydratedBloc
│   ├── services/       # Service locator (GetIt) and central routing
│   ├── extensions/      # Shared extensions (Context, String, Color, etc.)
│   ├── enums/          # Domain-specific enums (Difficulty, Pattern levels, etc.)
│   ├── models/         # Core data models with Equatable for state comparison
│   └── interview_data/ # (Internal) Curated interview logic and code blocks
├── features/           # Modular feature implementations
│   ├── home/                # Adaptive dashboard and entry point
│   ├── design_patterns/      # Logic and UI for 50+ patterns (GoF, Modern, Architectural)
│   ├── interview_questions/  # Interview prep with search, filter, and tagging
│   ├── terms/               # Educational glossary with search and categories
│   ├── refactoring/          # UI for code transformation techniques (Coming Soon)
│   ├── splash/               # Initial entry point
│   └── useful_plugins/      # Curated list of Dart/Flutter packages
├── shared/             # Reusable UI components and design system layouts (DL)
├── data/               # Static data, Svg assets, and pattern definitions
├── l10n/               # Multi-language localization (AR/EN)
└── main.dart           # Bootstrap logic with HydratedStorage and GetIt
```

---

## Architectural Decisions

- **Feature-First Structure**: The project is organized by features (e.g., `design_patterns`, `interview_questions`) rather than layers, making it easier to scale and maintain.
- **Bloc Pattern**: Uses `flutter_bloc` for UI logic and `HydratedBloc` for persistent app settings and user preferences.
- **Service Locator**: Employs `get_it` for clean dependency injection, ensuring components are loosely coupled and testable.
- **Extension-Driven UI**: Extensive use of `BuildContext` extensions to access themes (`context.colorScheme`), localization (`context.l10n`), and media queries concisely.
- **Design System (DL)**: Centralized layout constants in the `DL` class to maintain UI consistency (spacing, padding, border radii).

---

## Design Patterns Support
The app implements a full hierarchy of design patterns:
- **Gang of Four (GoF)**: Classic creational, structural, and behavioral patterns.
- **Modern Patterns**: Contemporary patterns used in reactive and cloud-native development.
- **Practical Patterns**: Patterns specific to the Flutter/Dart ecosystem (e.g., Repository, BLoC).

Each pattern entry provides a deep dive into its **Pros**, **Cons**, **When to Use**, and **Common Mistakes**, along with cross-references to **Related Patterns**.

---

## Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (^3.10.8)
- [Dart SDK](https://dart.dev/get-dart)

### Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/ahmedm-gh/loopsbase.git
   ```
2. **Install dependencies**:
   ```bash
   flutter pub get
   ```
3. **Run the application**:
   ```bash
   flutter run
   ```

---

Developed By

**Ahmed Mostafa**
- [GitHub](https://github.com/ahmedm-gh)
- [LinkedIn](https://www.linkedin.com/in/ahmeds1/)

---

## License

This project is open-source and available for educational purposes. Feel free to use the examples in your own projects!
