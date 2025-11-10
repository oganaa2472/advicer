Basic Course in Dart & Flutter. Introduction to modern app development with the Flutter Framework.
# Advicer

Advicer is a Flutter mobile app scaffolded using Clean Architecture principles and the BLoC state management pattern. It provides an example app structure to build advice/quote-style features with a clear separation between presentation, domain, and data layers.

## Key technologies

- Flutter
- Dart
- BLoC (flutter_bloc)
- Clean Architecture (feature/domain/data/ui layers)

## Project structure (high level)

This repo follows a Clean Architecture-style layout. Key folders include:

- `lib/`
	- `feature/`
		- `data/` - data sources, models, repositories implementations
		- `domain/` - entities, use-cases, repository contracts
		- `ui/` - widgets, pages, BLoC/provider wiring for the feature
	- `core/` - app-wide services (theme, utils, etc.)
	- `injection.dart` - dependency injection setup
	- `main.dart` - app entry point
	- `theme.dart` - theme/style definitions

You may also see platform folders: `android/`, `ios/`, `web/`, `linux/`, `macos/`, `windows/`.

## Architecture summary

This app uses Clean Architecture to keep concerns separated:

- Presentation: Flutter widgets and BLoC classes (presentation logic). BLoC exposes states and events which the UI listens to.
- Domain: Pure Dart use-cases and entities. Business rules live here and are independent of frameworks.
- Data: Concrete implementations for repositories, API clients, or local storage.

This separation makes it easy to test business logic and swap implementations.

## Screenshots

Add screenshots to the repo and reference them here. Create a folder at `assets/screenshots/` (or `docs/screenshots/`) and add your screen images there. Example markdown to embed a screenshot:

```markdown
![Home screen](/screen.png)
```

Note: To include screenshots in the built Flutter app, add the path to `pubspec.yaml` under `flutter.assets:` and run `flutter pub get`.

## Assumptions

- The app is named `advicer` (based on repository folder name).
- BLoC is used for state management (user mentioned `bloc`).
- Dependency injection is wired via `injection.dart`.

If any of these assumptions are incorrect, update the README or open an issue in the repo.

## How to run

Prerequisites:

- Flutter SDK installed (see https://flutter.dev/docs/get-started/install)
- Platform toolchains set up for the target platform (Android Studio/Xcode for Android/iOS)

Common commands (run from project root):

```bash
flutter pub get
flutter run
```

To run for a specific platform, add flags (examples):

```bash
flutter run -d android
flutter run -d ios
flutter run -d chrome
```

## Tests

If tests exist in the `test/` directory, run:

```bash
flutter test
```

Add unit tests for domain/use-cases and widget or integration tests for the UI/BLoC flows.

## Notes on UI widgets

Example: `lib/feature/ui/widgets/custom_button.dart` demonstrates a reusable widget. Review the widget implementations and ensure they follow theme/text style conventions.

## Contribution

Contributions are welcome. Suggested workflow:

1. Fork the repository
2. Create a feature branch
3. Run tests and ensure linting passes
4. Open a pull request with a clear description

## Possible next improvements

- Add more README sections: API docs, architecture diagram, CI instructions
- Add example screenshots or GIFs
- Add unit and widget tests with CI (GitHub Actions)

## License

Add your preferred license (MIT, Apache 2.0, etc.) by creating a `LICENSE` file in the repo root.

---

If you want, I can:

- Expand the README with architecture diagrams and a code example of a BLoC + UseCase flow
- Add badges (build/tests) and GitHub Actions CI config
- Create a `LICENSE` file with a chosen license

Tell me which extras you'd like and I can add them next.

# advicer
