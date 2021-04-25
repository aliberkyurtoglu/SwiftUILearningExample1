//
//  ContentView.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//

import SwiftUI

enum Stage: Hashable {
    case mainScreen
    case registerStep1Screen
}

struct ContentView: View {
    @State var inputValue: String = ""
    @State var stage: Stage? = .mainScreen
    
    @State var firstName: String=""
    @State var lastName: String=""
    
    var body: some View {
        NavigationView {
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
                            VStack {
                                Text("First name: \(firstName)").font(.body)
                                Text("Last name: \(lastName)").font(.body)
                            }
                            Image("mcLarenBanner")
                                .resizable()
                                .frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.bottom)
                            NavigationLink(
                                destination: RegisterStep1(firstName: $firstName, lastName: $lastName, stage: $stage),
                                tag: Stage.registerStep1Screen,
                                selection: $stage,
                                label: {
                                    AButton(text: "Kayıt sayfasına git", onPress: {
                                        stage = .registerStep1Screen
                                    })
                                }
                            )
                            Spacer()
                        }
                    }.padding()
                }.navigationTitle("Main Screen").navigationBarTitleDisplayMode(.inline)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
