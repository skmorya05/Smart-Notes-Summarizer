//
//  ContentView.swift
//  Smart-Notes-Summarizer
//
//  Created by Sanjay Morya on 07/09/25.
//

import SwiftUI

struct NotesSummarizer: View {
    var body: some View {
        NavigationStack { // iOS 16+; use NavigationView if you support iOS 15
            VStack {
                PercentageSliderView()
                Text("Your content goes here")
            }
            .padding()
            .navigationTitle("Smart Notes Summarizer")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Left side
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { print("Settings tapped") }) {
                        Image(systemName: "gear")
                    }
                }
                // Right side
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { print("Add tapped") }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    NotesSummarizer()
}
