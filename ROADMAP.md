# Flutter Roadmap (Beginner → Advanced)

Use this as a **high-level learning path**. For a detailed, link-rich version, see [`roadmap/flutter_roadmap.md`](roadmap/flutter_roadmap.md).

## 0) Setup

- Install Flutter + set up editor
- Learn CLI basics: `flutter create`, `flutter run`, `flutter pub get`
- Understand project structure (`lib/`, `test/`, `android/`, `ios/`)

## 1) Dart fundamentals (you’ll use daily)

- Variables, collections, null-safety
- Functions/closures, async/await, Futures/Streams
- OOP + immutability (`final`/`const`), extensions

## 2) Flutter fundamentals

- Widget tree mindset, build methods, lifecycle
- Layout + constraints (Row/Column/Flex, Stack, scrolling)
- Theming, text styles, responsive UI

## 3) Navigation

- `Navigator` basics, named routes
- Deep links (later), declarative routing (later)

## 4) State management

- Start with **local state**: `setState`, `ValueNotifier`
- Move to an approach and go deep:
  - Provider / Riverpod / BLoC (pick one and master it)
- Understand: state ownership, rebuild boundaries, caching

## 5) Data & networking

- REST APIs (`http` or `dio`)
- JSON parsing/serialization
- Pagination, retries, error handling

## 6) Storage

- Simple: `shared_preferences`
- Secure: `flutter_secure_storage`
- Local DB: Hive / Drift / SQLite

## 7) Architecture

- Separation of concerns (UI / state / data)
- Dependency injection (GetIt or your state tool)
- Feature-first folder structure

## 8) Testing & debugging

- Unit tests (pure Dart)
- Widget tests (UI behavior)
- Integration tests (full flows)
- DevTools: performance, memory, network

## 9) Performance & polish

- `const` widgets, list performance, image caching
- Avoid layout thrash and unnecessary rebuilds
- Handle app lifecycle, offline mode

## 10) Release & CI/CD

- Android/iOS signing
- Store releases, versioning, flavors (later)
- GitHub Actions for build/test

