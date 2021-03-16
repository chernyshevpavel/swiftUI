//
//  ContentView.swift
//  toggle
//
//  Created by Павел Чернышев on 15.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            ZStack(content: {
                VStack(content: {
                    HStack(content: {
                        VStack(content: {
                            Text("menu").textCase(.uppercase).padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            Text("menu 1")
                            Text("menu 2")
                            Text("menu 3")
                        }).font(.custom("", size: 25, relativeTo: .body))
                        Spacer()
                    })
                    Spacer()
                }).padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0))
                ZStack(content: {
                    Rectangle().fill(Color.gray)
                    Text("Hello, world!").fontWeight(.bold)
                }).offset(x: isOn ? UIScreen.main.bounds.width * 0.35 : 0)
                
            })
            Toggle(LocalizedStringKey.init("Show menu"), isOn: $isOn).padding()
        }).animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.3))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
