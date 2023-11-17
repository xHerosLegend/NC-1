//
//  AppuntamentiView.swift
//  NC-1
//
//  Created by Carmine Andreozzi on 16/11/23.
//

import SwiftUI

struct AppuntamentiView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                
                
            }.padding()
                .navigationTitle("Prenota Ora")
                .toolbar{
                    Circle()
                        .frame(width: 30.0, height:30.0)
                }
            }
    }
        
    }
#Preview {
    AppuntamentiView()
}
