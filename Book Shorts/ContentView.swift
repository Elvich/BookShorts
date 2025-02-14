//
//  ContentView.swift
//  Book Shorts
//
//  Created by Maksim Gritsuk on 12.02.2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        
        TabView() {
            Tab("Тест", systemImage: "testtube.2") {
                TestView()
                }
            Tab("Библиотека", systemImage: "books.vertical"){
                libraryView()
            }
            Tab("Акаунт", systemImage: "person.crop.circle") {
                AccauntView()
                }

        }
        .tabViewStyle(.sidebarAdaptable)
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
