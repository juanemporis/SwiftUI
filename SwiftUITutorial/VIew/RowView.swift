//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 2/06/22.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        
        //Se crea el avatar programador dandole altura y la separacion
        HStack{
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40)
                .padding()
            //Se le agrega el nombre del programador y el lenguaje que maneja
            VStack(alignment: .leading){
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}
//Se le da los datos correspondientes al programador 
struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Juan astañeda", languages:"Swift, Kotlin", avatar: Image(systemName: "person.fill")))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
