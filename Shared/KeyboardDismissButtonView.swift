//
//  KeyboardDismissButtonView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 12/06/2021.
//

import SwiftUI


// There looks to be a couple of bugs with this in that it needs to be wrapped in a NavigationView to display the toolbar button

struct KeyboardDismissButtonView: View {
    @State private var number = ""
    @FocusState var isInputActive: Bool
    
    var aNumber: Int? {
        if let validNumber = Int(number) {
            return validNumber
        }
        return nil
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(aNumber != nil ? "The number is \(aNumber!)" : "No number")")
                TextField("Enter a number", text: $number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .padding()
                    .focused($isInputActive)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            HStack {
                                Spacer()
                                Button("Done") {
                                    isInputActive = false
                                }
                            }

                        }
                    }
                
            }
            .navigationTitle("Dismiss keyboxard")
        }
        
    }
}

struct KeyboardDismissButtonView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardDismissButtonView()
    }
}
