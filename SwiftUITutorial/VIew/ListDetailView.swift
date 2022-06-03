//
//  ListDetailView.swift
//  SwiftUITutorial
//

//

import SwiftUI

struct ListDetailView: View {
    //NOTA:El binding es una variable que a llegado de otra clase a esta y puede ser modificada
    var programmer : Programmer
    @Binding var favorite: Bool
    
    var body: some View {
        //Se creo un avatar para el programador con sus distintos cambios y se modifico la imagen a circular y dandole un color negro y los radios.
        //Se hizo el llamado de los datos del programador y su lenguaje que maneja y tmb se agrego un spacer 
        VStack {
            programmer.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color .black,lineWidth: 4)).shadow(color: Color.gray, radius: 5)
            
            HStack {
            Text(programmer.name).font(.largeTitle)
            Button {
                favorite.toggle() //Esta accion cambiara el estado de true a false o false a true
            } label: {
                if favorite { //Si es favorito se marcara como estrella amarilla
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                }else{
                Image(systemName: "star").foregroundColor(.black)//Si es false no se marcara como una estrella amarilla si no de color negro
                }
            }
        }
            Text(programmer.languages).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Juan Castañeda", languages: "Swift,Kotlin", avatar: Image(systemName: "person.fill"),favorite: true), favorite: .constant(false))
    }
}
