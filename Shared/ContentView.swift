//
//  ContentView.swift
//  Shared
//
//  Created by henry on 2022/10/5.
//

import SwiftUI

struct ContentView: View {
    let names=[
        "name1","name2","name3"
    ]
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    NavigationLink(
                        destination: Game(),
                        label: {
                            Text("遊戲平台").padding(.horizontal).frame(maxWidth: .infinity ).font(Font.system(size:  50)).foregroundColor(Color(red: 1, green: 0.5, blue: 0.5 )).background(Color(red:0.4, green:0.1, blue: 0.1))
                        }
                    )
                    Spacer().frame(height:10)
                    NavigationLink(
                        destination: Game(),
                        label: {
                            Text("Game").padding(.horizontal).frame(maxWidth: .infinity ).font(Font.system(size:  50)).foregroundColor(Color(red: 1, green: 0.5, blue: 1 )).background(Color(red:0.4, green:0.1, blue: 0.4))
                        }
                    )
                    Spacer().frame(height:10)
                    NavigationLink(
                        destination: Game(),
                        label: {
                            Text("Game").padding(.horizontal).frame(maxWidth: .infinity ).font(Font.system(size:  50)).foregroundColor(Color(red: 0.5, green: 1, blue: 0.5 )).background(Color(red:0.1, green:0.4, blue: 0.1))
                        }
                    )
                    Spacer().frame(height:10)
                    NavigationLink(
                        destination: Game(),
                        label: {
                            Text("Game").padding(.horizontal).frame(maxWidth: .infinity ).font(Font.system(size:  50)).foregroundColor(Color(red: 0.5, green: 0.5, blue: 1 )).background(Color(red:0.1, green:0.1, blue: 0.4))
                        }
                    )
                    Spacer().frame(height:10)
                    NavigationLink(
                        destination: Game(),
                        label: {
                            Text("Game").padding(.horizontal).frame(maxWidth: .infinity ).font(Font.system(size:  50)).foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7 )).background(Color(red:0.3, green:0.3, blue: 0.3))
                        }
                    )
                }.padding(.horizontal).navigationTitle("俄羅斯方塊")
            }
            
        }
    }
}

//struct PageIcon: View{
//    let name:String
//    var body: some View{
//
//
//    }
//
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .colorScheme(.dark)
    }
}
