//
//  PostsHomeView.swift
//  CloneFacebook
//
//  Created by lucas on 2024-06-19.
//

import SwiftUI

struct PostsHomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                PersonView(size: 40, name: "LP")
                    
                VStack(alignment: .leading){
                    Text("Nombre la publicacion")
                        .foregroundStyle(Color("FontColorPrimary"))

                    Text("35 min .")
                        .foregroundStyle(Color("FontColorPrimary"))

                    
                }
            }
            .padding(.top)
            .padding(.leading)
            VStack{
                Text("Descripcion publicacion")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading , 20)

                Spacer()
                
            }
            .frame(maxWidth: .infinity , maxHeight: .infinity)
            
            
        }
        .frame(height: 300)
        .background(Color("primaryColor"))

        .frame(maxWidth: .infinity)
    }
}

#Preview {
    PostsHomeView()
}
