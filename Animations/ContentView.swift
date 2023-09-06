//
//  ContentView.swift
//  Animations
//
//  Created by Shomil Singh on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount=1.0
    @State private var showinganimation=false
    @State private var enabled = false
    var body: some View {
        VStack {
//           Button("Tap me!!")
//            {
//                animationAmount += 0.5
//            }
//            .padding(30)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//            .blur(radius: (animationAmount-1)*1.50)
////            .animation(.default, value: animationAmount)
//            .animation(
//                .easeIn(duration: 3)
////                .repeatCount(3,autoreverses: true)
//                    .repeatForever()
//                .delay(1)
//                , value: animationAmount)
//            .padding()
            
            
//            Button("Tap me!!")
//            {
//                animationAmount=2.0
//            }
//            .padding(30)
//            .foregroundColor(.yellow)
//            .background(.red)
//            .clipShape(Circle())
//
//            .overlay()
//            {
//                Circle()
//                    .stroke(.red)
//                    .scaleEffect(animationAmount)
//                    .opacity(2-animationAmount)
//                    .animation(
//                        .easeIn(duration: 3)
//                        .repeatForever(autoreverses: false)
//                        , value: animationAmount)
//
//
//            }
//            .padding()
//            Button("Tap Me")
//            {
//                withAnimation(){
//                    animationAmount+=360
//
//                }
//
//
//            }
//            .padding(35)
//            .background(.red)
//            .foregroundColor(.teal)
//            .clipShape(Circle())
//            .rotation3DEffect(Angle(degrees: animationAmount), axis: (x:0.3 ,y:0.5, z:1))
//            .padding()
            Button("Tap me")
            {
                
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .red : .blue)
            .foregroundColor(.yellow)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.easeOut(duration: 3.0), value: enabled)
            
            
//
        }
        .padding()
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
