//
//  RegisterView.swift
//  LoginAndTimer
//
//  Created by Alena Belenets on 15.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""

    var body: some View {
        VStack{
            TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }
    }
}
    private func registerUser() {

    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
