# App Development Task 1 - IIT Guwahati Coding Week 25

A Flutter implementation of the UI screens designed in Figma for the App Development Task 1 of IIT Guwahati Coding Week 25.

## Features

- Two-step complaint submission flow:
  1. Space selection screen with shops and food area sections
  2. Complaint details screen with title and description inputs
- Modern UI with consistent styling
- Responsive layouts
- SVG image support
- Custom fonts (Manrope)

## Project Structure

```
lib/
├── main.dart                 # App entry point and routing
├── screens/                  # Screen implementations
│   ├── write_review_step1_screen.dart
│   └── write_review_step2_screen.dart
├── widgets/                  # Reusable UI components
│   ├── custom_image_view.dart
│   └── selection_option_widget.dart
└── constants/               # App-wide constants
    ├── app_colors.dart
    ├── text_styles.dart
    └── image_constants.dart
```

## Prerequisites

- Flutter SDK (version 3.2.3 or higher)
- Chrome browser (for web development)
- VS Code or Android Studio

## Setup Instructions

1. **Install Flutter**
   - Download Flutter SDK from [flutter.dev](https://flutter.dev)
   - Add Flutter to your PATH
   - Run `flutter doctor` to verify installation

2. **Clone and Setup**
   ```bash
   git clone https://github.com/Ayush-Raj-Chourasia/App-Development-Task_1.git
   cd app_dev_task_1
   ```

3. **Install Dependencies**
   ```bash
   flutter pub get
   ```

4. **Run the App**
   ```bash
   flutter run -d chrome
   ```

## Design Implementation

This project implements the UI screens from the Figma design:
[App Dev Task Screens](https://www.figma.com/design/1VDbKgqGz49Jufl3avNIfp/App-Dev-Task-Screens?node-id=2-41&t=qFifrVtQsy4fkdsS-0)

## Dependencies

- `flutter_svg: ^2.0.9` - For SVG image support
- `cupertino_icons: ^1.0.2` - For iOS-style icons

## Assets

- **Fonts**: Manrope (Bold)
- **Images**: SVG icons for various categories

