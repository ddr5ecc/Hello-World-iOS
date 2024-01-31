//
// ContentView.swift
// Hello World iOS

// Created by ddr5ecc.eth on 1/25/24. 


import AVFoundation
import SwiftUI

struct ContentView: View {
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    var body: some View {
        
        List {
            Text("Line 1")
            Text("Line 2")
        }
        
        
        
        VStack {
            
            Spacer()
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!").fontWeight(.heavy)
                .font(.system(.title, design: .rounded))
            
            Spacer()
            
            Button {
                speak(text: "Hello")
                
            } label: {
                Text("Hello Button")
                    .fontWeight(.bold)
                    .font(.system(.title)) // 會加大Button的大小
            }
            .padding()
            .foregroundColor(Color.green)
            .background(Color.gray)
            .cornerRadius(30)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
