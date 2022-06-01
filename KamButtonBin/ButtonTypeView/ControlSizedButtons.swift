//
//  ControlSizeButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ControlSizeButtons: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.controlSize.rawValue
    var body: some View {
        VStack(spacing: 20) {
            Text("Control Size with Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.bottom, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
            Button(action: {}, label: {
                Label(".controlSize(small)", systemImage: "hammer.fill")
                    .foregroundColor(.pink)
            })
            .buttonStyle(.bordered)
            .controlSize(.small)
            Button(action: {}, label: {
                Label(".controlSize(regular)", systemImage: "hammer.fill")
                    .foregroundColor(.blue)
            })
            .buttonStyle(.bordered)
            .controlSize(.regular)
            Button(action: {}, label: {
                Label(".controlSize(large)", systemImage: "hammer.fill")
                    .foregroundColor(.purple)
            })
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.green)
            .controlSize(.large)
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ControlSizeButtons_Previews: PreviewProvider {
    static var previews: some View {
        ControlSizeButtons(buttonModel: ButtonModel())
    }
}
