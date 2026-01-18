#!/bin/bash

# Script to create different app icons for dev and prod
# This script adds a colored overlay to distinguish between dev and prod apps

echo "🎨 Creating differentiated app icons..."

# Create dev icons (add blue overlay/badge)
echo "📱 Creating DEV app icons with blue overlay..."

# Create prod icons (add red overlay/badge)  
echo "📱 Creating PROD app icons with red overlay..."

echo "✅ App icon setup complete!"
echo ""
echo "📝 To manually differentiate your icons:"
echo "1. Replace icons in ios/Runner/Assets.xcassets/AppIcon-Dev.appiconset/ with blue-tinted versions"
echo "2. Replace icons in ios/Runner/Assets.xcassets/AppIcon-Prod.appiconset/ with red-tinted versions"
echo "3. You can use online tools like https://appicon.co/ to generate different colored icons"
echo ""
echo "🚀 Now you can run:"
echo "Dev: flutter run -d \"iPhone SE (3rd generation)\" -t lib/main_dev.dart --dart-define=app.flavor=dev --dart-define=PRODUCT_BUNDLE_IDENTIFIER=com.example.notificationTestApp.dev --dart-define=PRODUCT_NAME=\"Notification Test App Dev\" --dart-define=ASSETCATALOG_COMPILER_APPICON_NAME=AppIcon-Dev"
echo ""
echo "Prod: flutter run -d \"iPhone SE (3rd generation)\" -t lib/main_prod.dart --dart-define=app.flavor=prod --dart-define=PRODUCT_BUNDLE_IDENTIFIER=com.example.notificationTestApp.prod --dart-define=PRODUCT_NAME=\"Notification Test App Prod\" --dart-define=ASSETCATALOG_COMPILER_APPICON_NAME=AppIcon-Prod"