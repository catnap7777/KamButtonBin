//
//  ToggleButtons.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 5/10/22.
//

import SwiftUI

struct ToggleButtons: View {
  @State var isSunnyToday1 = false
  @State var isSunnyToday2 = false
  @State var isLoading = false
  @State var isPlaying = false
  var body: some View {
    VStack(spacing: 55) {
      Text("Toggle Buttons")
        .font(Font.custom("ChalkboardSE-bold", size: 30))
        .foregroundColor(Color("titleColor"))
        .padding(.bottom, 50)
      VStack (spacing: 12) {
        Toggle("Toggle Button", isOn: $isSunnyToday1)
          .toggleStyle(SwitchToggleStyle(tint: .yellow))
          .padding(.horizontal, 100)
        if isSunnyToday1 {
          Label("Sunny Day", systemImage: "sun.max.fill")
            .foregroundColor(.yellow)
            .font(Font.custom("ChalkboardSE-bold", size: 18))
        } else {
          Label("Not a Sunny Day", systemImage: "cloud.fill")
            .foregroundColor(.gray)
            .font(Font.custom("ChalkboardSE-bold", size: 18))
        }
      }
      VStack {
        Toggle(isOn: $isSunnyToday2, label: {
          Image("swift")
            .resizable()
            .frame(width: 50, height: 50, alignment: .center)
        })
        .toggleStyle(.button)
        .tint(.yellow)
        .font(Font.custom("ChalkboardSE-bold", size: 25))
        if isSunnyToday2 {
          Text("Sunny Day!")
            .foregroundColor(.yellow)
            .bold()
        } else {
          Text("Not a Sunny Day!")
            .foregroundColor(.gray)
            .bold()
        }
      }
      Button {
        isLoading.toggle()
      } label: {
        Label("Download", systemImage: "icloud.and.arrow.down.fill")
          .foregroundColor(.white)
          .padding()
          .background(Color.purple)
          .cornerRadius(20)
      }
      .tint(.orange)
      .buttonStyle(ProgressButtonStyle(isLoading: isLoading))
      Button(action: {
        self.isPlaying.toggle()
        print(isPlaying ? "playing" : "paused")
      }) {
        Image(systemName: self.isPlaying == true ? "pause.fill" : "play.fill")
          .resizable()
          .frame(width: 30, height: 30)
          .foregroundColor(.indigo)
      }
      Spacer()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct ProgressButtonStyle: ButtonStyle {
    let isLoading: Bool

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(isLoading ? 0 : 1)
            .overlay {
                if isLoading {
                    ProgressView()
                }
            }
    }
}

struct ToggleButtons_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButtons()
    }
}
