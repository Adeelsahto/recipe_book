# Recipe Book (Flutter)

A simple Flutter app showcasing a small recipe collection with search, category filters, and favorites.

## Table of contents

- Overview
- Prerequisites
- Quick setup
- Running the app
  - CLI
  - IntelliJ IDEA / Android Studio
- Adding platform support
- Troubleshooting
- Project structure
- Contributing
- License

## Overview

This project is a lightweight Flutter application demonstrating:
- A recipe list with search and category filtering
- Detail screens with ingredients and instructions
- Favorite toggling using Provider for state management

It is intended as a starter project and is easy to extend.

## Prerequisites

- Flutter SDK installed and on your PATH: https://docs.flutter.dev/get-started/install
- A supported device or emulator:
  - Android emulator or a connected Android device
  - iOS simulator (macOS + Xcode)
  - Desktop (Windows/macOS/Linux) or Web (Chrome) — platform folders must exist (see "Adding platform support")
- IntelliJ IDEA / Android Studio (optional) with the Flutter and Dart plugins (if you prefer an IDE)

Verify installation:
- flutter --version
- flutter doctor

## Quick setup (CLI)

From the project root (E:\recipe_book):

1. Install packages:
   - flutter pub get

2. If you plan to run on desktop or web and platform folders are missing:
   - flutter create .

3. List available devices:
   - flutter devices

4. Run on a specific device:
   - flutter run -d chrome
   - flutter run -d windows
   - flutter run -d <device-id>
   - or just `flutter run` to pick from the interactive chooser

Notes:
- If you see "No pubspec.yaml file found" make sure you are in the project root (E:\recipe_book) and that `pubspec.yaml` exists.
- If you see "No supported devices connected" and you want to run on web/desktop, run `flutter create .` to generate necessary platform files.

## Running in IntelliJ IDEA / Android Studio

1. Open the project folder (E:\recipe_book).
2. Ensure the Flutter SDK location is set:
   - Preferences / Settings → Languages & Frameworks → Flutter → Flutter SDK path
3. Create or edit a Run Configuration:
   - Run → Edit Configurations → + → Flutter
   - Name: recipe_book (lib/main.dart)
   - Dart entrypoint / Target: `<project root>/lib/main.dart`
   - Device: choose a device from the dropdown (after `flutter devices` or starting an emulator)
4. Run using the green Run button or Debug.

Tip: If IntelliJ cannot detect the entrypoint, ensure `lib/main.dart` exists and starts with a normal `main()` function. Run `flutter pub get` first.

## Adding platform support

To add generated platform folders (if missing):
- In project root: flutter create .
This will create android/ ios/ web/ windows/ macos/ linux/ folders as appropriate (it will not overwrite lib/).

## Troubleshooting

- Error: No pubspec.yaml file found.
  - Ensure you run commands from the project root where `pubspec.yaml` is located.

- Error: No supported devices connected.
  - Run `flutter devices` to see available devices.
  - Start an emulator or connect a device.
  - For web/desktop, run `flutter create .` to generate platform support files.

- Error: Target file "chrome" not found.
  - Use `-d chrome` (device id) and not as the target file. Example: `flutter run -d chrome`.
  - To run a specific Dart entrypoint use `-t lib/main.dart`.

- Dependency issues:
  - Run `flutter pub get`
  - If SDK constraints mismatch, update `environment.sdk` in `pubspec.yaml` to match your Dart SDK.

If problems persist, copy the exact error output and run:
- flutter doctor -v
- flutter pub get
and include those outputs when asking for help.

## Project structure

Key files and folders:
- lib/
  - view/ — UI screens (list, detail, favorites)
  - viewmodel/ — Provider ChangeNotifier for app state
  - models/ — Recipe model and repository
- pubspec.yaml — project metadata and dependencies
- .gitignore — recommended ignores for Flutter projects

## Contributing

- Fork the repository, make changes on a branch, and open a pull request.
- Keep changes focused and add tests where appropriate.
- Update README / docs when adding features.

## License

This project is provided as-is for learning and experimentation. Add a LICENSE file if you plan to distribute or publish the project.
