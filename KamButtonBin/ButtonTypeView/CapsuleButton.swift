//
//  CapsuleButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct CapsuleButtons: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Capsule Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 35))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
      Button {
        //
      } label: {
        Text("Capsule Button")
          .padding(.all, 10)
          .foregroundColor(.white)
          .font(Font.custom("ChalkboardSE-bold", size: 18))
      }
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct CapsuleButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButtons()
    }
}
