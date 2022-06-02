//
//  ButtonStyles.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ButtonStyles: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.buttonStyles.rawValue
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    @State var showAlert4 = false
    
    var body: some View {
        VStack {
            Text("Button Styles")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .multilineTextAlignment(.center)
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 14))
            Divider()
            VStack(spacing: 20) {
                Button(".plain") {
                    showAlert1.toggle()
                }
                .buttonStyle(.plain)
                .alert(isPresented: $showAlert1) {
                    Alert(title: Text("Message"), message: Text("This button uses the modifier:\n .buttonStyle(.plain)"), dismissButton: .default(Text("OK")))
                }
                Button(".bordered") {
                    showAlert2.toggle()
                }
                .buttonStyle(.bordered)
                .alert(isPresented: $showAlert2) {
                    Alert(title: Text("Message"), message: Text("This button uses the modifier:\n .buttonStyle(.bordered)"), dismissButton: .default(Text("OK")))
                }
                Button(".borderedProminent") {
                    showAlert3.toggle()
                }
                .buttonStyle(.borderedProminent)
                .alert(isPresented: $showAlert3) {
                    Alert(title: Text("Message"), message: Text("This button uses the modifier:\n .buttonStyle(.borderedProminent)"), dismissButton: .default(Text("OK")))
                }
                Button {
                    showAlert4.toggle()
                } label: {
                    Label("Fancy Button\n(.bordered)", systemImage: "sun.max.fill")
                }
                .buttonStyle(.bordered)
                .font(Font.custom("Georgia-BoldItalic", size: 20))
                .foregroundColor(.purple)
                .alert(isPresented: $showAlert4) {
                    Alert(title: Text("Message"), message: Text("This button uses the modifiers:\n .buttonStyle(.bordered),\n.foregroundColor(.purple),\n .font(Font.custom(\"Georgia-BoldItalic\", size: 20))"), dismissButton: .default(Text("OK")))
                }
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyles(buttonModel: ButtonModel())
    }
}
