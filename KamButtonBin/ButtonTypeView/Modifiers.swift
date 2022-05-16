//
//  Modifiers.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct Modifiers: View {
  @State var isDisplaying = false
  var body: some View {
    VStack(spacing: 35) {
      Text("More Modifiers")
        .font(Font.custom("ChalkboardSE-bold", size: 30))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 15)
      Button(action: {}, label: {
        Label("More Modifiers", systemImage: "applelogo")
          .padding(.all, 20)
          .foregroundColor(.white)
          .background(Color(.red))
          .clipShape(RoundedRectangle(cornerRadius: 20))
          .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 5))
      })
      Button(action: {}, label: {
        Image("swift")
          .resizable()
          .frame(width: 100, height: 100)
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.purple, lineWidth: 5))
          .shadow(color: .teal, radius: 55, x: 25, y: 25)
      })
      Button {
        self.isDisplaying.toggle()
      } label: {
        VStack {
          HStack {
            Text("Displaying Rotating Button")
              .font(Font.custom("ChalkboardSE-bold", size: 18))
              .frame(width: 325, height: 45, alignment: .trailing)
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
            List {
              Text("Cat")
              Text("Dog")
              Text("Bunny")
            }
            .layoutPriority(isDisplaying ? 0.5 : 1.0)
            .animation(.spring(), value: 0.0)
            Spacer()
          }
        }
      }
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct Modifiers_Previews: PreviewProvider {
  static var previews: some View {
    Modifiers()
  }
}
