//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 3/06/22.
//

//NOTA:@State se utiliza cuando tengamos una propiedad que modificara su valor, cuando esta propiedad cambia, la vista se redibuja con el nuevo valor y siempre va acompañado de un view en este caso StateView

//NOTA:@ObserverdObject Se usa en la vista que recibe el envio de la variable

import SwiftUI

class UserData: ObservableObject {
    
    @Published var name = "Juan Castañeda"
    @Published var age = 25
    
    
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection : Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
        VStack {
            Text("El valor actual es \(value)")
            Button("Suma 1") {
                value += 1
            }
            Text("Mi nombre \(user.name) y mi edad \(user.age)")
            Button("Actualizar datos") {
                user.name = "Levi Castañeda"
                user.age = 35
            }
            NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection) {
                Button("Ir a BindingView") {
                    selection = 1
                }
            }
        }.navigationTitle("StateView")
     }
 }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
