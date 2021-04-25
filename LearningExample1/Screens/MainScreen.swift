//
//  MainScreen.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//

import SwiftUI

struct MainScreen: View {
    @State var inputValue: String = ""
    var body: some View {
        ScrollView {
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
                            onPressIcon: {print("Inputa girilen değer: \(inputValue)")},
                            value: $inputValue
                        ).padding(.bottom)
                        Image("mcLarenBanner")
                            .resizable()
                            .frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.bottom)
                        Spacer()
                    }
                }.padding()
            }.navigationTitle("Main Screen").navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
