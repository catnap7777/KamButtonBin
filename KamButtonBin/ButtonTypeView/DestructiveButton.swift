//
//  DestructiveButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct DestructiveButtons: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Destructive Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 35))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
      Button(role: .destructive, action: {
        print("please delete me now...")
      }) { // new in iOS 15
        Label("Delete", systemImage: "trash.fill")
          .font(Font.custom("Arial-BoldMT", size: 25))
      }
      .buttonStyle(.bordered)
      .buttonBorderShape(.capsule)
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct DestructiveButtons_Previews: PreviewProvider {
    static var previews: some View {
        DestructiveButtons()
    }
}
