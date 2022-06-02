//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 2/06/22.
//

import SwiftUI

private let programmers = [Programmer(id: 1, name: "Juan Castañeda", languages: "Swift,Kotlin", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 2, name: "Ana", languages: "Java,Kotlin", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 3, name: "Julio", languages: "C++,C#", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 4, name: "Pablo", languages: "JavaScript", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 5, name: "Sara", languages: "Go,Python", avatar: Image(systemName: "person.fill"))]

struct ListView: View {
    var body: some View {
        List(programmers,id: \.id) { programmer in RowView(programmer: programmer)
           
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
