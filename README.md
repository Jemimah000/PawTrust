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

This Sprint #2 submission focuses on understanding Flutter’s **Widget Tree** and its **Reactive UI Model**.

In this implementation, we built a simple interactive demo inside PawTrust to demonstrate:

- 🌳 How Flutter UI is structured using a widget tree
- 🔄 How Flutter automatically rebuilds UI when state changes
- ⚡ How `setState()` triggers efficient UI updates

The goal of this sprint is to understand how Flutter builds, manages, and updates dynamic user interfaces.

---

## 🎯 Objective of This Sprint

- Understand Flutter's widget hierarchy structure
- Visualize how widgets are nested inside each other
- Demonstrate Flutter’s reactive programming model
- Show automatic UI updates using `setState()`
- Document widget tree structure clearly

---

## 🚀 Features Implemented

### 🌳 Widget Tree Demonstration
- ✅ Root `MaterialApp`
- ✅ `Scaffold` structure
- ✅ `AppBar` with title
- ✅ Centered layout using `Center`
- ✅ Vertical arrangement using `Column`
- ✅ Interactive widgets inside the column

### 🔄 Reactive UI Demonstration
- ✅ Counter that updates dynamically
- ✅ Theme switcher (Light / Dark Mode)
- ✅ UI rebuilds automatically using `setState()`
- ✅ Only affected widgets update (efficient rendering)

---

## 🌳 Widget Tree Structure

Below is the widget hierarchy used in this demo:

MaterialApp
┗ Scaffold
┣ AppBar
┗ Body
┗ Center
┗ Column
┣ Text (Count Display)
┣ SizedBox
┣ ElevatedButton (Increment)
┣ SizedBox
┣ Switch (Theme Toggle)
┗ Text (Theme Label)


This structure shows how every UI element in Flutter is a widget and how they are nested hierarchically.

---

## 🔄 State Management Logic

Two state variables were used:

- `int count` → stores the counter value
- `bool isDark` → controls theme mode

When the button is pressed:
- `setState()` increases the counter
- Flutter rebuilds the `Text` widget displaying the count

When the switch is toggled:
- `setState()` changes the theme
- Flutter rebuilds the app with dark or light mode

Flutter does NOT redraw the entire app manually.  
It efficiently rebuilds only the widgets affected by the state change.

---

## 📸 Screenshots

### Initial State
- Count = 0
- Light Mode enabled
![alt text](image.png)

### After Interaction
- Count incremented
- Dark Mode enabled

![alt text](image-1.png)

---

## 🧠 Reflection

The widget tree helps Flutter manage complex UIs by organizing every element in a structured hierarchy. Each widget acts like a building block, and parent widgets manage their children.

Flutter’s reactive model is more efficient than manually updating views because:

- We only update the state.
- Flutter automatically rebuilds affected widgets.
- No manual UI refresh logic is required.
- This makes development faster, cleaner, and less error-prone.

Through this sprint, I understood how Flutter internally manages UI updates and how powerful the `setState()` method is for dynamic interfaces.

---