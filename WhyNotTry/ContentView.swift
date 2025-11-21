//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Aziz Arfaoui on 21/11/2025.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    @State var selected = "Baseball"
    @State private var id = 1

    
    var body: some View {
        VStack {
            Text("Why not try…")
                .font(.largeTitle.bold())

            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )

                Text("\(selected)!")
                    .font(.title)
            }
            .transition(.slide)
            .id(id)
        }
        
        Spacer()
        
        Button("Try again") {
            withAnimation(.easeInOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
