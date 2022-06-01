//
//  CapsuleButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct CapsuleButton: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.capsule.rawValue
    var body: some View {
        VStack(spacing: 20) {
            Text("Capsule Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.bottom, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
            Button {
                // code
            } label: {
                Text("Capsule Button")
                    .padding(.all, 10)
                    .foregroundColor(.white)
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            Button {
                // code
            } label: {
                Text("Capsule Button")
                    .padding(.all, 10)
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.purple)
            Button {
                // code
            } label: {
                Text("Capsule Button")
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.small)
            .tint(.teal)
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CapsuleButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButton(buttonModel: ButtonModel())
    }
}
