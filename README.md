# 📱 Notification Test App

> A Flutter project with multi-flavor configuration for development and production environments.

---

## ✨ Features

- 🎯 **Multi-flavor Configuration** - Separate dev and prod environments
- 🔔 **Firebase In-App Messaging** - Integrated messaging system
- 🔐 **Android Permissions** - Camera, storage, location, and network access
- 📦 **Clean Architecture** - Organized project structure

---

## 🚀 Quick Start

### 📋 Prerequisites

- Flutter SDK `>=3.1.3 <4.0.0`
- Android Studio / VS Code
- Firebase account (for messaging features)

### 📦 Installation

```bash
# Clone the repository
git clone <repository-url>

# Navigate to project directory
cd notification_test_app

# Install dependencies
flutter pub get
```

---

## 🏗️ Build Flavors

### 🔧 Development (dev)

**Run:**
```bash
flutter run --flavor=dev -t lib/main_dev.dart --dart-define=app.flavor=dev
```

**Build APK:**
```bash
flutter build apk --flavor=dev -t lib/main_dev.dart --dart-define=app.flavor=dev
```

### 🚀 Production (prod)

**Run:**
```bash
flutter run --flavor=prod -t lib/main_prod.dart --dart-define=app.flavor=prod
```

**Build APK:**
```bash
flutter build apk --flavor=prod -t lib/main_prod.dart --dart-define=app.flavor=prod
```

---

## 📚 Dependencies

| Package | Version | Purpose |
|---------|---------|----------|
| `firebase_in_app_messaging` | ^0.7.4+8 | Firebase messaging integration |
| `cupertino_icons` | ^1.0.2 | iOS-style icons |

---

## ⚙️ Configuration

### Android

- **Min SDK Version:** 21
- **Target SDK Version:** 33
- **Compile SDK Version:** 34

### Permissions

- 📷 Camera
- 💾 Storage (Read/Write)
- 📍 Location (Fine/Coarse)
- 🌐 Internet & Network State
- 📸 Media (Images/Video/Audio)

---

## 📁 Project Structure

```
lib/
├── constants/       # App constants
├── utils/          # Utility functions
├── app.dart        # Main app widget
├── main_dev.dart   # Dev entry point
└── main_prod.dart  # Prod entry point
```

---

## 🤝 Contributing

Contributions are welcome! Feel free to submit issues and pull requests.

---

## 📄 License

This project is for educational purposes.
