//
//  ContentView.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ContentView: View {
    var buttonModel: ButtonModel
    var body: some View {
        VStack(spacing: 10.0) {
            VStack {
                Text("Button Bin")
                    .foregroundColor(Color("titleColor"))
                    .padding(.horizontal, 55.0)
                    .background(Color(red: 0/255, green: 15/255, blue: 155/255, opacity: 0.25))
                    .padding(.top, 10)
                    .font(Font.custom("ChalkboardSE-bold", size: 45))
                Text("Swipe Left and Choose Your Favorite Button")
                    .foregroundColor(Color("titleColor"))
                    .font(Font.custom("ChalkboardSE-bold", size: 15))
                    .padding(.bottom, 10)
                Divider()
            }
            TabView {
                ButtonStyles(buttonModel: buttonModel, buttonTypeInd: ButtonType.buttonStyles.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                RoundedRectangleButton(buttonModel: buttonModel, buttonTypeInd: ButtonType.roundedRectangles.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                CapsuleButton(buttonModel: buttonModel, buttonTypeInd: ButtonType.capsule.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                DestructiveButton(buttonModel: buttonModel, buttonTypeInd: ButtonType.destructive.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                ControlSizeButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.controlSize.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                TintedButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.tinted.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                ToggleButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.toggled.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                MenuButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.menu.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                Modifiers(buttonModel: buttonModel, buttonTypeInd: ButtonType.modifiers.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
                CustomButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.custom.rawValue)
                    .tabItem {
                        Image(systemName: "circle")
                    }
            }.tabViewStyle(.page)
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(buttonModel: ButtonModel())
    }
}
