//
//  ControlSizeButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ControlSizeButtons: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Control Size with Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 30))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
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
      .controlSize(.large)
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct ControlSizeButtons_Previews: PreviewProvider {
    static var previews: some View {
        ControlSizeButtons()
    }
}
