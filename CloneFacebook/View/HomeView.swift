//
//  HomeView.swift
//  CloneFacebook
//
//  Created by lucas on 2024-06-11.
//

import SwiftUI

struct HomeView: View {
    @State private var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            HeaderView()
            HStack{
                PersonView(size: 40, name: "LP")
                TextField("¿Qué estás pensando?", text: $textFieldValue)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                
            }
            .padding(.horizontal , 10)
            Divider()
                .frame(height: 1)
                .background(Color.gray)
            HStack(){
                CustomButtomHomeView(divider: true ,label: "transmitir" , systemImage: "video", functionCustom: {
                    print("hello")
                })
                CustomButtomHomeView(divider: true ,label: "Foto", systemImage: "photo.badge.plus.fill", functionCustom: {
                    print("hello")
                })
                CustomButtomHomeView(divider: false ,label: "Sala", systemImage: "video.badge.plus",functionCustom: {
                    print("hello")
                })

            }//functions Home
            .frame(height: 40)
            ScrollView{

            }//ScrollView
            Spacer()

            
        }
        
    }
}

#Preview {
    HomeView()
}



