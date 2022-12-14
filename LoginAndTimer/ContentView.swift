//
//  ContentView.swift
//  LoginAndTimer
//
//  Created by Alena Belenets on 15.09.2022.
//

import SwiftUI

struct ContentView: View {

   @StateObject private var timer = TimeCounter()

    var body: some View {
        VStack {
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(100)
            Spacer()

            ButtonView(timer: timer)

            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ButtonView: View {
    @ObservedObject var timer: TimeCounter

    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 4))

        }
    }

