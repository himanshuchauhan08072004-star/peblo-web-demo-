#!/bin/bash
set -e

echo "Installing Flutter SDK..."
git clone --depth 1 --branch stable https://github.com/flutter/flutter.git /tmp/flutter
export PATH="/tmp/flutter/bin:$PATH"

echo "Getting project dependencies..."
flutter pub get

echo "Building Flutter web application..."
flutter build web --release

echo "Build completed successfully."