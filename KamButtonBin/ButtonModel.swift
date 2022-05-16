//
//  ButtonModel.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import Foundation

struct ButtonItem: Identifiable {
  var id: Int
  var type: String
  var description: String
  var picture: String
}

let testButton = ButtonItem(
  id: 1,
  type: "Button Style",
  description: "New button styles introduced in iOS15",
  picture: "buttonstyles")

struct ButtonModel {
  var buttons: [ButtonItem] = [
    ButtonItem(
      id: 0,
      type: "Button Styles",
      description: "New button styles introduced in iOS15",
      picture: "buttonstyles"),
    ButtonItem(
      id: 1,
      type: "Rounded Rectangle Buttons",
      description: "Regular rectangles are so basic...",
      picture: "roundedrectangle"),
    ButtonItem(
      id: 2,
      type: "Capsule Buttons",
      description: "Smooth and easy ovals...",
      picture: "capsule"),
    ButtonItem(
      id: 3,
      type: "Destructive Buttons",
      description: "Take out the trash buttons...",
      picture: "destructive"),
    ButtonItem(
      id: 4,
      type: "Control Size",
      description: "Large, medium, and small... \nthey've got it all...",
      picture: "controlsize"),
    ButtonItem(
      id: 5,
      type: "Tinted Buttons",
      description: "Color me happy with tints...",
      picture: "tinted"),
    ButtonItem(
      id: 6,
      type: "Toggle Buttons",
      description: "Make a choice already...",
      picture: "toggle"),
    ButtonItem(
      id: 7,
      type: "Pop-up Menu Buttons",
      description: "Waiter, I'll take this one...",
      picture: "menu"),
    ButtonItem(
      id: 8,
      type: "SwiftUI Modifiers",
      description: "Making life easier for developers everywhere...",
      picture: "modifiers"),
    ButtonItem(
      id: 9,
      type: "Custom Buttons",
      description: "Design 'em yourself...",
      picture: "custom")
  ]
}
