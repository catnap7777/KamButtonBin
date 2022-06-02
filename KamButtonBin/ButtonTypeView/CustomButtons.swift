//
//  CustomButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct CustomButton: ButtonStyle {
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
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    @State var showAlert4 = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Custom Buttons")
                .font(Font.custom("ChalkboardSE-bold", size: 25))
                .foregroundColor(Color("subTitleColor"))
                .padding(.vertical, 15)
            Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                .padding(.horizontal, 25)
                .font(Font.custom("Arial-italicMT", size: 15))
            //***********************************
            Button("Custom Button") {
                print("Here's my custom button1")
                showAlert1.toggle()
            }
            .buttonStyle(CustomButton())
            .alert(isPresented: $showAlert1) {
                Alert(title: Text("Message"), message: Text("This button uses a custom Class and the makeBody function to configure a button with a custom font and a background which uses a LinearGradient with three colors."), dismissButton: .default(Text("OK")))
            }
            //***********************************
            Button {
                showAlert2.toggle()
            } label: {
                Rectangle()
                    .fill(AngularGradient(colors: [.purple, .blue, .black, .purple, .blue, .black, .purple], center: .center))
                    .frame(width: 250, height: 55)
                    .overlay {
                        Text("Custom Button2")
                            .foregroundColor(.white)
                            .font(.body)
                            .fontWeight(.bold)
                    }
            }
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("Message"), message: Text("This button uses a Rectangle as it's button which uses a .fill modifier and an AngularGradient to make a cone shaped styling for it's background."), dismissButton: .default(Text("OK")))
            }
            //***********************************
            Button {
                showAlert3.toggle()
            } label: {
                Rectangle()
                    .fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .top, startRadius: 10, endRadius: 65))
                    .frame(width: 250, height: 55)
                    .overlay {
                        Text("Custom Button3")
                            .foregroundColor(.white)
                            .font(.body)
                            .fontWeight(.bold)
                    }
            }
            .shadow(color: .teal, radius: 25, x: 15, y: 15)
            .alert(isPresented: $showAlert3) {
                Alert(title: Text("Message"), message: Text("This button uses a Rectangle as it's button which uses a .fill modifier and an RadialGradient for it's background. It also has a teal color shadow."), dismissButton: .default(Text("OK")))
            }
            //***********************************
            Button {
                print("Here's my custom button4")
                showAlert4.toggle()
            } label: {
                Label("Custom Button4", systemImage: "applelogo")
            }
            .buttonStyle(CustomButton())
            .shadow(color: .yellow, radius: 25, x: 15, y: 15)
            .alert(isPresented: $showAlert4) {
                Alert(title: Text("Message"), message: Text("This button uses a custom Class and the makeBody function to configure a button with a custom font and a background which uses a LinearGradient with three colors. It also uses a systemImage and has a yellow shadow."), dismissButton: .default(Text("OK")))
            }
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
