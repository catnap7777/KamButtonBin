//
//  RoundedRectangleButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct RoundedRectangleButton: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Rounded Rectangles")
        .font(Font.custom("ChalkboardSE-bold", size: 35))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
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
    RoundedRectangleButton()
  }
}
