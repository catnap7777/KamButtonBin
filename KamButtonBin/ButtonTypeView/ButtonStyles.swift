//
//  ButtonStyles.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ButtonStyles: View {
  var body: some View {
    VStack(spacing: 20) {
      Text("Button Styles")
        .font(Font.custom("ChalkboardSE-bold", size: 35))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
      Button(".plain") {
        // code
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
    ButtonStyles()
  }
}
