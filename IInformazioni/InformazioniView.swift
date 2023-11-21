//
//  InformazioniView.swift
//  NC-1
//
//  Created by Carmine Andreozzi on 17/11/23.
//

import SwiftUI

struct InformazioniView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                Spacer(minLength: 20)
                Text("I Nosti Servizi")
                    .bold()
                HStack(alignment: .center){
                    
                    VStack{
                        Image("call_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 2)
                            .frame(width: 40)
                            .padding()
                        Text("Chiama")
                        
                    }
                    VStack{
                        Image("whatapp_icon")  .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 2)
                            .frame(width: 40)
                            .padding()
                        Text("Scrivici")
                    }
                }.navigationTitle("Più Stile Parruchieri")
            }
        }
    }
}
#Preview {
    InformazioniView()
}
