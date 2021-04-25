//
//  Entrypoint.swift
//  LearningExample1
//
//  Created by Macintosh on 25.04.2021.
//

import SwiftUI

struct Entrypoint: View {
    @State private var firstName = ""
    @State private var lastName = ""
    
    init() {
        print("Entrypointe geldi")
    }
    
    var body: some View {
        ContentView(firstName: $firstName, lastName: $lastName)
    }
}

struct Entrypoint_Previews: PreviewProvider {
    static var previews: some View {
        Entrypoint()
    }
}
