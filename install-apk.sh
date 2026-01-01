#!/bin/sh -v
set -e
adb devices
adb install ./target/dx/dx-example/debug/android/app/app/build/outputs/apk/debug/app-debug.apk
