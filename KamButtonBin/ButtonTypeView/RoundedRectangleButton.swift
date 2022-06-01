//
//  RoundedRectangleButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct RoundedRectangleButton: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.roundedRectangles.rawValue
  var body: some View {
    VStack(spacing: 20) {
      Text("Rounded Rectangles")
        .font(Font.custom("ChalkboardSE-bold", size: 25))
        .foregroundColor(Color("subTitleColor"))
        .padding(.bottom, 15)
        Text("\((buttonModel.buttons[buttonTypeInd]).description)")
            .padding(.horizontal, 25)
            .font(Font.custom("Arial-italicMT", size: 15))
      Button {
        // code
      } label: {
        Text("Rounded Rectangle\n(.bordered)")
          .padding(.all, 5)
          .foregroundColor(.pink)
          .font(Font.custom("ChalkboardSE-bold", size: 18))
      }
      .buttonStyle(.bordered)
      .buttonBorderShape(.roundedRectangle(radius: 15))
      Button("Rounded Rectangle\n(.borderedProminent)") {
        // code
      }
      .padding(.all, 10)
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.roundedRectangle(radius: 10))
      .foregroundColor(.white)
      .font(Font.custom("ChalkboardSE-bold", size: 18))
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct RoundedRectangleButton_Previews: PreviewProvider {
  static var previews: some View {
    RoundedRectangleButton(buttonModel: ButtonModel())
  }
}
