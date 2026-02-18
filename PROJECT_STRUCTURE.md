# Project Structure

## Introduction

This document explains the default Flutter project layout and recommended organization for scalable apps. It summarizes the purpose of each core folder and shows small examples for pubspec.yaml and a suggested lib/ organization.

## Core Folders and Files

- lib/: Main Dart source code. App entry point is main.dart. Organize by feature or layer, e.g.:

    lib/
    ┣ main.dart
    ┣ screens/
    ┣ widgets/
    ┣ services/
    ┗ models/

- android/: Android-specific project files (Gradle scripts, manifest, native config). Key file: android/app/build.gradle — manages appId, version, and dependencies.

- ios/: iOS-specific project files. Key file: ios/Runner/Info.plist — manages app metadata and permissions.

- assets/ (optional): Place images, fonts, and other static files here. Must be declared in pubspec.yaml.

- test/: Unit, widget, and integration tests. Default widget_test.dart demonstrates framework testing.

- pubspec.yaml: Project metadata and dependencies. Add packages, fonts, and assets here.

- build/, .dart_tool/, and platform-specific build outputs: Generated artifacts — do not edit manually.

- .gitignore: Lists files and folders excluded from version control.

- README.md: High-level project description and setup instructions.

## Example pubspec.yaml snippet for assets and dependencies

    dependencies:
      flutter:
        sdk: flutter
      cupertino_icons: ^1.0.6

    flutter:
      assets:
        - assets/images/
        - assets/data/sample.json
      fonts:
        - family: Roboto
          fonts:
            - asset: assets/fonts/Roboto-Regular.ttf

## Suggested lib/ organization (simple feature-based)

- lib/main.dart — app entry
- lib/screens/ — page/screen widgets
- lib/widgets/ — reusable UI components
- lib/services/ — networking, storage, auth
- lib/models/ — data classes / DTOs

## Small visual hierarchy

project_root/
├─ android/
├─ ios/
├─ lib/
│  ├─ main.dart
│  ├─ screens/
│  └─ services/
├─ test/
├─ pubspec.yaml
└─ README.md

## Why this helps scalability

- Separation of concerns keeps UI, business logic, and data models distinct and easy to test.
- Grouping related features (feature modules or folders) reduces merge conflicts and improves developer onboarding.
- Declaring assets and fonts in pubspec.yaml ensures predictable build behavior across platforms.

## Quick next steps

- Add an assets/ folder and list it in pubspec.yaml to include images or fonts.
- Create lib/services/auth_service.dart and lib/screens/login_screen.dart as your next features.

---
Created to help document and share the app's organization and best practices.
