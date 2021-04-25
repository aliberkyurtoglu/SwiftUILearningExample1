//
//  AImageCard.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//
import SwiftUI

struct AImageCard: View {
    var leftIcon, headTitle, subTitle, content: String
    var rightIcon: String? = nil
    var body: some View {
        VStack {
            HStack(alignment:.center) {
                Image(systemName: leftIcon)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer()
                VStack(alignment: .center) {
                    Text(headTitle).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
                    Text(subTitle).font(.title2).multilineTextAlignment(.center)
                    Text(content).font(.body).multilineTextAlignment(.center)
                }
                .padding()
                Spacer()
                if rightIcon != nil {
                    Image(systemName: rightIcon ?? "person")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                } else {
                    Spacer()
                }
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        }
    }
}

struct AImageCard_Preview: PreviewProvider {
    static var previews: some View {
        AImageCard(
            leftIcon: "person",
            headTitle: "Başlık",
            subTitle: "Alt başlık",
            content: "İçerik",
            rightIcon: "person")
            .previewDevice("iPhone SE (2nd generation)")
    }
}
