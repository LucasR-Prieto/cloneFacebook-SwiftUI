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

            }
            .frame(height: 50)
            
        }
        Spacer()
        Spacer()

    }
}

#Preview {
    HomeView()
}

struct HeaderView: View {
    var body: some View {
        HStack{
            Text("facebook")
                .foregroundColor(.blue)
                .font(.title)
            Spacer()
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 35)
                    
                    VStack{
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }
                }
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 35)
                    
                    VStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                    }
                }
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 35)
                    
                    VStack{
                        Image(systemName: "message")
                            .foregroundColor(.black)
                    }
                }
            })
            
        }
        .padding(.horizontal , 10)
    }
}

struct CustomButtomHomeView: View {
    var systemImage :String?
    let functionCustom: () -> Void
    var label :String
    var divider : Bool
    init(divider: Bool = false , label :String  ,systemImage : String? = nil ,functionCustom: @escaping () -> Void) {
        self.divider = divider
        self.label = label
        self.systemImage = systemImage
        self.functionCustom = functionCustom
    }
    var body: some View {
        HStack  {
            Button(action: {
                functionCustom()
            }, label: {
                HStack {
                    if let image = systemImage {
                        Image(systemName: image)
                        
                    }
                    Text(label)
                        .foregroundStyle(Color.black)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)

            })
            if divider {
                Divider()
                    .frame(width: 1)
                    .background(Color.gray)
                
            }
        }
        .frame(maxWidth: .infinity)

    }
}
