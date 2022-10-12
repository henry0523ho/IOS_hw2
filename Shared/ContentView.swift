//
//  ContentView.swift
//  Shared
//
//  Created by henry on 2022/10/5.
//

import SwiftUI

struct ContentView: View {
    @State private var name=2;
    @State private var posX=100;
    @State private var posY=100;
    @State private var show=false;
    var body: some View {
        VStack{
            Image(systemName: "die.face.\(name).fill")
                .resizable()
                .scaledToFit()
                .frame(width:200,height: 200)
                .position(x:100 ,y:100)
                .onTapGesture {
                    name=Int.random(in: 1...6)
                    posX=Int.random(in: 100...1000)
                    posY=Int.random(in: 100...1000)
                }
            if show {
                Image(systemName: "clock")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200,height: 200)
                    .transition(.opacity)
                
            }
        }.onAppear{
            withAnimation(.easeInOut(duration:5)){
                show=true
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
