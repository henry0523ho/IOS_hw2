//
//  Opener.swift
//  hw2
//
//  Created by User03 on 2022/10/25.
//

import SwiftUI
import AVKit

struct Opener: View {
    let roles = ["TKI", "PCO", "Stickspin"]
    @State private var selectedIndex = 0
    let tki_url=URL(string: "https://henry0523ho.github.io/IOS_DB/TKI_vid.mp4")!
    let stickspin_url=URL(string: "https://henry0523ho.github.io/IOS_DB/Stickspin_vid.mp4")!
    let pco_url=URL(string: "https://henry0523ho.github.io/IOS_DB/PCO_vid.mp4")!
    var body: some View {
        ZStack{
            VStack{
                Picker(selection: $selectedIndex, label: Text("各種開場方式")) {
                        Text(roles[0]).tag(0)
                        Text(roles[1]).tag(1)
                        Text(roles[2]).tag(2)
                }.offset(y:-70)
                Spacer().frame(height: .infinity)
            }
            
            VStack{
                Spacer().frame(height: 70)
                ScrollView{
                    if selectedIndex==0{
                        Text("TKI")
                            .font(.title)
                        Text("TKI")
                        VideoPlayer(player: AVPlayer(url: tki_url)).scaledToFit()
                    }else if selectedIndex==1{
                        Text("PCO")
                            .font(.title)
                            Text("The Perfect Clear Opener is the standard way to get a Perfect Clear (PC) in the first 4 lines of a game (10 dropped pieces). In the first bag, L, J and O pieces form a rectangle and T, S and Z pieces form some kind of trapezoid. I piece is kept on hold, if possible. Then, the player tries to fill the remaining area with the first 4 pieces of the second bag (and potentially the I piece). If I piece is kept on hold throughout first bag, then there is a chance of 84.6 % (711/840) to succeed in theory. If I piece is dropped vertically (I piece forms a 4x4 block together with L, J and O), then there is still a chance of 61.2 % (514/840). If the first Perfect Clear can be executed, then there is a good chance to get another Perfect Clear within the next 2 or 4 lines (provided no garbage lines are received in the meantime).")
                        VideoPlayer(player: AVPlayer(url: pco_url)).scaledToFit()
                        
                    }else if selectedIndex==2{
                        Text("Stickspin")
                            .font(.title)
                        Text("Stickspin is an opener that results in a T-Spin Single in the first bag, a T-Spin Double in the second bag and a T-Spin Triple in the third bag, while preparing another T-Spin slot at the end of the opener. It is similar to SingleYou, but the T-Spin Single is vertical, not horizontal. Like SingleYou, it will work if in the first bag, O comes before S (Z in the mirrored setup) or T. If it is not possible, it is recommended to learn how to do a Perfect clear, a TKI 3 Opening or another Opener along with this. It is invented by stickmancomic.")
                        VideoPlayer(player: AVPlayer(url: stickspin_url)).scaledToFit()
                    }
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(Color("LaunchScreenBg"))
                
            }
            
            
            
            
            
        }.navigationTitle("開場技巧")
    }
}



struct Opener_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView{
            Opener()
            
//        }
    }
}
