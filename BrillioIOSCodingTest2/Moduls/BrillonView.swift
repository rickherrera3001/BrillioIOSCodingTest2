//
//  BrillonView.swift
//  BrillioIOSCodingTest2
//
//  Created by Ricardo Developer on 16/04/24.
//

import SwiftUI

struct QuotesView: View {
    @StateObject var viewModel = BrillionViewModel()
    
    var body: some View {
        VStack {
            if let quote = viewModel.contenteModel  {
                VStack(alignment: .leading) {
                    Text("Author: \(quote.author)")
                        .font(.headline)
                    Text("Content: \(quote.content)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding()
                
                
                Button(action: {
                    viewModel.refreshContent()
                    
                }) {
                    Text("Refresh")
                        .bold()
                    
                    Image(systemName: "arrow.clockwise.circle.fill")
                }
                
            } else if let error = viewModel.error {
                Text("Error: \(error.localizedDescription)")
                    .foregroundColor(.red)
                
               
            } else {
                ProgressView()
            }
        }
        .onAppear {
            viewModel.getContent()
        }
        .navigationTitle("Quote of the Day")
    }
}

