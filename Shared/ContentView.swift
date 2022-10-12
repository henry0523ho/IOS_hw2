//
//  ContentView.swift
//  Shared
//
//  Created by henry on 2022/10/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Text("hello")
                    PageIcon(name:"hi", img:"fuck")
                }.navigationTitle("俄羅斯方塊")
            }
            
        }
    }
}

struct PageIcon: View{
    let name:String
    let img:String
    var body: some View{
        VStack{
            Text(name)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
