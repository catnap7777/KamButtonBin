//
//  ButtonModel.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import Foundation

enum ButtonType: Int
{
    case buttonStyles = 0
    case roundedRectangles = 1
    case capsule = 2
    case destructive = 3
    case controlSize = 4
    case tinted = 5
    case toggled = 6
    case menu = 7
    case modifiers = 8
    case custom = 9
}

struct ButtonItem: Identifiable {
  var id: Int
  var type: ButtonType
  var description: String
  var picture: String
}

//let testButton = ButtonItem(
//  id: 1,
//  type: "Button Style",
//  description: "New button styles introduced in iOS15",
//  picture: "buttonstyles")

struct ButtonModel {
  var buttons: [ButtonItem] = [
    ButtonItem(
      id: 0,
      type: .buttonStyles,
      description: "New button styles introduced in iOS15",
      picture: "buttonstyles"),
    ButtonItem(
      id: 1,
      type: .roundedRectangles,
      description: "Rounded rectangle buttons are easy to create using the .buttonBorderShape modifier along with a radius for the corner such as .buttonBorderShape(.roundedRectangle(radius: 15)).",
      picture: "roundedrectangle"),
    ButtonItem(
      id: 2,
      type: .capsule,
      description: "Capsule buttons are easily created using the .buttonBorderShape(.capsule) modifier. Other modifiers such as .buttonSyle, .tint, and .controlSize can also be used to further style the button.",
      picture: "capsule"),
    ButtonItem(
      id: 3,
      type: .destructive,
      description: "Destructive buttons are easily defined by using the role: parameter when defining the button such as Button(role: .destructive). The .buttonSyle, .buttonborderShape, and .tint modifiers can also be used to further style the button.",
      picture: "destructive"),
    ButtonItem(
      id: 4,
      type: .controlSize,
      description: "Small, regular, and large sized buttons are easily defined by using the .controlSize modifier. The .buttonSyle and .buttonborderShape modifiers can also be used to further style the button.",
      picture: "controlsize"),
    ButtonItem(
      id: 5,
      type: .tinted,
      description: "Tinted buttons can be created by using the .tint modifier.  The color for the tint is used for the button text and the background is the same color but with 50% opacity.",
      picture: "tinted"),
    ButtonItem(
      id: 6,
      type: .toggled,
      description: "Toggle buttons can be used in a variety of ways. They allow the user to make a choice between various options",
      picture: "toggle"),
    ButtonItem(
      id: 7,
      type: .menu,
      description: "Menu buttons allow the user to choose an option based on a menu of choices that pops up. ",
      picture: "menu"),
    ButtonItem(
      id: 8,
      type: .modifiers,
      description: "There are many other modifiers that can be used with buttons such as .clipShape, .overlay, .shadow, .animation, and .rotationEffect to name a few.",
      picture: "modifiers"),
    ButtonItem(
      id: 9,
      type: .custom,
      description: "Custom buttons using different color gradients and other options are easily defined by creating a custom Class of type ButtonStyle that returns a view that's created by calling the makeBody function that sets up a custom configuration for the button.",
      picture: "custom")
  ]
}
