//
//  Home.swift
//  KamButtonBin
//
//  Created by Karen Mathes on 6/2/22.
//

import SwiftUI

struct Home: View {
    @State var selectedView = 1
    var body: some View {
        VStack{
            Button ("1") {
                selectedView = 1
            }
            .buttonStyle(.bordered)
            .tint(.yellow)
            .foregroundColor(.orange)
            Button ("2") {
                selectedView = 2
            }
            .buttonStyle(.bordered)
            .tint(.green)
            Button ("3") {
                selectedView = 3
            }
            .buttonStyle(.bordered)
            .tint(.indigo)
            Button ("4") {
                selectedView = 4
            }
            .buttonStyle(.bordered)
            .tint(.purple)
            
            TabView (selection: $selectedView){
                Text("One")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("One")
                    }.tag(1)
                    .foregroundColor(.yellow)
                Text("Two")
                    .tabItem {
                        Image(systemName: "hare.fill")
                        Text("Two")
                    }.tag(2)
                    .foregroundColor(.green)
                Text("Three")
                    .tabItem {
                        Image(systemName: "tortoise.fill")
                        Text("Three")
                    }.tag(3)
                    .foregroundColor(.indigo)
                Text("Four")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("Four")
                    }.tag(4)
                    .foregroundColor(.purple)
            }
        }
        Spacer()
        .frame(width: 325, height: 150)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
