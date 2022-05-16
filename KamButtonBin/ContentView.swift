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
        Text("Button Bin")
          .foregroundColor(Color("titleColor"))
          .font(Font.custom("ChalkboardSE-bold", size: 45))
        Text("Choose Your Favorite Button")
          .foregroundColor(Color("subTitleColor"))
          .font(Font.custom("ChalkboardSE-bold", size: 18))
        Picker(selection: $choice4, label: Text("MyPicker")) {
          ForEach(buttonModel.buttons) { item in
            Text("\(item.type)")
          }
        }
        .pickerStyle(.wheel)
        .frame(height: 75)
        .clipped()
        .padding(.top, 35)
        .padding(.bottom, 35)
        Image(buttonModel.buttons[choice4].picture)
          .resizable()
          .frame(width: 200, height: 200, alignment: .center)
          .padding(.top, 2)
          .border(Color("magnesium"), width: 2)
        Text("\(buttonModel.buttons[choice4].description)")
          .multilineTextAlignment(.center)
          .foregroundColor(.gray)
          .font(Font.custom("Arial-ItalicMT", size: 15))
          .frame(width: 300, height: 45, alignment: .center)
        Spacer()
        NavigationLink(destination: {
          switch choice4 {
          case 0: ButtonStyles()
          case 1: RoundedRectangleButton()
          case 2: CapsuleButton()
          case 3: DestructiveButton()
          case 4: ControlSizeButtons()
          case 5: TintedButtons()
          case 6: ToggleButtons()
          case 7: MenuButtons()
          case 8: Modifiers()
          case 9: CustomButton()
          default:
            ButtonStyles()
          }
        },
        label: {
          Label("View Your Choice", systemImage: "eye")
            .font(Font.custom("ChalkboardSE-bold", size: 18))
        })
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
        .tint(Color("titleColor"))
        .controlSize(.regular)
        .navigationBarTitle("Back")
        .navigationBarHidden(true)
        Spacer()
      }
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(buttonModel: ButtonModel())
  }
}
