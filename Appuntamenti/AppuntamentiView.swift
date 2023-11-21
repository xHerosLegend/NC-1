//
//  AppuntamentiView.swift
//  NC-1
//
//  Created by Carmine Andreozzi on 16/11/23.
//

import SwiftUI

struct AppuntamentiView: View {
    @State private var Deluxe = false
    @State private var Barba = false
    @State private var Capelli = false
    @State private var Piega = false
    @State private var Trattamento = false
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack {
                    Button("Deluxe") {
                        withAnimation {
                        Deluxe.toggle()
                        }
                    }
                    .buttonStyle(.plain)
                    
                    VStack {
                        GroupBox {
                            Text("Barba + Beauty Skin Care")
                        }
                        
                        GroupBox {
                            Text("Progetto Relax")
                        }
                    }
                    .frame(height: Deluxe ? nil : 0, alignment: .top)
                    .clipped()
                }; Spacer(minLength: 10)
                VStack {
                    Button("Barba") {
                        withAnimation {
                            Barba.toggle()
                        }
                    }
                    .buttonStyle(.plain)
                    
                    VStack {
                        GroupBox {
                            Text("Barba Più Stile")
                        }
                    }
                    .frame(height: Barba ? nil : 0, alignment: .top)
                    .clipped()
                }; Spacer(minLength: 10)
                VStack {
                    Button("Capelli") {
                        withAnimation {
                            Capelli.toggle()
                        }
                    }
                    .buttonStyle(.plain)
                    
                    VStack {
                        GroupBox {
                            Text("Pelata")
                        }
                        
                        GroupBox {
                            Text("Taglio Capelli")
                        }
                        GroupBox {
                            Text("Taglio Fidelity")
                        }
                    }
                    .frame(height: Capelli ? nil : 0, alignment: .top)
                    .clipped()
                };Spacer(minLength: 10)
                VStack {
                    Button("Piega Style") {
                        withAnimation {
                            Piega.toggle()
                        }
                    }
                    .buttonStyle(.plain)
                    
                    VStack {
                        GroupBox {
                            Text("Piega Style")
                        }
                    }
                    .frame(height: Piega ? nil : 0, alignment: .top)
                    .clipped()
                }
                Spacer(minLength: 10)
                VStack {
                    Button("Trattamento") {
                        withAnimation {
                            Trattamento.toggle()
                        }
                    }
                    .buttonStyle(.plain)
                    
                    VStack {
                        GroupBox {
                            Text("Trattamento Specifico")
                        }
                    }
                    .frame(height: Trattamento ? nil : 0, alignment: .top)
                    .clipped()
                }
                
                
            }.padding()
                .navigationTitle("Reserve Now")
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
