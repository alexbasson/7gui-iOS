//
//  iOSApp.swift
//  iOS
//
//  Created by Alex Basson on 8/12/24.
//

import SwiftUI

@main
struct iOSApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                CounterView()
                    .tabItem {
                        Label("Counter", systemImage: "plus.circle")
                    }
                
                ContentView()
                    .tabItem {
                        Label("Temp", systemImage: "thermometer.medium")
                    }
                
                ContentView()
                    .tabItem {
                        Label("Flights", systemImage: "airplane")
                    }
                
                ContentView()
                    .tabItem {
                        Label("Timer", systemImage: "timer")
                    }
                
                ContentView()
                    .tabItem {
                        Label("CRUD", systemImage: "list.dash")
                    }
            }
        }
    }
}
