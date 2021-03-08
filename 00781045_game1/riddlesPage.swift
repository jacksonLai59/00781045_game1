//
//  riddlesPage.swift
//  00781045_game1
//
//  Created by User10 on 2021/3/3.
//

import SwiftUI

var riddles = [
    Riddles(riddle:"三人騎牛，牛無角(打一字)",answer:"奉"),
    Riddles(riddle:"正月沒有初一(打一字)",answer:"肯"),
    Riddles(riddle:"半部春秋(猜一字)",answer:"秦"),
    Riddles(riddle:"馨香飄逝，聞香無門(猜一字)",answer:"聲"),
    Riddles(riddle:"十六兩多一點(猜一字)",answer:"斥"),
    Riddles(riddle:"喝了池中一碗水，又笑又罵又軟腿(猜一食物)",answer:"酒"),
    Riddles(riddle:"骨頭骨腦骨眼睛，骨腳骨手骨背心(猜一動物)",answer:"螃蟹"),
    Riddles(riddle:"兩姐妹，一樣長，酸甜苦辣她先嚐(猜一用品)",answer:"筷子"),
    Riddles(riddle:"弟兄幾十個，分成幾面坐，見到有人來，從你頭上過(猜一用品)",answer:"跳棋"),
    Riddles(riddle:"古怪老漢，肩上挑擔，為人正直，偏心不干(猜一用品)",answer:"天秤"),
    Riddles(riddle:"看看沒有，摸摸倒有，似冰不化，似水不流(猜一用品)",answer:"玻璃"),
    Riddles(riddle:"嘴尖尖，尾巴長，我到南園去偷糧，家裏拋下兒和女，不知回鄉不迴響(猜一動物)",answer:"老鼠"),
    Riddles(riddle:"二三四五六七八九（打一成語)",answer:"缺衣少食"),
    Riddles(riddle:"駝背老公公，鬍子亂蓬蓬。生前沒有血，死後滿身紅(猜一動物)",answer:"蝦"),
    Riddles(riddle:"黑臉包丞相，坐在大堂上。扯起八卦旗，專拿飛天將(猜一動物)",answer:"蜘蛛"),
    Riddles(riddle:"紅關公,白劉備,黑張非走去覓(藏)。(台語)(猜一水果)",answer:"荔枝"),
    Riddles(riddle:"世界最大蜘蛛網",answer:"World Wide Web(WWW)"),
    Riddles(riddle:"羊打電話給老鷹",answer:"陽(羊)奉(Phone)陰(鷹)違(喂)"),
    Riddles(riddle:"小孩不要來(射一諧音成語) ",answer:"不約而同(兒童) "),
    Riddles(riddle:"日復一日(射二十四節氣之一)",answer:"重陽"),
    Riddles(riddle:"頂石合下石，會生根，不會發葉(射一人體器官)",answer:"牙齒"),
    Riddles(riddle:"千隻腳萬隻腳，還是站不了，只能靠牆腳(射一日用品)",answer:"掃把"),
    Riddles(riddle:"舜禪讓給禹(射二十四節氣之一)",answer:"夏至"),
    Riddles(riddle:"關公為什麼死得那麼悽慘？(腦筋急轉彎射一成語)",answer:"紅顏薄命"),
    Riddles(riddle:"有頭有臉沒有足，身軀活像大葫蘆，長弓一把腰間補，歌聲優雅真不俗(射一樂器)",answer:"小提琴"),
    Riddles(riddle:"一隻小船兩頭翹，嫩肉全靠骨頭包(射一食物)",answer:"菱角"),
    Riddles(riddle:"一家分兩院，兩院姐妹多，多的倒比少的少，少的倒比多的多",answer:"算盤"),
    Riddles(riddle:"外表如雪，肚裡一團黑，從來不偷竊，硬說他是賊(射一生物) ",answer:"烏賊")    ]

struct riddlesPage: View {
    
    @State private var number = 1
    @State private var showAlert = false
    @State var riddle1 = riddles.randomElement()!
    
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
                
                Text("\(riddle1.riddle)")
                    .font(.title3)
                    .frame(width: 300, height: 100)
                    .padding()
                    .background(Color(red: 178/255, green: 34/255, blue: 34/255).opacity(0.3))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(red: 178/255, green: 34/255, blue: 34/255), lineWidth: 5))
                
                HStack{
                    //check answer
                    Button(action: {
                        showAlert = true
                    }, label: {
                        Text("看答案")
                            .font(.title3)
                            .padding()
                            .background(Color(red: 255/255, green: 165/255, blue: 0/255).opacity(0.3))
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 255/255, green: 165/255, blue: 0/255), lineWidth: 5))
                    }).alert(isPresented: $showAlert){ () -> Alert in
                        return Alert(title: Text("\(riddle1.answer)"))
                    }
                    .padding()
                    
                    //next riddle button
                    Button(action: {
                        if number < 10{
                            riddle1 = riddles.randomElement()!
                            number = number + 1
                        }
                        else{
                            riddle1 = riddles.randomElement()!
                            number = 1
                        }
                    }, label: {
                        if number < 10{
                            Text("下一題")
                                .font(.title3)
                                .padding()
                                .background(Color(red: 255/255, green: 165/255, blue: 0/255).opacity(0.3))
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(red: 255/255, green: 165/255, blue: 0/255), lineWidth: 5))
                        }
                        else {
                            Text("重新開始")
                                .font(.title3)
                                .padding()
                                .background(Color(red: 255/255, green: 165/255, blue: 0/255).opacity(0.3))
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(red: 255/255, green: 165/255, blue: 0/255), lineWidth: 5))
                        }
                    })
                    .padding()
                }
            }
        }
    }
}

struct riddlesPage_Previews: PreviewProvider {
    static var previews: some View {
        riddlesPage()
    }
}
