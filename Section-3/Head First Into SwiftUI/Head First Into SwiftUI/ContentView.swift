//
//  ContentView.swift
//  Head First Into SwiftUI
//
//  Created by Jose Luna on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var score: Int = 0
    @State private var correctAnswer: Int = 0
    @State private var gameTitle: String = "?"
    @State private var gameSubtitle: String = ""
    
    var body: some View {
        VStack {
            VStack {
                Text(gameTitle)
                    .font(.system(size: 40, weight: .semibold))
                
                Text(gameSubtitle)
                    .font(.system(size: 20, weight: .regular))
            }
            .padding(.vertical, 100)
            
            Text("Score: \(score)")
                .font(.system(size: 15, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button {
                checkAnswer(0)
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
                checkAnswer(1)
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
                checkAnswer(2)
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
    
    private func checkAnswer(_ answer: Int) {
        if correctAnswer == answer {
            score += 1
            gameTitle = "Success!"
        } else {
            gameTitle = "Failed!"
            if score > 0 {
                score -= 1
            }
        }
        
        gameSubtitle = switch answer {
            case 0: "You chose a cat!"
            case 1: "You chose a dog!"
            case 2: "You chose a tortoise!"
            default: "Something went wrong!"
        }
        
        randomizeCorrectAnswer()
    }
    
    private func randomizeCorrectAnswer() {
        let newCorrectAnswer = Int.random(in: 0 ... 3)
        correctAnswer = newCorrectAnswer
    }
}

#Preview {
    ContentView()
}
