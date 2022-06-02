//
//  RoundedRectangleButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct RoundedRectangleButton: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.roundedRectangles.rawValue
    @State var showAlert1 = false
    @State var showAlert2 = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Rounded Rectangles")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
            Button {
                showAlert1.toggle()
            } label: {
                Text("Rounded Rectangle\n(.bordered)")
                    .padding(.all, 5)
                    .foregroundColor(.pink)
                    .font(Font.custom("ChalkboardSE-bold", size: 18))
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle(radius: 15))
            .alert(isPresented: $showAlert1) {
                Alert(title: Text("Message"), message: Text(" .buttonBorderShape with .roundedRectangle(radius: 15) modifier used."), dismissButton: .default(Text("OK")))
            }
            Button("Rounded Rectangle\n(.borderedProminent)") {
                showAlert2.toggle()
            }
            .padding(.all, 10)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .foregroundColor(.white)
            .font(Font.custom("ChalkboardSE-bold", size: 18))
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("Message"), message: Text(".borderedProminent) and  .buttonBorderShape with .roundedRectangle(radius: 15) modifier used."), dismissButton: .default(Text("OK")))
            }
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RoundedRectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleButton(buttonModel: ButtonModel())
    }
}
