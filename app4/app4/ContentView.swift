//
//  ContentView.swift
//  app4
//
//  Created by Elias Silva on 23/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack (alignment: .leading){
                    // MARK: Check-In
                    Group {
                        HStack {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                            Text("Check-In").font(.title).foregroundColor(Color.blue).padding(.top).textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("- Disable alarm")
                        Text("- Open water")
                        Text("- Open gas")
                        Text("- Install pump")
                        Text("- Install stairs")
                    }
                    // MARK: Check-Out
                    Group {
                        HStack {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                            Text("Check-Out").font(.title).foregroundColor(Color.blue).padding(.top).textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("- Clean module")
                        Text("- Close windows")
                        Text("- Close water")
                        Text("- Close gas")
                        Text("- Store pump")
                        Text("- Store stairs")
                        Text("- Close doors")
                        Text("- Close gate")
                        Text("- Enable alarm")
                    }
                }
                Spacer()
            }
            .padding([.top, .leading])
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
