//
//  ContentView.swift
//  degre
//
//  Created by Apprenant 26 on 28/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State var value: CGFloat = 50
      var min: CGFloat = 0
      var max: CGFloat = 100
      var step: CGFloat = 1
      
    var body: some View {
        VStack {
            HStack {
              
                VStack{
                    Text("Kelvin ")
                    Text ("\(Int(value*10))")
                }.padding()
              
                VStack{
                    Text("Fahreneit")
                    Text ("\(Int(value*10*1.8 - 459.67))")
                
                }.padding()
                VStack{
                    Text("Celcius ")
                    Text ("\(Int(value*10-273.15))")
                    
                }.padding()
                
            }
            Slider(
                          value: $value,
                          in: min...max,
                          step: step,
                          onEditingChanged: { (success) in
                              print("Succes: \(success)")
                          },
                          minimumValueLabel: Text("min"),
                          maximumValueLabel: Text("max")) {
                              Text("Valeur actuelle: \(Int(value))")
                          }
            
          

            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
  
        
        
        
      
