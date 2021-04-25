//
//  RegisterStep1.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//

import SwiftUI

struct RegisterStep1: View {
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var stage: Stage?
    
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ATextInput(label: "Adınız", placeholder: "Adınızı giriniz", value: $firstName).padding(.bottom)
                    ATextInput(label: "Soyadınız", placeholder: "Soyadınızı giriniz", value: $lastName).padding(.bottom)
                    NavigationLink(
                        destination: ContentView(),
                        tag: Stage.mainScreen,
                        selection: $stage,
                        label: {
                            AButton(text: "Geri Dön", onPress: {
                                stage = .mainScreen
                            })
                        }
                    )
                }.padding(.bottom)
                Spacer()
            }.navigationTitle("Register").navigationBarTitleDisplayMode(.inline).padding()
        }
    }
}

//struct RegisterStep1_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterStep1()
//    }
//}
