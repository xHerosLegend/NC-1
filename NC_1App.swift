//
//  NC_1App.swift
//  NC-1
//
//  Created by Carmine Andreozzi on 14/11/23.
//

import SwiftUI

@main
struct NC_1App: App {
    var body: some Scene {
        WindowGroup {
            TabView() {
                AppuntamentiView()
                    .tabItem {
                        Image(systemName:"calendar")
                        Text("Reserve")
                    }

                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                InformazioniView()
                    .tabItem { Image(systemName:"book.pages" )
                        Text("Information")
                    }
            }
        }
    }
}

