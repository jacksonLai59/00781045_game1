//
//  homepage.swift
//  00781045_game1
//
//  Created by User10 on 2021/3/3.
//

import SwiftUI

struct homepage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .navigationBarTitleDisplayMode(.inline)
                
                VStack{
                    Text("猜燈謎")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 255/255, green: 215/255, blue: 0/255))
                    
                    NavigationLink(
                        destination: riddlesPage(),
                        label: {
                            Text("   猜燈謎自由心證版   ")
                                .fontWeight(.bold)
                                .font(.title)
                                .padding()
                                .background(Color(red: 255/255, green: 215/255, blue: 0/255))
                                .cornerRadius(40)
                                .foregroundColor(Color.black)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color(red: 255/255, green: 215/255, blue: 0/255), lineWidth: 5))
                        })
                        .padding()
                    NavigationLink(
                        destination: riddlesPage2(),
                        label: {
                            Text("    猜燈謎選擇題版    ")
                                .fontWeight(.bold)
                                .font(.title)
                                .padding()
                                .background(Color(red: 255/255, green: 215/255, blue: 0/255))
                                .cornerRadius(40)
                                .foregroundColor(Color.black)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color(red: 255/255, green: 215/255, blue: 0/255), lineWidth: 5))
                        })
                        .padding()
                }
            }
        }
    }
}

struct homepage_Previews: PreviewProvider {
    static var previews: some View {
        homepage()
    }
}
