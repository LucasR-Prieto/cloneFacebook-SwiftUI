//
//  itemHistoryView.swift
//  CloneFacebook
//
//  Created by lucas on 2024-06-19.
//

import SwiftUI

struct itemHistoryView: View {
    var body: some View {
        VStack{
            Color.red
            ZStack{
                Rectangle()
                    .cornerRadius(20)
                
                    .foregroundColor(.blue)
                    .frame(width: 120, height: 190)
                    .overlay(Image("history_img")
                        .resizable()
                    )
                    .cornerRadius(20)
                VStack(alignment: .leading) {
                    HStack{
                        Circle()
                            .frame(width: 30 , height: 30)
                            .foregroundColor(.blue)
                        Spacer()
                        
                    }
                    .padding(.top ,10)
                    Spacer()
                    HStack(alignment: .center) {
                        Text(" juan")
                            .bold()
                            .foregroundColor(Color("FontColorPrimary"))
                    }

                }
                .padding(7)
            }
        }//vstask Padre
        .frame( width: 120 , height: 190)
    }
}

#Preview {
    itemHistoryView()
}
