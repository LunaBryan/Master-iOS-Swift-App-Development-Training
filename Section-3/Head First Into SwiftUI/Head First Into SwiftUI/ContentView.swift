//
//  ContentView.swift
//  Head First Into SwiftUI
//
//  Created by Jose Luna on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var score: Int = 0
    
    var correctAnswer: Int = 0
    
    var body: some View {
        VStack {
            Group {
                Text("?")
                    .font(.system(size: 40, weight: .semibold))
            }
            .frame(height: 350)
            
            Text("Score: \(score)")
                .font(.system(size: 15, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button {
                if correctAnswer == 0 {
                    score += 1
                } else {
                    score -= 1
                }
            } label: {
                Image(systemName: "cat")
                    .symbolVariant(.fill)
                    .foregroundStyle(.orange)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.blue)
                    .clipShape(.capsule)
            }
            
            Button {
                if correctAnswer == 1 {
                    score += 1
                } else {
                    score -= 1
                }
            } label: {
                Image(systemName: "dog")
                    .symbolVariant(.fill)
                    .foregroundStyle(.brown)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.blue)
                    .clipShape(.capsule)
            }
            
            Button {
                if correctAnswer == 2 {
                    score += 1
                } else {
                    score -= 1
                }
            } label: {
                Image(systemName: "tortoise")
                    .symbolVariant(.fill)
                    .foregroundStyle(.green)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.blue)
                    .clipShape(.capsule)
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

#Preview {
    ContentView()
}
