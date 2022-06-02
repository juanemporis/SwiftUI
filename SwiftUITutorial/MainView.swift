//
//  MainView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 1/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        ScrollView{ //Con el scrollView hara que las vistas se acomoden deslizando
            
        VStack{ //Se agrego las demas vistas utilizando el VStack
            MapView().frame(height:400)
            ImageView().offset(y:-150)
            Divider().padding()
            ContentView()
          }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
