//
//  AppView.swift
//  innofest
//
//  Created by LIM YEE SIN RACHEL stu on 26/10/22.
//

import SwiftUI
import AVFoundation

struct AppView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State var isRecording = false
    
    var body: some View {
        VStack {
            Image(systemName: isRecording ? "mic" : "mic.slash")
            Text("text: \(speechRecognizer.tran)")
        }
        .padding()
        .onAppear {
            
            isRecording = true
            
            speechRecognizer.transcribe()
        }
    }
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .preferredColorScheme(.dark)
    }
}

