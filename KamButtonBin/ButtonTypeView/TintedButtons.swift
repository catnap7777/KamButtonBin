//
//  TintedButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct TintedButtons: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.tinted.rawValue
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    @State var showAlert4 = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Tinted Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .multilineTextAlignment(.center)
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 14))
            Divider()
            Button(action: {
                showAlert1.toggle()
            }, label: {
                Label("Tinted Button", systemImage: "applelogo")
                    .padding(.all, 5)
                    .foregroundColor(.pink)
            })
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.pink)
            .alert(isPresented: $showAlert1) {
                Alert(title: Text("Message"), message: Text("systemImage: \"applelogo\",\n .buttonStyle(.bordered),\n.buttonBorderShape(.capsule),\n and .tint(.pink) used."), dismissButton: .default(Text("OK")))
            }
            Button(action: {
                showAlert2.toggle()
            }, label: {
                Label("Tinted Button", systemImage: "gamecontroller.fill")
                    .padding(.all, 5)
                    .foregroundColor(.orange)
            })
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .tint(.teal)
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("Message"), message: Text("systemImage: \"gamecontroller.fill\",\n .buttonStyle(.bordered),\n.buttonBorderShape\n(.roundedRectangle(radius: 10)),\nforegroundColor(.orange),\n and .tint(.teal) used."), dismissButton: .default(Text("OK")))
            }
            Button(action: {
                showAlert3.toggle()
            }, label: {
                Label("Tinted Button", systemImage: "sun.max.fill")
                    .padding(.all, 5)
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            })
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .tint(.yellow)
            .alert(isPresented: $showAlert3) {
                Alert(title: Text("Message"), message: Text("systemImage: \"sun.max.fill\",\n .buttonStyle(.bordered),\n.buttonBorderShape\n(.roundedRectangle(radius: 10)),\nand .tint(.yellow) used."), dismissButton: .default(Text("OK")))
            }
            Button(action: {
                showAlert4.toggle()
            }, label: {
                Label("Tinted Button", systemImage: "ladybug")
                    .padding(.all, 5)
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            })
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.purple)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 2))
            .alert(isPresented: $showAlert4) {
                Alert(title: Text("Message"), message: Text("systemImage: \"ladybug\",\n .buttonStyle(.bordered),\n.buttonBorderShape(.capsule),\n.tint(.purple), .overlay, and .stroke used."), dismissButton: .default(Text("OK")))
            }
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TintedButtons_Previews: PreviewProvider {
    static var previews: some View {
        TintedButtons(buttonModel: ButtonModel())
    }
}
