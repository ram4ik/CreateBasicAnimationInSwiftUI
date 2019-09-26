//
//  ContentView.swift
//  CreateBasicAnimationInSwiftUI
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isPressed: Bool = true
    var body: some View {
        Rectangle()
            .frame(width: isPressed ? 300 : 200, height: isPressed ? 300 : 200)
            .foregroundColor(.blue)
            .animation(.spring())
            .onTapGesture {
                self.isPressed.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
