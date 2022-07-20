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
		 VStack{
			 Text("Guess These Movies")
				 .fontWeight(.bold)
				 .font(.system(.title,design: .rounded))
			 Text("Can you guess the mvoie from these emojis? \n Tap the button to find out the answer")
				 .fontWeight(.light)
				 .font(.system(.caption))
			 
			 Button{
				 speak(text: "Hello")
			 }label: {
				 Text("🤦🏻‍♂️👨🏻‍🦲🚗⌚️")
					 .fontWeight(.bold)
					 .font(.system(.title,design: .rounded))
			 }
			 .padding()
			 .foregroundColor(.white)
			 .background(Color.purple)
			 .cornerRadius(20)
			 
			 Button{
				 speak(text: "Spiderman")
			 }label: {
				 Text("🕷 🕺🏻")
					 .fontWeight(.bold)
					 .font(.system(.title,design: .rounded))
			 }
			 .padding()
			 .foregroundColor(.white)
			 .background(Color.purple)
			 .cornerRadius(20)
		 }
    }
	func speak(text: String){
		let utterance = AVSpeechUtterance(string: text)
		utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
		let synthesizer = AVSpeechSynthesizer()
		synthesizer.speak(utterance)
	}
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
