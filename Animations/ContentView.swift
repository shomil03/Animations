//
//  ContentView.swift
//  Animations
//
//  Created by Shomil Singh on 05/09/23.
//

import SwiftUI
struct CornerRotateModifier : ViewModifier {
    let amount : Double
    let anchor : UnitPoint
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount),anchor: anchor)
            .clipped()
    }
}
extension AnyTransition{
    static var pivot : AnyTransition{
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

struct ContentView: View {
    @State private var animationAmount=1.0
    @State private var showinganimation=false
    @State private var enabled = false
    @State private var scaling_factor = 1.0
    @State private var dragAmount = CGSize.zero
    @State private var colour_enabled = false
    @State private var isShowingRed = false
    @State private var isShowingBox = false
    let letters = Array("Hello, X")
    var body: some View {
        VStack {
//           Button("Tap me!!")
//            {
//                animationAmount += 0.25
//            }
//            .padding(30)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Capsule())
//            .scaleEffect(animationAmount)
//            .blur(radius: (animationAmount-1)*1.50)
////            .animation(.default, value: animationAmount)
//            .animation(
//                .easeIn(duration: 3)
//                .repeatCount(3,autoreverses: true)
////                    .repeatForever()
//                .delay(1)
//                , value: animationAmount)
//            .padding()
            
            
//            Button("Tap me!!")
//            {
//                animationAmount=2.0
//                scaling_factor=1.50
//            }
//            .padding(35)
//            .foregroundColor(.yellow)
//            .background(.red)
//            .clipShape(Circle())
//
//            .overlay()
//            {
//                Circle()
//                    .stroke(.red)
//                    .scaleEffect(scaling_factor)
//                    .opacity(2-animationAmount)
//                    .animation(
//                        .easeIn(duration: 3)
//                        .repeatForever(autoreverses: false)
//                        , value: scaling_factor)
//
//
//            }
//            .padding(50)
//            Button("Tap Me")
//            {
//                withAnimation(.interpolatingSpring(stiffness: 10, damping: 1)){
//                    animationAmount+=360
//
//                }
//
//
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundColor(.teal)
//            .clipShape(Capsule())
//            .rotation3DEffect(Angle(degrees: animationAmount), axis: (x:0 ,y:0.5, z:0))
//            .padding()
//            Button("Tap me")
//            {
//
//                enabled.toggle()
//            }
//            .frame(width: 100, height: 100)
//            .background(enabled ? .red : .blue)
//            .foregroundColor(.yellow)
//            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 10))
//            .animation(.easeOut(duration: 3.0), value: enabled)
//            LinearGradient(colors: [.yellow,.red], startPoint: .topLeading, endPoint: .bottomTrailing)
//                .frame(width: 300,height: 200)
//                .clipShape(RoundedRectangle(cornerRadius: 20))
//                .offset(dragAmount)
//                .gesture(
//                    DragGesture()
//                        .onChanged{ dragAmount = $0.translation }
//                        .onEnded{ _ in
//                            withAnimation(.easeIn)
//                            {
//                                dragAmount = .zero
//
//                            }
//                        }
//                )
//                .animation(.spring(), value: dragAmount)
//            HStack(spacing: 0){
////
//                ForEach(0..<letters.count){
//                    Text(String(letters[$0]))
//                        .padding(5)
//
//                        .background(colour_enabled ? .red : .blue)
//
//                        .offset(dragAmount)
//                        .font(.title)
//                        .animation(.easeIn.delay(Double($0)/7), value: dragAmount)
//
//
//                }
//
//
//            }
//            .gesture(
//                DragGesture()
//                    .onChanged{ dragAmount = $0.translation }
//                    .onEnded{ _ in
//                        dragAmount = .zero
//                        colour_enabled.toggle()
//                    }
//                )
//            Button("Tap me")
//            {
//                withAnimation(){
//                    isShowingRed.toggle()
//
//                }
//
//            }
//            if(isShowingRed){
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 200,height: 200)
//                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
//
//
//            }
//
            ZStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: 300, height: 200)
                if isShowingBox{
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 300, height: 200)
                        .transition(.pivot)
                }
                    
            }
            .onTapGesture {
                withAnimation(){
                    isShowingBox.toggle()
                }
            }
            
                
        
            
            

            

        }
        .padding()
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
