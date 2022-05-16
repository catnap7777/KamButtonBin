//
//  DestructiveButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct DestructiveButton: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Destructive Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 35))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
      Button(role: .destructive) {
        print("please delete me now...")
      } label: {
        Label("Delete", systemImage: "trash.fill")
          .font(Font.custom("Arial-BoldMT", size: 25))
      }
      .buttonStyle(.bordered)
      .buttonBorderShape(.capsule)
      Button(role: .destructive) {
        print("please delete me now...")
      } label: {
        Image(systemName: "trash.circle.fill")
          .resizable()
          .frame(width: 50, height: 50)
          .foregroundColor(.red)
      }
      Button(role: .destructive) {
        print("please delete me now...")
      } label: {
        Label("Delete", systemImage: "trash.fill")
          .font(Font.custom("Arial-BoldMT", size: 25))
      }
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
      Button(role: .destructive) {
        print("please delete me now...")
      } label: {
        Label("Delete", systemImage: "trash.fill")
          .font(Font.custom("Arial-BoldMT", size: 25))
      }
      .buttonStyle(.bordered)
      .buttonBorderShape(.capsule)
      .tint(.teal)
      Button(role: .destructive) {
        print("please delete me now...")
      } label: {
        Label("Delete", systemImage: "trash.fill")
          .font(Font.custom("Arial-BoldMT", size: 25))
          .padding(.vertical, 7)
          .padding(.horizontal, 12)
          .background(.indigo)
          .foregroundColor(.white)
      }
      .clipShape(RoundedRectangle(cornerRadius: 25))
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct DestructiveButton_Previews: PreviewProvider {
  static var previews: some View {
    DestructiveButton()
  }
}
