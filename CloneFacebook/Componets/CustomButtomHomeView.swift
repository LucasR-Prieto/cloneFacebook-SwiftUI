//
//  CustomButtomHomeView.swift
//  CloneFacebook
//
//  Created by lucas on 2024-06-19.
//

import SwiftUI

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
                        .foregroundStyle(Color("FontColorPrimary"))
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


#Preview {
    CustomButtomHomeView(label: "test", functionCustom: {})
}


