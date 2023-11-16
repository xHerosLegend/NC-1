//
//  AppuntamentiView.swift
//  NC-1
//
//  Created by Carmine Andreozzi on 16/11/23.
//

import SwiftUI

struct AppuntamentiView: View {
    var body: some View {
        var categorieView = CategorieViewModel()
        NavigationStack{
            ScrollView {
                VStack(alignment: .center) {
                    List{
                        ForEach (categorieView.prodotti){prodotti in
                       
                        }
                        
                    }
                }
                .padding()
                .navigationTitle("Prenota Ora")
                .toolbar{
                    Circle()
                        .frame(width: 30.0, height:30.0)
                }
            }
        }.background(Color.white)
        
    }
}
#Preview {
    AppuntamentiView()
}
