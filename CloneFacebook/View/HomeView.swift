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
        ScrollView {
            VStack {
                HeaderView()
                HStack{
                    PersonView(size: 40, name: "LP")
                        .padding(.leading)
                    TextField("¿Qué estás pensando?", text: $textFieldValue)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                    
                }
                .background(Color("primaryColor"))
                .frame(height: 40)
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
                .background(Color("primaryColor"))
                .frame(height: 40)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            itemHistoryView()
                                .padding(.vertical , 5)
                            itemHistoryView()
                                .padding(.vertical , 5)

                            itemHistoryView()
                                .padding(.vertical , 5)
                        }
                        .padding(.horizontal,10)
                        .padding(.vertical , 10)
                }//History Scroll
                    .background(Color("primaryColor"))
                    PostsHomeView()
                    PostsHomeView()

                    PostsHomeView()

                    
                
            }//main vstack
            
        }

        
    }
}

#Preview {
    HomeView()
}



