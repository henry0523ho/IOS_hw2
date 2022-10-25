//
//  Info.swift
//  hw2
//
//  Created by User03 on 2022/10/25.
//

import SwiftUI

struct Info: View {
    var body: some View {
        ZStack{
            VStack{
                Text("作者：henry0523ho")
            }
        }.navigationTitle("其他資訊")
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Info()}
    }
}
