//
//  TintedButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct TintedButtons: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Tinted Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 30))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
      Button(action: {}, label: {
        Label("Tinted Button1", systemImage: "applelogo")
          .padding(.all, 10)
          .foregroundColor(.pink)
      })
      .buttonStyle(.bordered)
      .buttonBorderShape(.capsule)
      .tint(.pink)
      Button(action: {}, label: {
        Label("Tinted Button2", systemImage: "gamecontroller.fill")
          .padding(.all, 5)
          .foregroundColor(.orange)
      })
      .buttonStyle(.bordered)
      .buttonBorderShape(.roundedRectangle(radius: 10))
      .tint(.teal)
      Button(action: {}, label: {
        Label("Tinted Button3", systemImage: "sun.max.fill")
          .padding(.all, 5)
          .font(Font.custom("ChalkboardSE-bold", size: 18))
      })
      .buttonStyle(.bordered)
      .buttonBorderShape(.roundedRectangle(radius: 10))
      .tint(.yellow)
      Button(action: {}, label: {
        Label("Tinted Button4", systemImage: "ladybug")
          .padding(.all, 5)
          .font(Font.custom("ChalkboardSE-bold", size: 18))
      })
      .buttonStyle(.bordered)
      //      .buttonBorderShape(.roundedRectangle(radius: 10))
      .buttonBorderShape(.capsule)
      .tint(.purple)
      .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 2))
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct TintedButtons_Previews: PreviewProvider {
    static var previews: some View {
        TintedButtons()
    }
}
