//
//  Modifiers.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct Modifiers: View {
    var buttonModel: ButtonModel
    var buttonTypeInd: Int = ButtonType.modifiers.rawValue
    @State var isDisplaying = false
    @State var showAlert1 = false
    @State var showAlert2 = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("More Modifiers")
                    .font(Font.custom("ChalkboardSE-bold", size: 25))
                    .foregroundColor(Color("subTitleColor"))
                    .padding(.vertical, 15)
                Text("\((buttonModel.buttons[buttonTypeInd]).description)")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 25)
                    .font(Font.custom("Arial-italicMT", size: 14))
                    .padding(.bottom, 15)
                Divider()
                VStack(spacing: 25) {
                    Button(action: {
                        showAlert1.toggle()
                    }, label: {
                        Label("More Modifiers", systemImage: "applelogo")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(Color(.red))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.purple, lineWidth: 5))
                    })
                    .alert(isPresented: $showAlert1) {
                        Alert(title: Text("Message"), message: Text("This button uses the modifiers:\n.padding, .foregroundColor, \n.background, .clipShape, .overlay, and .stroke"), dismissButton: .default(Text("OK")))
                    }
                    Button(action: {
                        showAlert2.toggle()
                    }, label: {
                        Image("swift")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.purple, lineWidth: 5))
                            .shadow(color: .teal, radius: 25, x: 25, y: 25)
                    })
                    .alert(isPresented: $showAlert2) {
                        Alert(title: Text("Message"), message: Text("This button uses an image and the modifiers:\n.resizeable, .frame, \n.clipShape, .overlay, .stroke, and .shadow"), dismissButton: .default(Text("OK")))
                    }
                    Button {
                        self.isDisplaying.toggle()
                    } label: {
                        VStack {
                            HStack {
                                Text("<- Displaying Rotating Button")
                                    .font(Font.custom("ChalkboardSE-bold", size: 18))
                                    .frame(width: 325, height: 40, alignment: .trailing)
                                    .padding(.trailing, 10)
                                    .foregroundColor(.white)
                                    .background(.indigo)
                            }
                            .overlay(
                                Image(systemName: "chevron.up.square")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(isDisplaying != true ? .white : .pink)
                                    .rotationEffect(isDisplaying ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                                    .animation(.easeInOut, value: 0.5)
                                    .controlSize(.large)
                                    .padding(), alignment: .leading
                            )
                            if isDisplaying {
                                Text("This button uses the modifiers .overlay,\n .resizeable, .animation, and .rotationEffect. \nScroll to see animal list.")
                                    .foregroundColor(Color("descColor"))
                                    .font(Font.custom("Arial-italicMT", size: 14))
                                    .padding(.all, 5)
                                    .frame(height: 75, alignment: .center)
                                List {
                                    Text("Cat")
                                    Text("Dog")
                                    Text("Bunny")
                                    Text("Goldfish")
                                    Text("Hamster")
                                    Text("Guinea Pig")
                                    Text("Bird")
                                }
                                .layoutPriority(isDisplaying ? 0.5 : 1.0)
                                .animation(.spring(), value: 0.0)
                                //Spacer()
                            }
                        }
                    }
                }
                Spacer()
            }
            .frame(height: 1500)
            .navigationBarTitleDisplayMode(.inline)
        } //end ScrollView
    }
    
}

struct Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Modifiers(buttonModel: ButtonModel())
    }
}
