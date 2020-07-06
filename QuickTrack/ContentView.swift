//
//  ContentView.swift
//  QuickTrack
//
//  Created by Jimmy, Yeung on 6/7/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Tab Content 1").tabItem {
                makeTabItem(title: "Today", icon: "")
            }.tag(1)

//            Text("Tab Content 2").tabItem {
//                makeTabItem(title: "Drawer", icon: "")
//            }.tag(2)
            
            Text("Tab Content 2").tabItem {
                makeTabItem(title: "Settings", icon: "")
            }.tag(2)
        }
    }
    
    private func makeTabItem(title: String, icon: String) -> some View {
        VStack {
            Image(systemName: icon)
            Text(title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
