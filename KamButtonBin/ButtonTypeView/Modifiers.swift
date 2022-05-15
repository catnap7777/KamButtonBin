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
    VStack(spacing: 40) {
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
          //.shadow(color: .pink, radius: 10, x: 25, y: 25) // can have mult. shadows overlaying each other
          .shadow(color: .teal, radius: 35, x: 25, y: 25)
      })
      Button(action: { self.isDisplaying.toggle()}) {
        VStack {
          HStack {
            //Text("Displaying Rotating Button")
            Text("Music Genres")
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
            //              .foregroundColor(isDisplaying != nil? .white : .pink)
              .rotationEffect(isDisplaying ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
              .animation(.easeInOut(duration: 0.5))
              .controlSize(.large)
              .padding(),alignment: .leading
          )
          if isDisplaying {
            List {
              //              Label("Rock", systemImage: "dollarsign.circle.fill")
              HStack {
                Text("Rock")
                  .font(Font.custom("ChalkboardSE-bold", size: 20))
                  .foregroundColor(.blue)
                Text("- AC/DC, Chevelle, Breaking Benjamin")
                  .font(Font.custom("ChalkboardSE", size: 12))
                  .foregroundColor(.gray)
                  .padding(.top, 5)
              }
              HStack {
                Text("Metal")
                  .font(Font.custom("ChalkboardSE-bold", size: 20))
                  .foregroundColor(.blue)
                Text("- Metallica, Slipknot, Spiritbox")
                  .font(Font.custom("ChalkboardSE", size: 12))
                  .foregroundColor(.gray)
                  .padding(.top, 5)
              }
              HStack {
                Text("Pop")
                  .font(Font.custom("ChalkboardSE-bold", size: 20))
                  .foregroundColor(.blue)
                Text("- Taylor Swift, Doja Cat, Ed Sheeran")
                  .font(Font.custom("ChalkboardSE", size: 12))
                  .foregroundColor(.gray)
                  .padding(.top, 5)
              }
              HStack {
                Text("Classical")
                  .font(Font.custom("ChalkboardSE-bold", size: 20))
                  .foregroundColor(.blue)
                Text("- Mozart, Bach, Beethoven")
                  .font(Font.custom("ChalkboardSE", size: 12))
                  .foregroundColor(.gray)
                  .padding(.top, 5)
              }
              HStack {
                Text("Blues")
                  .font(Font.custom("ChalkboardSE-bold", size: 20))
                  .foregroundColor(.blue)
                //Text("- Stevie Ray Vaughan, Etta James, Ray Charles")
                Text("- Stevie Ray Vaughan, Etta James")
                  .font(Font.custom("ChalkboardSE", size: 12))
                  .foregroundColor(.gray)
                  .padding(.top, 5)
              }
              HStack {
                Text("Raggae")
                  .font(Font.custom("ChalkboardSE-bold", size: 20))
                  .foregroundColor(.blue)
                Text("- Bob Marley, Ziggy Marley, Jimmy Cliff")
                  .font(Font.custom("ChalkboardSE", size: 12))
                  .foregroundColor(.gray)
                  .padding(.top, 5)
              }
            }
            .font(Font.custom("ChalkboardSE-bold", size: 12))
            .layoutPriority(isDisplaying ? 0.5 : 1.0)
            .animation(.spring())
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
