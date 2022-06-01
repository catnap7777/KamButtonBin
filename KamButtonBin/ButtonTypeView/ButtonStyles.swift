//
//  ButtonStyles.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ButtonStyles: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.buttonStyles.rawValue
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Button Styles")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.bottom, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
            Button(".plain") {
                // code
                print("index ===== \(buttonTypeInd)")
            }
            .buttonStyle(.plain)
            Button(".bordered") {
                // code
            }
            .buttonStyle(.bordered)
            Button(".borderedProminent") {
                // code
            }
            .buttonStyle(.borderedProminent)
            Button {
                print("fancy button")
            } label: {
                Label("Fancy Button\n(.bordered)", systemImage: "sun.max.fill")
            }
            .buttonStyle(.bordered)
            .font(Font.custom("Georgia-BoldItalic", size: 20))
            .foregroundColor(.purple)
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ButtonStyles_Previews: PreviewProvider {
  static var previews: some View {
    ButtonStyles(buttonModel: ButtonModel())
  }
}
