//
//  scoreView.swift
//  00781045_game1
//
//  Created by User02 on 2021/3/8.
//

import SwiftUI

struct scoreView: View {
    @Binding var score:Int
    var body: some View {
        ZStack{
            Image("background3")
                .resizable()
                .scaledToFill()
            VStack{
                Text("總分：\(score)")
                    .font(.title)
                if score >= 80{
                    Text("答對了 8 題以上，表現不錯")
                        .font(.title3)
                        .padding()
                }
                else if score >= 60{
                    Text("差強人意，再接再厲")
                        .font(.title3)
                        .padding()
                }
                else if score <= 30{
                    Text("我大膽猜測你是外國人！")
                        .font(.title3)
                        .padding()
                }
                else {
                    Text("你可能要再加點油！")
                        .font(.title3)
                        .padding()
                }
            }
        }
    }
}

