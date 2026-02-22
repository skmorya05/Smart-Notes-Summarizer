//
//  PercentageSliderView.swift
//  Smart-Notes-Summarizer
//
//  Created by Sanjay Morya on 07/09/25.
//

import SwiftUI

struct PercentageSliderView: View {
    @State private var percentage: Double = 20    // start value

    var body: some View {
        VStack(spacing: 20) {
            Text("Selected: \(Int(percentage))%")
                .font(.headline)

            Slider(
                value: $percentage,
                in: 10...60,            // min ... max
                step: 1                 // snap every 1%
            ) {
                Text("Percentage")
            } minimumValueLabel: {
                Text("10%")
            } maximumValueLabel: {
                Text("60%")
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    PercentageSliderView()
}
