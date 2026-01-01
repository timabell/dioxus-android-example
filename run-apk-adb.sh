#!/bin/bash
set -e

echo "Setting up env vars..."
source set-android-envs.sh

echo "Building apk..."
dx build --platform android --target aarch64-linux-android

echo "Installing via adb..."
adb install ./target/dx/dx-example/debug/android/app/app/build/outputs/apk/debug/app-debug.apk

echo "Starting app via adb..."
adb shell am start -n co.rustworkshop.dioxus_example/dev.dioxus.main.MainActivity
