//
//  CustomButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct MyCustomButton1: ButtonStyle {
  func makeBody(configuration: Configuration)
  -> some View {
    configuration.label
      .controlSize(.large)
      .padding(.all, 20)
      .buttonStyle(.bordered)
      .background(
        LinearGradient(gradient: Gradient(
          colors: [.mint, .blue, .indigo]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        // since iOS 13
      )
      .foregroundColor(.white)
      .textCase(.uppercase)
      .font(Font.custom("Georgia-BoldItalic", size: 20))
  }
}

struct CustomButtons: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Custom Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 30))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
      Button("Custom Button1") {
        print("Here's my custom button1")
      }
      .buttonStyle(MyCustomButton1())
      Button("Custom Button2") {
        print("Here's my custom button2")
      }
      .buttonStyle(MyCustomButton1())
      .clipShape(RoundedRectangle(cornerSize: .init(width: 20, height: 20)))
      Button("Custom Button3") {
        print("Here's my custom button3")
      }
      .buttonStyle(MyCustomButton1())
      .shadow(color: .green, radius: 5, x: 15, y: 15)
      Button(action: {print("Here's my custom button4")}) {
        Label("Custom Button4", systemImage: "applelogo")
      }
      .buttonStyle(MyCustomButton1())
      .shadow(color: .cyan, radius: 25, x: 15, y: 15)
      .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.purple, lineWidth: 3))
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct CustomButtons_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtons()
    }
}
