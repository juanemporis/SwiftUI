//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 2/06/22.
//

import SwiftUI

//Se crea private let programador llamando a la struct Programmer creada y se agregan 4 programadores mas con sus nombre y lenguaje de programacion y el avatar destinado
private let programmers = [Programmer(id: 1, name: "Juan Castañeda", languages: "Swift,Kotlin", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 2, name: "Ana", languages: "Java,Kotlin", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 3, name: "Julio", languages: "C++,C#", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 4, name: "Pablo", languages: "JavaScript", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 5, name: "Sara", languages: "Go,Python", avatar: Image(systemName: "person.fill"))]

//Se crea la lista programador agregado el RowView creado 
struct ListView: View {
    var body: some View {
        
        //Se agrego un navigationView con el nombre de programmers para poder trasladar los datos al darle click en cada nombre
        NavigationView{
        List(programmers,id: \.id) { programmer in
            NavigationLink(destination: ListDetailView(programmer: programmer)){
            RowView(programmer: programmer)
                
            }
          }
            //Se agrego el encabezado nombre de Programmers
        .navigationTitle("Programmers")
        }
    }
}

//Se da el llamado al ListView con los datos de los programadores
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}





 
 
 
 
 


