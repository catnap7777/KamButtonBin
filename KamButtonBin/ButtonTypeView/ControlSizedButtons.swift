//
//  ControlSizeButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ControlSizeButtons: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.controlSize.rawValue
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    var body: some View {
        VStack {
            Text("Control Size with Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .multilineTextAlignment(.center)
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 14))
            Divider()
            VStack(spacing: 20) {
                Button(action: {
                    showAlert1.toggle()
                }, label: {
                    Label(".controlSize(small)", systemImage: "hammer.fill")
                        .foregroundColor(.pink)
                })
                .buttonStyle(.bordered)
                .controlSize(.small)
                .alert(isPresented: $showAlert1) {
                    Alert(title: Text("Message"), message: Text("This button uses the modifiers:\n.buttonStyle(.bordered) and \n .controlSize(.small)"), dismissButton: .default(Text("OK")))
                }
                Button(action: {
                    showAlert2.toggle()
                }, label: {
                    Label(".controlSize(regular)", systemImage: "hammer.fill")
                        .foregroundColor(.blue)
                })
                .buttonStyle(.bordered)
                .controlSize(.regular)
                .alert(isPresented: $showAlert2) {
                    Alert(title: Text("Message"), message: Text("This button uses the modifiers:\n.buttonStyle(.bordered) and \n .controlSize(.regular)"), dismissButton: .default(Text("OK")))
                }
                Button(action: {
                    showAlert3.toggle()
                }, label: {
                    Label(".controlSize(large)", systemImage: "hammer.fill")
                        .foregroundColor(.purple)
                })
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .tint(.green)
                .controlSize(.large)
                .alert(isPresented: $showAlert3) {
                    Alert(title: Text("Message"), message: Text("This button uses the modifiers:\n.buttonStyle(.bordered),\n.buttonBorderShape(.capsule),\n .tint(.green), .controlSize(.large)"), dismissButton: .default(Text("OK")))
                }
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ControlSizeButtons_Previews: PreviewProvider {
    static var previews: some View {
        ControlSizeButtons(buttonModel: ButtonModel())
    }
}
