//
//  ContentView.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ContentView: View {
  @State var choice4: Int = 0
  var buttonModel: ButtonModel

  var body: some View {
    NavigationView {
      VStack(spacing: 10.0) {
        Text("SwiftUI Buttons")
          .foregroundColor(Color("subTitleColor"))
          .font(Font.custom("ChalkboardSE-bold", size: 30))
        Text("(RW/FSP 5/11/22)")
        //Text("Button Bin")
          .foregroundColor(Color("subTitleColor"))
//          .font(Font.custom("ChalkboardSE-bold", size: 45))
          .font(Font.custom("ChalkboardSE-bold", size: 25))
        Text("Choose Your Favorite Button")
          .foregroundColor(Color("titleColor"))
          .font(Font.custom("ChalkboardSE-bold", size: 18))
        Picker(selection: $choice4, label: Text("MyPicker")) {
          ForEach(buttonModel.buttons) { item in
            Text("\(item.type)")
              .font(Font.custom("ChalkboardSE-bold", size: 20))
              .foregroundColor(Color("subTitleColor"))
          }
        }
        .padding(.bottom, 25)
        .pickerStyle(.wheel)
        .frame(height: 125)
        .padding(.top, 35)
        Image(buttonModel.buttons[choice4].picture)
          .resizable()
          .frame(width: 200, height: 200, alignment: .center)
          .padding(.top, 20)
        Text ("\(buttonModel.buttons[choice4].description)")
          .foregroundColor(.black)
          .bold()
        //.background(.yellow)
          .font(Font.custom("Arial-ItalicMT", size: 15))
          .frame(width: 300, height: 45, alignment: .center)
          .padding(.top, 10)
        NavigationLink(destination: {
          switch choice4 {
          case 0: ButtonStyles()
          case 1: RoundedRectangleButtons()
          case 2: CapsuleButtons()
          case 3: DestructiveButtons()
          case 4: ControlSizeButtons()
          case 5: TintedButtons()
          case 6: ToggleButtons()
          case 7: MenuButtons()
          case 8: Modifiers()
          case 9: CustomButtons()
          default:
            ButtonStyles()
          }
        },  label: {
          Label("GO", systemImage: "applelogo")
            .font(Font.custom("ChalkboardSE-bold", size: 18))
        })
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .tint(.purple)
        .controlSize(.regular)
        .navigationBarTitle("Back")
        .navigationBarHidden(true)
        Spacer()
      }
    }

  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(buttonModel: ButtonModel())
    }
}
