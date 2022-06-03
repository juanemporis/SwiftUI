//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 2/06/22.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer : Programmer
        
    
    var body: some View {
        
        //Se creo un avatar para el programador con sus distintos cambios y se modifico la imagen a circular y dandole un color negro y los radios.
        //Se hizo el llamado de los datos del programador y su lenguaje que maneja y tmb se agrego un spacer 
        VStack {
            programmer.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color .black,lineWidth: 4)).shadow(color: Color.gray, radius: 5)
            Text(programmer.name).font(.largeTitle)
            Text(programmer.languages).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Juan Castañeda", languages: "Swift,Kotlin", avatar: Image(systemName: "person.fill"),favorite: true))
    }
}
