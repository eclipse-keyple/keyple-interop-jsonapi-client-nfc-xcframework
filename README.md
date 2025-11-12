# Keyple Interop iOS XCFramework

[![License](https://img.shields.io/badge/License-EPL_2.0-blue.svg)](https://www.eclipse.org/legal/epl-2.0/)
[![iOS](https://img.shields.io/badge/iOS-14%2B-green.svg)](https://developer.apple.com/)

This project packages Keyple Interop Distributed Client libraries as a convenient XCFramework for seamless integration
into iOS applications.

## Overview
It acts as an umbrella, packaging:

* [Keyple Interop JSON API Client](https://github.com/eclipse-keyple/keyple-interop-jsonapi-client-kmp-lib): 
  Enables communication with remote Keyple-compliant services using a JSON API.
* [Keyple Interop Local Reader NFC Mobile](https://github.com/eclipse-keyple/keyple-interop-localreader-nfcmobile-kmp-lib):
  Facilitates interaction with local NFC card readers on mobile devices.

### Key Features

* Provides a ready-to-use XCFramework for integrating Keyple Interop Distributed Client functionality into iOS apps.
* Enables your iOS application to communicate with remote Keyple services and interact with smart cards via the local NFC reader.
* Includes helper utilities (e.g. for logging) to streamline development.

### Target Audience

iOS developers building applications that require:
* Secure element interaction capabilities.
* Communication with smart cards via NFC.
* Interaction with remote Keyple-compliant services.

## Documentation & Contribution Guide

The full documentation, including the **user guide**, **download information** and **contribution guide**, is available
on the Keyple website [keyple.org](https://keyple.org).

## Supported Card Technologies

Using this library, iPhones are able to communicate with ISO14443-4 compliant smart cards.

## Installation

### Swift Package Manager

The recommended way to integrate Keyple Interop XCFramework into your iOS project is using Swift Package Manager.

#### Adding the Package in Xcode

1. Open your project in Xcode
2. Go to **File** → **Add Package Dependencies...**
3. Enter the repository URL:
   ```
   https://github.com/eclipse-keyple/keyple-interop-ios-xcframework.git
   ```
4. Select the version rule that suits your needs (e.g., "Up to Next Major Version")
5. Click **Add Package**
6. Select the `KeypleInteropXCFramework` product and add it to your target

#### Adding the Package via Package.swift

If you're building a Swift package or want to add the dependency manually, add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(
        url: "https://github.com/eclipse-keyple/keyple-interop-ios-xcframework.git",
        from: "1.0.0" // Replace with the desired version
    )
]
```

Then add `KeypleInteropXCFramework` to your target's dependencies:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "KeypleInteropXCFramework", package: "keyple-interop-ios-xcframework")
        ]
    )
]
```

## Development

### Prerequisites

* A Mac with Xcode installed is required to build the iOS framework.

### Supported Platforms

* iOS 14 and later

### Building from Source

```bash
# Build the iOS framework
./gradlew assembleXCFramework
```
