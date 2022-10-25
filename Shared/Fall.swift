//
//  Fall.swift
//  hw2
//
//  Created by User03 on 2022/10/25.
//

import SwiftUI

struct Fall: View {
    let pieces=["piece_t","piece_z","piece_s","piece_i","piece_l","piece_o","piece_j"]
    @State var cur: Int = 0
    @State var cnt: Int=0
    var body: some View {
        VStack{
            Image("\(pieces[cur])")
                .resizable().scaledToFit().frame(height:100).onTapGesture {
                    cur=Int.random(in: 0..<7)
                    cnt=cnt+1
                }
            if cnt>=100{
                Text("恭喜你點擊了\(cnt)下！")
                    .font(.largeTitle)
            }
        }.navigationTitle("體驗區")
    }
}

struct Fall_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Fall()}
    }
}
