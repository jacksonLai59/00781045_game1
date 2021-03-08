//
//  riddlesPage2.swift
//  00781045_game1
//
//  Created by User02 on 2021/3/8.
//

import SwiftUI

var riddles2 = [
    Riddles2(riddle:"三人騎牛，牛無角(打一字)",answer:"奉", pick: ["秦","奉","春"]),
    Riddles2(riddle:"正月沒有初一(打一字)",answer:"肯", pick: ["肯","背","脊"]),
    Riddles2(riddle:"半部春秋(猜一字)",answer:"秦", pick: ["秦","奉","春"]),
    Riddles2(riddle:"馨香飄逝，聞香無門(猜一字)",answer:"聲", pick: ["聲","馨","磬"]),
    Riddles2(riddle:"十六兩多一點(猜一字)",answer:"斥", pick: ["叉","令","斥"]),
    Riddles2(riddle:"喝了池中一碗水，又笑又罵又軟腿(猜一食物)",answer:"酒", pick: ["酒","茶","水"]),
    Riddles2(riddle:"骨頭骨腦骨眼睛，骨腳骨手骨背心(猜一動物)",answer:"螃蟹", pick: ["青蛙","螃蟹","鮭魚"]),
    Riddles2(riddle:"兩姐妹，一樣長，酸甜苦辣她先嚐(猜一用品)",answer:"筷子", pick: ["攪拌棒","叉子","筷子"]),
    Riddles2(riddle:"弟兄幾十個，分成幾面坐，見到有人來，從你頭上過(猜一用品)",answer:"跳棋", pick: ["跳棋","飛機","帽子"]),
    Riddles2(riddle:"古怪老漢，肩上挑擔，為人正直，偏心不干(猜一用品)",answer:"天秤", pick: ["扁擔","天秤","轎子"]),
    Riddles2(riddle:"看看沒有，摸摸倒有，似冰不化，似水不流(猜一用品)",answer:"玻璃", pick: ["玻璃","仙草","愛玉"]),
    Riddles2(riddle:"嘴尖尖，尾巴長，我到南園去偷糧，家裏拋下兒和女，不知回鄉不迴響(猜一動物)",answer:"老鼠", pick: ["老鼠","燕子","鮭魚"]),
    Riddles2(riddle:"二三四五六七八九（打一成語)",answer:"缺衣少食", pick: ["十全十美","缺衣少食","一字千金"]),
    Riddles2(riddle:"駝背老公公，鬍子亂蓬蓬。生前沒有血，死後滿身紅(猜一動物)",answer:"蝦", pick: ["雞","蝦","豬"]),
    Riddles2(riddle:"黑臉包丞相，坐在大堂上。扯起八卦旗，專拿飛天將(猜一動物)",answer:"蜘蛛", pick: ["寄居蟹","貓頭鷹","蜘蛛"]),
    Riddles2(riddle:"紅關公,白劉備,黑張非走去覓(藏)。(台語)(猜一水果)",answer:"荔枝", pick: ["荔枝","龍眼","葡萄"]),
    Riddles2(riddle:"羊打電話給老鷹",answer:"陽奉陰違", pick: ["揚眉吐氣","陽奉陰違","水性楊花"]),
    Riddles2(riddle:"小孩不要來(射一諧音成語) ",answer:"不約而同 ", pick: ["不約而同","同心協力","童心未泯"]),
    Riddles2(riddle:"日復一日(射二十四節氣之一)",answer:"重陽", pick: ["驚蟄","重陽","夏至"]),
    Riddles2(riddle:"頂石合下石，會生根，不會發葉(射一人體器官)",answer:"牙齒", pick: ["眼睛","耳朵","牙齒"]),
    Riddles2(riddle:"千隻腳萬隻腳，還是站不了，只能靠牆腳(射一日用品)",answer:"掃把", pick: ["掃把","蜘蛛","毛筆"]),
    Riddles2(riddle:"舜禪讓給禹(射二十四節氣之一)",answer:"夏至", pick: ["驚蟄","重陽","夏至"]),
    Riddles2(riddle:"關公為什麼死得那麼悽慘？(腦筋急轉彎射一成語)",answer:"紅顏薄命", pick: ["紅顏薄命","紅杏出牆","日薄西山"]),
    Riddles2(riddle:"有頭有臉沒有足，身軀活像大葫蘆，長弓一把腰間補，歌聲優雅真不俗(射一樂器)",answer:"小提琴", pick: ["小提琴","琵琶","二胡"]),
    Riddles2(riddle:"一隻小船兩頭翹，嫩肉全靠骨頭包(射一食物)",answer:"菱角", pick: ["開心果","菱角","花生"]),
    Riddles2(riddle:"一家分兩院，兩院姐妹多，多的倒比少的少，少的倒比多的多",answer:"算盤", pick: ["算盤","珍珠","門簾"]),
    Riddles2(riddle:"外表如雪，肚裡一團黑，從來不偷竊，硬說他是賊(射一生物) ",answer:"烏賊", pick: ["烏賊","河豚","海豚"])    ]

struct riddlesPage2: View {
    
    @State private var score = 0
    @State private var number = 1
    @State private var show = false
    @State private var show2 = false
    @State var riddle2 = riddles2.randomElement()!
    
    var body: some View {
        ZStack{
            //background
            Image("background2")
                .resizable()
                .scaledToFill()
                .navigationBarTitleDisplayMode(.inline)
            VStack{
                Text("第\(number)題")
                    .font(.largeTitle)
                    .padding()
                
                //riddles
                Text("\(riddle2.riddle)")
                    .font(.title3)
                    .frame(width: 300, height: 100)
                    .padding()
                    .background(Color(red: 178/255, green: 34/255, blue: 34/255).opacity(0.3))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(red: 178/255, green: 34/255, blue: 34/255), lineWidth: 5))
                    .padding()
                //answers 1
                Button(action: {
                    if riddle2.pick[0] == riddle2.answer{
                        score = score + 10
                    }
                    if number < 10{
                        riddle2 = riddles2.randomElement()!
                        number = number + 1
                    }
                    else{
                        show = true
                        show2 = true
                    }
                }, label: {
                    Text("\(riddle2.pick[0])")
                        .font(.title3)
                        .frame(width: 300, height: 20)
                        .padding()
                        .background(Color(red: 255/255, green: 165/255, blue: 0/255).opacity(0.3))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(red: 255/255, green: 165/255, blue: 0/255), lineWidth: 5))
                })
                //answers 2
                Button(action: {
                    if riddle2.pick[1] == riddle2.answer{
                        score = score + 10
                    }
                    if number < 10{
                        riddle2 = riddles2.randomElement()!
                        number = number + 1
                    }
                    else{
                        show = true
                        show2 = true
                    }
                }, label: {
                    Text("\(riddle2.pick[1])")
                        .font(.title3)
                        .frame(width: 300, height: 20)
                        .padding()
                        .background(Color(red: 255/255, green: 165/255, blue: 0/255).opacity(0.3))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(red: 255/255, green: 165/255, blue: 0/255), lineWidth: 5))
                })
                //answers 3
                Button(action: {
                    if riddle2.pick[2] == riddle2.answer{
                        score = score + 10
                    }
                    if number < 10{
                        riddle2 = riddles2.randomElement()!
                        number = number + 1
                    }
                    else{
                        show = true
                        show2 = true
                    }
                }, label: {
                    Text("\(riddle2.pick[2])")
                        .font(.title3)
                        .frame(width: 300, height: 20)
                        .padding()
                        .background(Color(red: 255/255, green: 165/255, blue: 0/255).opacity(0.3))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(red: 255/255, green: 165/255, blue: 0/255), lineWidth: 5))
                })
//                Text("\(score)")
                //start over button
                if show2{
                    Button(action: {
                        riddle2 = riddles2.randomElement()!
                        number = 1
                        score = 0
                        show2 = false
                    }, label: {
                        
                        Text("重新開始")
                            .font(.title3)
                            .padding()
                            .background(Color(red: 255/255, green: 165/255, blue: 0/255).opacity(0.3))
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 255/255, green: 165/255, blue: 0/255), lineWidth: 5))
                    })
                    .padding()
                }
            }
            .sheet(isPresented: $show){ scoreView(score: $score) }
           
        }
    }
}


struct riddlesPage2_Previews: PreviewProvider {
    static var previews: some View {
        riddlesPage2()
    }
}
