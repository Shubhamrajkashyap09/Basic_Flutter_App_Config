# iOS Flavor Setup Instructions

## 🎯 What's Been Set Up

1. **Separate App Icon Sets**: Created `AppIcon-Dev` and `AppIcon-Prod` icon sets
2. **Dynamic Configuration**: Updated iOS build configs to use dart-define variables
3. **Different Bundle IDs**: Dev and Prod apps will have different bundle identifiers
4. **Different App Names**: Apps will show different names on the home screen

## 📱 Current Configuration

### Dev App
- **Bundle ID**: `com.example.notificationTestApp.dev`
- **App Name**: `Notification Test App Dev`
- **Icon Set**: `AppIcon-Dev`

### Prod App
- **Bundle ID**: `com.example.notificationTestApp.prod`
- **App Name**: `Notification Test App Prod`
- **Icon Set**: `AppIcon-Prod`

## 🚀 How to Run

### Dev App
```bash
flutter run -d "iPhone SE (3rd generation)" -t lib/main_dev.dart --dart-define=app.flavor=dev --dart-define=PRODUCT_BUNDLE_IDENTIFIER=com.example.notificationTestApp.dev --dart-define=PRODUCT_NAME="Notification Test App Dev" --dart-define=ASSETCATALOG_COMPILER_APPICON_NAME=AppIcon-Dev
```

### Prod App
```bash
flutter run -d "iPhone SE (3rd generation)" -t lib/main_prod.dart --dart-define=app.flavor=prod --dart-define=PRODUCT_BUNDLE_IDENTIFIER=com.example.notificationTestApp.prod --dart-define=PRODUCT_NAME="Notification Test App Prod" --dart-define=ASSETCATALOG_COMPILER_APPICON_NAME=AppIcon-Prod
```

## 🎨 Customizing App Icons

To make the apps visually distinct:

1. **For Dev Icons** (Blue theme):
   - Replace icons in `ios/Runner/Assets.xcassets/AppIcon-Dev.appiconset/`
   - Add blue tint or "DEV" badge to icons

2. **For Prod Icons** (Red theme):
   - Replace icons in `ios/Runner/Assets.xcassets/AppIcon-Prod.appiconset/`
   - Add red tint or "PROD" badge to icons

### Tools for Icon Generation:
- [AppIcon.co](https://appicon.co/) - Generate all iOS icon sizes
- [IconKitchen](https://icon.kitchen/) - Add badges and overlays
- Figma/Photoshop - Manual editing

## 🔧 Build Commands

All commands are saved in `lib/build_commands.txt` for easy reference.

## ✅ Verification

After running the commands, you should see:
1. Two separate apps on your iOS simulator/device
2. Different app names under the icons
3. Different bundle identifiers (check in Settings > General > iPhone Storage)
4. Different app icons (once you customize them)

## 🐛 Troubleshooting

If apps still appear as the same:
1. Clean build: `flutter clean && flutter pub get`
2. Delete apps from simulator and reinstall
3. Verify dart-define parameters are correctly passed
4. Check that icon sets exist in Assets.xcassets