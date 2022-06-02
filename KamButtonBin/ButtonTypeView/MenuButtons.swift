//
//  MenuButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct MenuButtons: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.menu.rawValue
    @State var message = ""
    var body: some View {
        VStack(spacing: 50) {
            Text("Menu Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
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
            Menu {
              Button(action: {
                message = "Open chosen"
              }) {
                Label("Open", systemImage: "book")
              }
              Button(action: {
                message = "Find chosen"
              }) {
                Label("Find", systemImage: "magnifyingglass")
              }
              Button(action: {
                message = "Delete chosen"
              }) {
                Label("Delete", systemImage: "trash")
              }
            } label: {
              Label("Click for Options", systemImage: "pencil.circle")
                .font(Font.custom("GillSans-UltraBold", size: 25))
                .foregroundColor(.green)
            }
            Menu("Click for Submenu") {
              Menu("Submenu") {
                Button("Copy Format", action: {print("copy")})
                Button("Paste Format", action: {print("paste")})
              }
              Button("Delete...", action: {print("delete")})
              Button("Find", action: {print("find")})
              Button("Open ", action: {print("open")})
            }
            .foregroundColor(.cyan)
            .font(Font.custom("GillSans-UltraBold", size: 25))
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MenuButtons_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtons(buttonModel: ButtonModel())
    }
}
