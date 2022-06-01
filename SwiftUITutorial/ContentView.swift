//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 1/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //alignemet se escandar de alinear los texto leading a la izquierda, trailing derecha y center en el centro y spacing te dara el espacio en el cuadro del texto
        VStack (alignment: .leading, spacing: 20){
            
            Text("Bienvenido al SwiftUI!")
                .font(.title)   //Modifica el titulo de letra
                .foregroundColor(Color .red) //Modifica el color del titulo
                .padding()//Se encarga del margen de los laterales
            
            Spacer() //El spacer se encargara de separar cada texto
            
            ZStack{
                Text("") //Se añadio un color de fondo rojo y la distancias del recuadro
                    .frame(maxWidth: .infinity,
                    maxHeight: .infinity)
                    .background(Color .red).padding()
                
                Text("") //Se añadio un color de fondo verde y la distancias del recuadro
                    .frame(maxWidth: .infinity,
                    maxHeight: .infinity)
                    .background(Color .green).padding(40)
                
                Text("") //Se añadio un color de fondo azul y la distancias del recuadro
                    .frame(maxWidth: .infinity,
                    maxHeight: .infinity)
                    .background(Color .blue).padding(60)
                
                Text("") //Se añadio un color de fondo gris y la distancias del recuadro
                    .frame(maxWidth: .infinity,
                    maxHeight: .infinity)
                    .background(Color .gray).padding(80)

            }
            
            HStack { //Se encarga de colocar las vistas de manera horizontal
            Text("Hola amigos!").padding()
                .background(Color .green) //Agregara un color de fondo del texto
            
            Spacer()
            
            Text("Conozcamos mas sobre SwiftUI!").padding()
                .background(Color .green)//Agregara un color de fondo del texto
                
            }
            VStack{
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Text("10")
            Text("11")
            Text("12")
            Text("13")
            Text("14")
                VStack{
            Text("15")
            Text("16")
            Text("17")
            }
          }
        }.background(Color .yellow) //Agrega un color de fondo
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
