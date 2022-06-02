//
//  CapsuleButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct CapsuleButton: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.capsule.rawValue
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Capsule Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
            Button {
                showAlert1.toggle()
            } label: {
                Text("Capsule Button")
                    .padding(.all, 10)
                    .foregroundColor(.white)
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .alert(isPresented: $showAlert1) {
                Alert(title: Text("Message"), message: Text(".buttonStyle(.borderedProminent)\n and .buttonBorderShape(.capsule) modifier used."), dismissButton: .default(Text("OK")))
            }
            Button {
                showAlert2.toggle()
            } label: {
                Text("Capsule Button")
                    .padding(.all, 10)
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.purple)
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("Message"), message: Text(".buttonStyle(.bordered),\n .buttonBorderShape(.capsule), and .tint(.purple) modifier used."), dismissButton: .default(Text("OK")))
            }
            Button {
                showAlert3.toggle()
            } label: {
                Text("Capsule Button")
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.small)
            .tint(.teal)
            .alert(isPresented: $showAlert3) {
                Alert(title: Text("Message"), message: Text(".buttonStyle(.bordered),\n .buttonBorderShape(.capsule),\n .controlSize(.small), and\n .tint(.teal) modifier used."), dismissButton: .default(Text("OK")))
            }
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CapsuleButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButton(buttonModel: ButtonModel())
    }
}
