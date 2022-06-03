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
            
            //Se le agrego un if programmer para que todo los usuarios creados tengan "true" apareceran como favoritos y los que tengas "false" apareceran como no favorito
            if programmer.favorite{
            
            //Se agrego un system name con el emoticon de estrella y se le añadio el color amarillo
            Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }
    }
}
//Se le da los datos correspondientes al programador 
struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Juan astañeda", languages:"Swift, Kotlin", avatar: Image(systemName: "person.fill"),favorite: true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
