//
//  ContentView.swift
//  NC-1
//
//  Created by Carmine Andreozzi on 14/11/23.
//

import SwiftUI
struct ContentView: View {
    var barba = PhotoViewModel()
    
    @State var selfoto: String = "noimage"
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(alignment: .center) {
                    Text("I Nostri Tagli")
                        .font(.headline)
                    TabView(selection: $selfoto){
                        ForEach(barba.barbieri){barbieri in
                            Image(barbieri.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200.0, height: 190.0)
                                .tag(barbieri.imageName)
                        }
                    }
                    .tabViewStyle(.page)
                    .frame(width: 6000.0, height: 250.0)
                    .background(Color.black)
                    .frame(width: 190)
                }
                .padding()
                .navigationTitle("+Stile")
                .toolbar{
                    Circle()
                        .frame(width: 30.0, height:30.0)
                }
                VStack{
                    Text("I Tuoi Appuntamenti")
                        .font(.headline)
                }
            }.background(Color.white)
            
        }
    }
}
#Preview {
    ContentView()
}
