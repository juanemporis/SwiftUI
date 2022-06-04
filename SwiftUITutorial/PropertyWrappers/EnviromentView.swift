//
//  EnviromentView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 3/06/22.
//
//NOTA:@EnvironmentObject un objeto de entorno invalida la vista actual cada vez que cambia el objeto observable. Si declara una propiedad como objeto de entorno, asegúrese de establecer un objeto modelo correspondiente en una vista antepasada llamando a su modificador

import SwiftUI

struct EnviromentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView().environmentObject(UserData())
    }
}
