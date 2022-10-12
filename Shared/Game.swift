//
//  Game.swift
//  hw2
//
//  Created by henry on 2022/10/13.
//

import SwiftUI

struct Game: View {
    let games=["tetrio", "jstris", "tetris99"]
    @State private var showTetrio=true
    @State private var showingCont = 0
    var body: some View {
        VStack{
            HStack(alignment: .center){
                ForEach(games.indices){
                    idx in Image("\(games[idx])_logo").resizable().scaledToFit()
                        .padding().onTapGesture {
                            showingCont=idx
                        }
                    
                    
                }
            }
            ScrollView{
                if showingCont==0{
                    TetrioCont()
                }else if showingCont==1{
                    JstrisCont()
                }else if showingCont==2{
                    Tetris99Cont()
                }
            }
        }.navigationTitle("遊戲平台")
        
    }
}

struct TetrioCont: View{
    var body: some View{
        VStack{
            HStack{
                Image("tetrio_logo")
                    .resizable().scaledToFit().frame( height:50)
                Text("TETR.IO")
                    .font(.largeTitle)
            }
            .padding()
            Text("基本上有jstris的特性，但有部分但很大的不同：\n1.combo的傷害系統：\n通常聽過的遊戲的combo加傷是固定的，但這款有其特色(稱作multiplier)：")
            Image("tetrio_attack_table").resizable().scaledToFit()
            Text("基本上4w可以說是削弱了很多，連續B2B跟在高combo的4排跟T spin變得很重要\n2.B2B的加傷計算：\n通常B2B的傷害固定為+1或+2，但這款也有很大的不同：\n連續的B2B越多，加成的傷害就越高(基本上是用ln去計算出來何時的等級會提升)\n基本上通常打到的：\nB2Bx1~B2Bx2:+1\nB2Bx3~B2Bx7:+2\nB2Bx8~B2Bx23:+3\nB2Bx24~B2Bx66:+4\nB2Bx67~(目前最高（不修房間設定）是B2Bx100）:+5\n踢牆系統：\n基本上是SRS再增加一些特殊的踢牆\n爬榜系統：\n不像其他平台是看分數決定的，這款是看PR值分等級--從D～X，分17個等級，而且要有rank RD需要降到100或以下，而積分（TR）是看glicko")
            
        }
    }
}
struct JstrisCont: View{
    var body: some View{
        VStack{
            HStack{
                Image("jstris_logo").resizable().scaledToFit().frame( height:50)
                Text("Jstris")
                    .font(.largeTitle)
            }
            
            Text("本身玩起來有點像Tetris friends（我沒玩過但看過），但有一些的不同：\n1.消行不會有延遲(有些房可以自定義（若有則會有IRS跟IHS））\n2.DAS跟ARR沒有最低限制（都可以調到0）\n3.軟降速度可以調整（有分五個等級（最高級是一按就到底））\n4.垃圾行上升沒有延遲\n5.有180度旋轉（但kick很少（似乎沒我不確定））")
            
        }
    }
}
struct Tetris99Cont: View{
    var body: some View{
        VStack{
            HStack{
                Image("tetris99_logo").resizable().scaledToFit().frame( height:50)
                Text("TETRIS99")
                    .font(.largeTitle)
            }
            Text("《俄羅斯方塊Tetris 99》是款Switch平台的Switch Online會員免費遊戲，其玩法是在俄羅斯方塊之上加入了Battle Royale（大逃殺/食雞）元素，一局入面會有99名選手，廝殺到最後生還的就是勝利者。而有別於以往1對1或4打的Tetris，99人大逃殺的玩法就是可以選擇對手攻擊，以及有KO計及搶奪Badges(徽章)，越多Badges攻擊力越高，就同Battle Royale掠奪對手變強一樣。")
            
        }
    }
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Game()
        }
    }
}
