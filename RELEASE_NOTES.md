# SigmaMultiDRM SPM - Release Notes

## v1.0.5 (August 25, 2025)

### ✨ New Features

- **tvOS Platform Support**: Added official support for Apple tvOS platform
  - Enabled tvOS target in Swift Package (`Package.swift`)
  - Ensured XCFramework compatibility for tvOS
  - Verified public APIs are available across iOS and tvOS

### 📄 API/Package Changes

- Updated `Package.swift` platforms to include tvOS
- No breaking API changes; source-compatible with previous versions

### 🔧 Technical Improvements

- Unified build settings for iOS and tvOS

---

## v1.0.4 (August 1, 2025)

### ✨ New Features

- **License Request Delegate Support**: Added comprehensive delegate pattern for handling license request callbacks
  - Introduced `SigmaMultiDRMDelegate` protocol with optional callback methods
  - Added `delegate` property to `SigmaMultiDRM` class for receiving license request events
  - Callback method `didCompleteLicenseRequestForAssetUrl:licenseData:response:error:` provides detailed information about license request completion

### 📄 API Changes

- Enhanced `SigmaMultiDRM.h` with delegate support
- Added new `SigmaMultiDRMDelegate.h` header file
- Updated framework headers for both device and simulator architectures

### 🔧 Technical Improvements

- Updated framework binaries for both iOS device (arm64) and simulator (arm64_x86_64)
- Enhanced debugging capabilities through delegate callbacks
- Improved error handling and response tracking

---

## v1.0.3 (July 12, 2025)

### 🐛 Bug Fixes

- **Async Data Validation**: Fixed critical issue with data validation in asynchronous tasks
  - Improved data integrity checks during license processing
  - Enhanced error handling for concurrent operations
  - Fixed potential race conditions in async license requests

### 🔧 Technical Improvements

- Removed deprecated API methods from public headers
- Updated framework binaries with improved async handling
- Enhanced stability for multi-threaded environments

---

## v1.0.2 (April 9, 2025)

### 🐛 Bug Fixes

- **Certificate Request Validation**: Fixed status code validation for certificate requests
  - Added proper HTTP status code checking for certificate server responses
  - Improved error handling for certificate request failures
  - Enhanced reliability of certificate validation process

### 🔧 Technical Improvements

- Updated framework binaries with improved certificate handling
- Better error reporting for certificate-related issues
- Enhanced network request reliability

---

## v1.0.1 (December 20, 2024)

### ✨ New Features

- **iOS Simulator Support**: Added full support for iOS Simulator
  - Added `ios-arm64_x86_64-simulator` architecture to XCFramework
  - Complete simulator framework with all headers and debug symbols
  - Full feature parity between device and simulator builds

### 📄 API Additions

- Added complete header files for simulator architecture
- Included debug symbols (dSYM) for both device and simulator
- Enhanced module map support for both architectures

### 🔧 Technical Improvements

- Updated XCFramework Info.plist with simulator support
- Added comprehensive code signing for simulator builds
- Improved development experience with simulator debugging

---

## v1.0.0 (December 20, 2024)

### 🎉 Initial Release

- **Core DRM Functionality**: Complete digital rights management solution for iOS
  - Singleton pattern implementation with `SigmaMultiDRM.getInstance`
  - AVURLAsset creation with DRM protection via `assetWithUrl:`
  - User identification and session management support

### 📄 Core API Features

- **User Management**:

  - `setUserId:` - Set unique user identifier for license requests
  - `setSessionId:` - Set session identifier for tracking
  - `setMerchant:` - Set merchant identifier for business logic
  - `setAppId:` - Set application identifier

- **Configuration**:
  - `setDebugMode:` - Toggle between staging and production environments
  - Environment-specific license server endpoints

### 🏗️ Technical Foundation

- Swift Package Manager support with XCFramework
- iOS 9.0+ compatibility
- ARM64 device architecture support
- Complete integration with AVFoundation framework
- Comprehensive debug symbols for development

---

## Installation

Add this package to your Xcode project using Swift Package Manager:

```
https://github.com/your-org/sigma-multidrm-spm.git
```

## Minimum Requirements

- iOS 9.0+
- Xcode 12.0+
- Swift 5.3+
- tvOS 9.0+

## Support

For technical support and documentation, please contact the development team.
