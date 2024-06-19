//
//  HeaderView.swift
//  CloneFacebook
//
//  Created by lucas on 2024-06-19.
//

import SwiftUI

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


#Preview {
    HeaderView()
}
