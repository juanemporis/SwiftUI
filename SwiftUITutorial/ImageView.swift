//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 1/06/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        VStack {
            Image("ImageNinja").resizable()//Se agrego la imagen del Assets
            
                .padding(50)
            
                .frame(width: 300, height: 300).clipShape(Circle())//Se modifico el tamaño de la imagen y clipShape(circle) sirve para darme la circunferencia a la imagen
            
                .background(Color .gray)//Se agrego un color de fondo en la imagen
            
                .overlay(Circle().stroke(Color .blue, lineWidth: 4))//Se agrego un circulo en el fondo de la imagen
            
            .shadow(color: Color.gray,radius: 5)//Se agregaron las sombras a la imagen
            
            Image(systemName: "person.fill.badge.minus").resizable().padding(50)
                .frame(width: 300, height: 300).background(Color .gray)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.blue,lineWidth: 4)).shadow(color: Color .gray, radius: 5).foregroundColor(.blue)
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
