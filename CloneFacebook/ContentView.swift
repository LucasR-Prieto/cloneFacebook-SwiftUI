//
//  ContentView.swift
//  CloneFacebook
//
//  Created by lucas on 2024-06-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
            .tabItem {
                Label("Home", systemImage: "house" )
            }
            VideoView()
            .tabItem {
                Label("Video", systemImage: "play.display" )
            }
            HomeView()
            .tabItem {
                Label("Friends", systemImage: "person.2.fill" )
            }
            HomeView()
            .tabItem {
                Label("Marketplace", systemImage: "building.columns" )
            }

            HomeView()
            .tabItem {
                Label("Menu", systemImage: "person" )
            }
            
            
        }
        


    }
}

#Preview {
    ContentView()
}
