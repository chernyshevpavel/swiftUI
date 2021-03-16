//
//  ContentView.swift
//  picker
//
//  Created by Павел Чернышев on 16.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var selected: Int = 0
    @State var isOn = false
    
    let pickerValues = [
        "First",
        "Second",
        "Third",
        "Fourth"
    ]
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selected, label: Text("Picker: \(pickerValues[selected])")) {
                    ForEach(pickerValues, id: \.self) { value in
                        Text(value)
                    }
                }
                Toggle(isOn: $isOn, label: {
                    Text("Wi-Fi")
                })
            }
        }.navigationBarTitle("Settings")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
