//
//  Componets.swift
//  CloneFacebook
//
//  Created by lucas on 2024-06-19.
//

import SwiftUI

struct PersonView: View {
    var size : CGFloat
    var name :String
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .foregroundColor(.blue)
                    .frame(height: size)
                Text(name)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    PersonView(size: 40, name: "Lp")
}
