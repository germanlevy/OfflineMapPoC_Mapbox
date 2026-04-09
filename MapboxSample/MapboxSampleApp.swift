//
//  MapboxSampleApp.swift
//  MapboxSample
//
//  Created by German Levy on 08/04/2026.
//

import SwiftUI

@main
struct MapboxSampleApp: App {
    init() {
        OfflineRegionManager.ensureStylePackDownloaded()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
