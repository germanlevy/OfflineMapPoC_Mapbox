# MapboxSample

A comprehensive SwiftUI iOS application demonstrating Mapbox SDK features and capabilities.

## Overview

MapboxSample is a feature-rich example app that showcases how to integrate Mapbox Maps SDK with SwiftUI across multiple use cases. This sample app serves as a reference implementation for developers looking to implement any Mapbox feature in their iOS applications, from basic map display to advanced offline functionality, custom styling, and interactive features.

## Features

### 🗺️ Core Map Integration
- **SwiftUI Integration**: Native Mapbox Maps integration with SwiftUI
- **Interactive Map Display**: Full-screen map with touch gestures and navigation
- **Camera Control**: Programmatic viewport management and positioning

### 📥 Offline Mapping Capabilities
- **Tile Region Downloads**: Download map data for offline usage
- **Pre-defined Sample Regions**: Three demonstration regions
- **Progress Tracking**: Real-time download progress monitoring
- **Region Management**: Add, remove, and manage offline map regions
- **Style Pack Support**: Automatic Mapbox Standard Style pack downloading

### 🎨 Style and Customization
- **Mapbox Standard Style**: Default professional mapping style
- **Style Pack Management**: Offline style support with local caching
- **Custom UI Elements**: SwiftUI overlays and controls integration

## Technical Stack

### Frameworks & SDKs
- **SwiftUI**: Modern declarative UI framework
- **MapboxMaps**: Primary mapping SDK (via binary target)
- **MapboxCommon**: Core Mapbox functionality (version 24.21.0)
- **Turf**: Geospatial calculations and spatial operations (version 4.0.0)
- **Combine**: Reactive programming and data binding
- **Core Location**: Geographic coordinate handling and location services

### Platform Support
- **iOS**: Minimum version 12.0
- **macOS**: Minimum version 10.15
- **visionOS**: Version 1.0+ (spatial computing ready)

## Project Architecture

```
MapboxSample/
├── Package.swift                    # Swift Package Manager configuration
├── MapboxSampleApp.swift           # App entry point and initialization
├── ContentView.swift               # Main map view and UI orchestration
├── TileRegionDownloadView.swift    # Offline region management interface
├── OfflineRegionManager.swift      # Core offline functionality manager
└── README.md                       # Project documentation
```

## Core Components

### MapboxSampleApp
- **Purpose**: Application entry point and global configuration
- **Features**: Style pack initialization, app lifecycle management
- **Pattern**: SwiftUI App protocol implementation

### ContentView
- **Purpose**: Main map display and user interface
- **Features**: Full-screen map, floating action button, sheet presentation
- **Pattern**: SwiftUI View with state management

### TileRegionDownloadView & ViewModel
- **Purpose**: Offline region management interface
- **Features**: Region selection, download progress, status tracking
- **Pattern**: MVVM with ObservableObject

### OfflineRegionManager
- **Purpose**: Centralized offline functionality
- **Features**: Style pack management, region downloads, error handling
- **Pattern**: Static utility class with async operations

### OfflineRegion
- **Purpose**: Geographic region data structure
- **Features**: Coordinate bounds, polygon conversion, metadata
- **Pattern**: Value type with computed properties

## Getting Started

### Prerequisites
- **Development Environment**: Xcode 14.0 or later
- **Target Platforms**: iOS 12.0+ device or simulator
- **Network**: Internet connection for initial setup and downloads
- **Mapbox Account**: Valid access token from [Mapbox Account Dashboard](https://account.mapbox.com/)

### Quick Start

1. **Clone repo**
```bash
git clone git@github.com:germanlevy/OfflineMapPoC_Mapbox.git
```

2. **Configure Mapbox Access Token**
   - Create or retrieve your Mapbox access token
   - Add to your app's Info.plist with the key "MBXAccessToken"

3. **Build and Run**
   - Open project in Xcode
   - Select target device or simulator
   - Build and run (⌘+R)

## Implementation Examples

### Basic Map Setup
```swift
Map(
    initialViewport: .camera(
        center: CLLocationCoordinate2D(latitude: 39.5, longitude: -98.0),
        zoom: 2)
)
.ignoresSafeArea()
```

### Offline Region Configuration
```swift
OfflineRegion(
    id: "sample-region",
    name: "Sample Area",
    bounds: CoordinateBounds(
        southwest: CLLocationCoordinate2D(latitude: 40.0, longitude: -75.0),
        northeast: CLLocationCoordinate2D(latitude: 40.1, longitude: -74.9)
    )
)
```

### SwiftUI Integration Pattern
```swift
struct MapView: View {
    @StateObject private var viewModel = TileRegionDownloadViewModel()
    @State private var showingDownloadView = false
    
    var body: some View {
        ZStack {
            // Map content
            // UI overlays
        }
        .sheet(isPresented: $showingDownloadView) {
            // Modal presentations
        }
    }
}
```

## Extending the Sample

### Adding New Features
This sample app is designed to be extended with additional Mapbox features:

- **Custom Markers and Annotations**: POI display and interaction
- **Route Planning**: Navigation and directions integration
- **Geocoding**: Address search and reverse geocoding
- **Custom Styles**: Brand-specific map styling
- **Data Visualization**: Heatmaps, clusters, and data layers

### Integration Patterns
- Follow the established MVVM pattern for new features
- Use ObservableObject for reactive state management
- Implement proper error handling and loading states
- Maintain platform compatibility across iOS, macOS, and visionOS

## Resources & Support

### Documentation
- **Mapbox iOS SDK**: [docs.mapbox.com/ios](https://docs.mapbox.com/ios)

## License & Legal

This sample application demonstrates Mapbox SDK integration for educational and development purposes. Usage of Mapbox services requires compliance with Mapbox Terms of Service and appropriate licensing for production applications.

## Version Information

- **Current Release**: Initial comprehensive sample implementation
- **Mapbox SDK**: Compatible with latest stable releases
- **Platform Support**: iOS 12.0+, macOS 10.15+, visionOS 1.0+
- **Swift Version**: 5.9+ required

---

**MapboxSample** - *Your comprehensive reference for Mapbox Maps SDK integration in iOS applications*

*Created by German Levy • April 8, 2026*
