# PawTrust — Stateless vs Stateful Demo

A small Flutter demo that illustrates the difference between `StatelessWidget` and `StatefulWidget`.

What this demo shows
- A `Stateless` header (`DemoHeader`) that remains unchanged unless its parent rebuilds it.
- A `Stateful` body (`InteractiveBody`) that maintains a counter and a color/mode toggle. Interactions update the UI via `setState()`.

How I implemented it (step-by-step)

1. Created the demo screen
   - Added `lib/screens/stateless_stateful_demo.dart` containing `DemoHeader` (stateless) and `InteractiveBody` (stateful).
   - The stateful widget holds `_count` and `_isDarkMode` and updates them with `setState()`.

2. Wired the demo into the app
   - Updated `lib/main.dart` to use `StatelessStatefulDemo` as the `home` for quick verification.

3. Tools I used and why
- `apply_patch` (editor automation): added and updated source files in the workspace.
- `flutter pub get`: fetched project dependencies.
- `flutter analyze`: ran static analysis and found one API mismatch (`headline5` → replaced with `titleLarge`).
- `flutter run -d chrome`: launched the app on Chrome to interactively verify the UI (desktop Windows toolchain was not available due to missing Visual Studio C++ workload).
- `flutter doctor -v`: checked environment and collected instructions to resolve missing toolchain components.
- `manage_todo_list`: used to track progress and tasks while implementing the demo.

How to run the demo locally

1. Fetch packages:

```bash
flutter pub get
```

2. Run static analysis (optional but recommended):

```bash
flutter analyze
```

3. Run on Chrome (works without Visual Studio):

```bash
flutter run -d chrome
```

4. Run on Windows desktop (requires Visual Studio with "Desktop development with C++"):

```bash
# Install Visual Studio + the C++ workload, then:
flutter run -d windows
```

Verification steps I performed
- Ran `flutter analyze`, fixed `TextTheme.headline5` to `titleLarge`.
- Launched on Chrome and manually interacted:
  - Observed the header remained static.
  - Pressed the Increment button to change the counter.
  - Toggled the switch to change the color/label.

Notes / follow-ups
- `analysis_options.yaml` references `package:flutter_lints/flutter.yaml` which produced a warning on this machine — consider adding or updating lint packages.
- Windows desktop builds require Visual Studio (see `flutter doctor` output).
- If you'd like, I can capture screenshots of the initial and post-interaction states and add them under a `screenshots/` folder.

Files changed
- `lib/screens/stateless_stateful_demo.dart` — new file with stateless header and stateful body.
- `lib/main.dart` — updated to use the demo as app `home`.

If you want, I can also:
- Add a route from the existing `home_screen.dart` to this demo.
- Commit these changes and create a small test that verifies the presence of the counter widget.
# 🐾 PawTrust – Widget Tree & Reactive UI Model (Sprint #2)

## Project Title

PawTrust

## Project Setup (short)

This is a Flutter app. To run locally:

- Install Flutter SDK (compatible with this project's Flutter version).
- Fetch packages: `flutter pub get`.
- Configure Firebase if needed using the files under `android/app/` and the `firebase_options.dart` generated file.
- Run on a device or emulator: `flutter run`.

## Folder Structure (summary)

See [PROJECT_STRUCTURE.md](PROJECT_STRUCTURE.md) for the full, detailed layout.

Brief summary:

- `lib/` — application source code (screens, services, `main.dart`, `firebase_options.dart`)
- `android/`, `ios/`, `web/`, `macos/`, `linux/`, `windows/` — platform-specific project files and build configs
- `build/` — generated build outputs
- `test/` — unit and widget tests
- `pubspec.yaml` — project dependencies and metadata
![Screenshots have been provided
](<Screenshot (860).png>)

## 📌 Project Overview

This demonstration shows how Hot Reload, Debug Console, and Flutter DevTools help improve development speed and debugging efficiency.

---

## ⚡ 1. Hot Reload Demonstration

### What I Did:
- Modified text widget.
- Changed color property.
- Applied Hot Reload using `r`.

### Observation:
The UI updated instantly without restarting the app.
The app state remained preserved.

(Screenshot here)

---

## 🐛 2. Debug Console Usage

### What I Did:
- Added a counter button.
- Used `debugPrint()` inside `setState()`.
- Observed logs in Debug Console.

### Observation:
Console logs showed real-time button press events and count updates.

(Screenshot here)

---

## 🛠 3. Flutter DevTools Exploration

### Widget Inspector:
Used it to inspect widget tree and highlight UI components.

(Screenshot here)

### Performance Tab:
Observed frame rendering and UI performance metrics.

(Screenshot here)

---

## 💡 Reflection

### How does Hot Reload improve development speed?
Hot Reload allows instant UI updates without restarting the app, saving time during development.

### Why are debugging and profiling important?
They help detect errors, track logic flow, and improve app performance.

### How can teams use these tools?
Developers can quickly test features, debug issues, and optimize performance collaboratively.

---

## 🚀 Conclusion

Hot Reload, Debug Console, and DevTools significantly improve Flutter development workflow by enabling faster iteration, efficient debugging, and real-time performance monitoring.