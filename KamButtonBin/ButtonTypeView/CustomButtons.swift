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
                LinearGradient(
                    gradient: Gradient(colors: [.orange, .blue, .green]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
            )
            .foregroundColor(.white)
            .textCase(.uppercase)
            .font(Font.custom("Georgia-BoldItalic", size: 20))
    }
}

struct CustomButtons: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.custom.rawValue
    var body: some View {
        VStack(spacing: 20) {
            Text("Custom Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.bottom, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
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
            .shadow(color: .purple, radius: 5, x: 15, y: 15)
            Button {
                print("Here's my custom button4")
            } label: {
                Label("Custom Button4", systemImage: "applelogo")
            }
            .buttonStyle(MyCustomButton1())
            .shadow(color: .yellow, radius: 25, x: 15, y: 15)
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CustomButtons_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtons(buttonModel: ButtonModel())
    }
}
