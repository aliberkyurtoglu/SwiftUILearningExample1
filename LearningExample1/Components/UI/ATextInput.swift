//
//  ATextInput.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//

import SwiftUI

struct ATextInput: View {
    
    var label: String? = nil
    var placeholder: String? = nil
    var iconName: String? = nil
    @Binding var value: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                if label != nil {
                    Text(label ?? "").font(.subheadline)
                }
                HStack {
                    TextField(placeholder ?? "", text:$value).font(.subheadline)
                    if iconName != nil {
                        Image(systemName: iconName ?? "").resizable().frame(width: 30, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
            }
        }
    }
}

struct ATextInput_Previews: PreviewProvider {
    @State var inputValue:String = ""
    static var previews: some View {
        ATextInput(value: self.init().$inputValue)
    }
}
