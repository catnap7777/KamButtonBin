//
//  ContentView.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ContentView: View {
    var buttonModel: ButtonModel
    @State var selectedView = 1
    var body: some View {
        VStack(spacing: 10.0) {
            ZStack {
                Color(red: 155/255, green: 0/255, blue: 100/355, opacity: 0.15).ignoresSafeArea()
                //            Color.purple
                //                .ignoresSafeArea()
                VStack {
                    Text("Button Boutique")
                        .foregroundColor(Color("titleColor"))
                        .padding(.horizontal, 55.0)
                        .background(Color(red: 0/255, green: 15/255, blue: 155/255, opacity: 0.25))
                        .padding(.top, 25)
                        .font(Font.custom("ChalkboardSE-bold", size: 35))
                    Spacer()
                    Text("~ SwiftUI Buttons and their modifiers ~\n(swipe left to learn more)")
                        .multilineTextAlignment(.center)
                        .frame(height: 55)
                        .foregroundColor(Color("descColor"))
                        .font(Font.custom("ChalkboardSE-bold", size: 15))
                        .padding(.bottom, 15)
                    Divider()
                }
            }
            .frame(height: 125)
            Group {
                TabView(selection: $selectedView) {
                    ButtonStyles(buttonModel: buttonModel, buttonTypeInd: ButtonType.buttonStyles.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(1)
                    RoundedRectangleButton(buttonModel: buttonModel, buttonTypeInd: ButtonType.roundedRectangles.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(2)
                    CapsuleButton(buttonModel: buttonModel, buttonTypeInd: ButtonType.capsule.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(3)
                    DestructiveButton(buttonModel: buttonModel, buttonTypeInd: ButtonType.destructive.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(4)
                    ControlSizeButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.controlSize.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(5)
                    TintedButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.tinted.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(6)
                    ToggleButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.toggled.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(7)
                    MenuButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.menu.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(8)
                    Modifiers(buttonModel: buttonModel, buttonTypeInd: ButtonType.modifiers.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(9)
                    CustomButtons(buttonModel: buttonModel, buttonTypeInd: ButtonType.custom.rawValue)
                        .tabItem {
                            Image(systemName: "circle")
                        }.tag(10)
                }.tabViewStyle(.page)
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }//end group
            Spacer()
            HStack(spacing: 10) {
                Button ("1") {
                    selectedView = 1
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.yellow)
                //.foregroundColor(.orange)
                Button ("2") {
                    selectedView = 2
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.green)
                Button ("3") {
                    selectedView = 3
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.indigo)
                Button ("4") {
                    selectedView = 4
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.purple)
                Button ("5") {
                    selectedView = 5
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.yellow)
                
                Button ("6") {
                    selectedView = 6
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.green)
                
                Button ("7") {
                    selectedView = 7
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.indigo)
                Button ("8") {
                    selectedView = 8
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.purple)
                Button ("9") {
                    selectedView = 9
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.indigo)
                Button ("10") {
                    selectedView = 10
                }
                //.buttonStyle(.bordered)
                //.controlSize(.small)
                //.tint(.purple)
            }
            .foregroundColor(Color("titleColor"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(buttonModel: ButtonModel())
    }
}
