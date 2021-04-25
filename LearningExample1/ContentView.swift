//
//  ContentView.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue:String = ""
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    AImageCard(
                        leftIcon: "person",
                        headTitle: "Başlık",
                        subTitle: "Alt Başlık",
                        content: "İçerik")
                        .padding(.bottom)
                    ATextInput(
                        label: "E-posta Adresiniz",
                        placeholder: "Bir e-posta adresi giriniz",
                        iconName: "eye",
                        value: $inputValue)
                    Text("Değer: \(inputValue)")
                    Spacer()
                }
            } .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
