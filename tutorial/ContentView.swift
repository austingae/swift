//
//  ContentView.swift
//  tutorial
//
//  Created by Austin Gae on 9/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card2"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore = 0

    
    var body: some View {
        ZStack {
            Image("background")
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()

                }
                
                Spacer()
                
                Button(action: {
                    let randomNum = Int.random(in: 2..<15)
                    var cardNum = "card"
                    cardNum.append(String(randomNum))
                    playerCard = cardNum
                    
                    let randomNum2 = Int.random(in: 2..<15)
                    var cardNum2 = "card"
                    cardNum2.append(String(randomNum2))
                    cpuCard = cardNum2
                    
                    
                    if (randomNum > randomNum2) {
                        playerScore = playerScore + 1
                    }
                    else if (randomNum < randomNum2) {
                        cpuScore = cpuScore + 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    VStack {
                        Text("Player")
                        Text(String(playerScore))
                        
                    }
                    VStack {
                        Text("CPU")
                        Text(String(cpuScore))
                    }
                }.foregroundColor(.white)
                
                Spacer()
            }
        }

        
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*

 
A struct stores variables (aka properties) and functions (aka methods).
 Sources: https://www.programiz.com/swift-programming/structs
 
    https://www.waldo.com/blog/swift-struct#:~:text=With%20structs%20in%20Swift%2C%20we,the%20values%20within%20curly%20brackets.
 
    https://www.hackingwithswift.com/read/0/15/structs
 
 https://www.youtube.com/watch?v=F2ojC6TNwws&t=478s By CodeWithChris at 1:44:00
 
 
 
 Background Image on Full Screen:
 https://ix76y.medium.com/space-travel-app-part-1-creating-a-fullscreen-background-image-in-swiftui-beginner-tutorial-ca6f950b3b8
 
 
 @State
 If you want to change a property's value, then you should mark it using @State.
 
 Source:
 https://www.hackingwithswift.com/quick-start/swiftui/how-to-fix-cannot-assign-to-property-self-is-immutable
 */

