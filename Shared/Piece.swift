//
//  Piece.swift
//  hw2
//
//  Created by User03 on 2022/10/25.
//

import SwiftUI

struct Piece: View {
    let pieces=["piece_t","piece_z","piece_s","piece_i","piece_l","piece_o","piece_j"]
    @State private var currentPage = 0
    var body: some View {
        VStack{
            TabView {
                ForEach(pieces.indices) { idx in
                                Image("\(pieces[idx])")
                                    .resizable()
                                    .scaledToFit()
                            }
                        }.tabViewStyle(PageTabViewStyle()).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }.navigationTitle("方塊圖鑑")
    }
}

struct Piece_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Piece()}
    }
}
