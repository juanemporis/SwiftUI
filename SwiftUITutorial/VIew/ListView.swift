//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 2/06/22.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {

//Se crea private let programador llamando a la struct Programmer creada y se agregan 4 programadores mas con sus nombre y lenguaje de programacion y el avatar destinado
    @Published var programmers = [Programmer(id: 0, name: "Juan Castañeda", languages: "Swift, Kotlin", avatar: Image(systemName: "person"), favorite: true),
                           Programmer(id: 1, name: "Ana", languages: "Java, Kotlin", avatar: Image(systemName: "person.fill"), favorite: false),
                           Programmer(id: 2, name: "Julio", languages: "C++, C#", avatar: Image(systemName: "person.fill"), favorite: false),
                           Programmer(id: 3, name: "Pablo", languages: "JavaScript", avatar: Image(systemName: "person.fill"), favorite: true),
                           Programmer(id: 4, name: "Sara", languages: "Go, Python", avatar: Image(systemName: "person.fill"), favorite: false)]
}

//Se crea la lista programador agregado el RowView creado 
struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    
    //Se agrego una variable  showFavorites con un booleano false
    @State private var showFavorites = false
    
    //Se agrego una variable filteredProgrammer para filtrar el listado de los programadores y programadoras
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { Programmer in
            return !showFavorites || Programmer.favorite
            
        }
    }
    
    var body: some View {
        
        NavigationView{//Se agrego un navigationView con el nombre de programmers para poder trasladar los datos al darle click en cada nombre
        
        //Se agrego un VStack y una barra Toggle y un nombre "Mostrar favoritos" para realizar un cambio de estado
        VStack {
            Toggle(isOn: $showFavorites) {
                Text("Mostrar favoritos")
            }.padding()
        
    
        List(filteredProgrammers,id: \.id) { programmer in
            
            NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)){
            RowView(programmer: programmer)
                
            }
          }
            //Se agrego el encabezado nombre de Programmers
          }.navigationTitle("Programmers")
        }
    }
}

//Se da el llamado al ListView con los datos de los programadores
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}





 
 
 
 
 


