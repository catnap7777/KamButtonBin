//
//  MenuButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct MenuButtons: View {
  var body: some View {
    VStack(spacing: 55) {
      Text("Menu Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 30))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 100)
      Menu("Click to Check Weather Today") {
        Button {
          print("Sunny Day Today")
        } label: {
          Label("Sunny Day", systemImage: "sun.max.fill")
        }
        Button {
          print("Cloudy Day Today")
        } label: {
          Label("Cloudy Day", systemImage: "cloud.fill")
        }
        Button {
          print("Rainy Day Today")
        } label: {
          Label("Rainy Day", systemImage: "cloud.rain")
        }
      }
      .padding(.top, 10)
      .padding(.horizontal, 35)
      .foregroundColor(.white)
      .font(Font.custom("SavoyeLetPlain", size: 30))
      .background(.indigo)
      .clipShape(RoundedRectangle(cornerRadius: 25))
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct MenuButtons_Previews: PreviewProvider {
  static var previews: some View {
    MenuButtons()
  }
}
