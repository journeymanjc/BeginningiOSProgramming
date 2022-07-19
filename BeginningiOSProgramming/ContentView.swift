//
//  ContentView.swift
//  BeginningiOSProgramming
//
//  Created by Jae Cho on 7/19/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
		 Button{
			 let utterance = AVSpeechUtterance(string: "Hello world")
			 utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
			 let synthesizer = AVSpeechSynthesizer()
			 synthesizer.speak(utterance)
			 
		 }label: {
			 Text("Hello")
				 .fontWeight(.bold)
				 .font(.system(.title,design: .rounded))
		 }
		 .padding()
		 .foregroundColor(.white)
		 .background(Color.purple)
		 .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
