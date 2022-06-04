//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 3/06/22.
//

//NOTA:Se utilizara binding cuando tengamos que leer y escribir una propiedad, cuando tengamos que actualizarlo pero que la vista que lo utilizamos no es la propietaria de esa propiedad
import SwiftUI

struct BindingView: View {
    
    @Binding var value : Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
           
            Button("Suma 2") {
                value += 2
            }
            Button("Actualizar datos") {
                user.name = "Juan Castañeda Solari"
                user.age = 20
            }
            NavigationLink(destination: EnviromentView(), tag: 1, selection: $selection) {
                Button("Ir a EnviromentObject") {
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
