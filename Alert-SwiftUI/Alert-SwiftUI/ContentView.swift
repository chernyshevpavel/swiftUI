//
//  ContentView.swift
//  Alert-SwiftUI
//
//  Created by Павел Чернышев on 12.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var isError = false
    @State var action = false
    
    
    var body: some View {
        Button(action: {
            self.isError = true
        }, label: {
            Text("Alert").alert(isPresented: $isError, content: {
                Alert(
                    title: Text("Loading"),
                    message: Text("Are u shuer"),
                    primaryButton: .destructive(Text("Yes"), action: {
                        print("test")
                    }),
                    secondaryButton: .cancel())
            })
        })
        Button(action: {
            self.action = true
        }, label: {
            Text("Action")
        }).actionSheet(isPresented: $action, content: {
            ActionSheet(
                title: Text("Loading"),
                message: Text("Do you wat to load photo"),
                buttons: [.cancel(),.default(Text("default"))])
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
