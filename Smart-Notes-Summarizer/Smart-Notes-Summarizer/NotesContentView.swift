//
//  NotesContentView.swift
//  Smart-Notes-Summarizer
//
//  Created by Sanjay Morya on 07/09/25.
//

import SwiftUI

struct NotesContentView: View {
    @State private var noteText = ""

    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topTrailing) {
                // Placeholder
                if noteText.isEmpty {
                    Text("Write your content here")
                        .foregroundColor(.gray)
                        .padding(.top, 18)      // match TextEditor inset
                        .padding(.leading, 20)
                        .allowsHitTesting(false) // let taps go to TextEditor
                }
                
                TextEditor(text: $noteText)
                    .padding(.horizontal)
                    .frame(maxHeight: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.3))
                    )

                Button(action: uploadFile) {
                    VStack {
                        Image(systemName: "tray.and.arrow.up")
                            .foregroundColor(.blue)
                            .padding(8)
                            .background(Color(.systemGray6), in: Circle())
                            .shadow(radius: 1)
                        Text("Tap to upload your file ")
                    }
                }
                .padding(.trailing, 24)
                .padding(.top, 16)
            }

            // Bottom bar
            HStack {
                Button("Paste Text", action: pasteClipboard)
                    .frame(maxWidth: .infinity)

                Button("Sample Text", action: insertSample)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .padding()
        }
        .navigationTitle("Notes Editor")
        .padding()
    }

    // MARK: - Actions
    func uploadFile() {
        print("Upload tapped")
    }

    func pasteClipboard() {
        if let clip = UIPasteboard.general.string {
            noteText = clip
        }
    }

    func insertSample() {
        noteText = Constant.sampleText
    }
}

#Preview {
    NavigationStack {
        NotesContentView()
    }
}
