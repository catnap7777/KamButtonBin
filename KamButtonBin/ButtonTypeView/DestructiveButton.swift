//
//  DestructiveButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct DestructiveButton: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.destructive.rawValue
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    @State var showAlert4 = false
    @State var showAlert5 = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Destructive Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
            Button(role: .destructive) {
                showAlert1.toggle()
            } label: {
                Label("Delete", systemImage: "trash.fill")
                    .font(Font.custom("Arial-BoldMT", size: 25))
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .alert(isPresented: $showAlert1) {
                Alert(title: Text("Message"), message: Text(".buttonStyle(.bordered),\n .buttonBorderShape(.capsule), and role: .destructive used."), dismissButton: .default(Text("OK")))
            }
            Button(role: .destructive) {
                showAlert2.toggle()
            } label: {
                Image(systemName: "trash.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
            }
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("Message"), message: Text("Image with systemName:,\n .resizeable, .frame, .foregroundColor, and role: .destructive used."), dismissButton: .default(Text("OK")))
            }
            Button(role: .destructive) {
                showAlert3.toggle()
            } label: {
                Label("Delete", systemImage: "trash.fill")
                    .font(Font.custom("Arial-BoldMT", size: 25))
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .alert(isPresented: $showAlert3) {
                Alert(title: Text("Message"), message: Text(".buttonStyle(.borderedProminent),\n .buttonBorderShape(.capsule), and role: .destructive used."), dismissButton: .default(Text("OK")))
            }
            Button(role: .destructive) {
                showAlert4.toggle()
            } label: {
                Label("Delete", systemImage: "trash.fill")
                    .font(Font.custom("Arial-BoldMT", size: 25))
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.teal)
            .alert(isPresented: $showAlert4) {
                Alert(title: Text("Message"), message: Text(".buttonStyle(.bordered),\n .buttonBorderShape(.capsule), \n.tint(.teal), and role: .destructive used."), dismissButton: .default(Text("OK")))
            }
            Button(role: .destructive) {
                showAlert5.toggle()
            } label: {
                Label("Delete", systemImage: "trash.fill")
                    .font(Font.custom("Arial-BoldMT", size: 25))
                    .padding(.vertical, 7)
                    .padding(.horizontal, 12)
                    .background(.indigo)
                    .foregroundColor(.white)
            }
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .alert(isPresented: $showAlert5) {
                Alert(title: Text("Message"), message: Text(".clipShape(RoundedRectangle\n(cornerRadius:  25),\n .background, .foregroundColor, .font, and role: .destructive used."), dismissButton: .default(Text("OK")))
            }
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DestructiveButton_Previews: PreviewProvider {
    static var previews: some View {
        DestructiveButton(buttonModel: ButtonModel())
    }
}
