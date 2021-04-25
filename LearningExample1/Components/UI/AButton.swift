//
//  AButton.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//

import SwiftUI

struct AButton: View {
    var text: String
    var onPress: () -> Void
    
    var body: some View {
        HStack {
            VStack {
                Button(action: onPress, label: {
                    Text(text).font(.title2).foregroundColor(Color.white).frame(maxWidth: .infinity)
                })
                .padding(.all)
                .background(Color.green)
                .cornerRadius(15)
            }
        }
    }
}

struct AButton_Previews: PreviewProvider {
    static var previews: some View {
        AButton(text: "Diğer sayfaya geç.", onPress: {print("Diğer sayfaya geçildi bremin")})
    }
}
