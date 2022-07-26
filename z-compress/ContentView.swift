//
//  ContentView.swift
//  z-compress
//
//  Created by zhio on 2022/7/26.
//

import SwiftUI


struct Submit: View {
    @State private var vibrateOnRing = true
    
    var body: some View {
        VStack {
            Button(action: {
                print("点击button了")
            }){
                Image(systemName: "play.fill")
                Text("开始压缩")
            }
            .font(.title)
            .padding()
            .background(Color.orange)
            .foregroundColor(Color.white)
            .cornerRadius(50)
            .padding(.all, 10)
            .overlay(
            RoundedRectangle(cornerRadius:
                50).stroke(Color.orange, lineWidth: 5)
            )
        }
        
    }
}

struct Conf: View {
    @State private var vibrateOnRing = true
    
    var body: some View {
        VStack {
            Toggle("替换原图", isOn: $vibrateOnRing)
        }
        .toggleStyle(.switch)
        .tint(.orange)
        .padding(50)
    }
}

struct InputImage: View {
    @State private var vibrateOnRing = true
    
    var body: some View {
        VStack {
            Text("拖拽图片至此")
        }
        .frame(width: 200, height: 200)
        .cornerRadius(10)
        .border(Color.orange)
        .padding(10)
    }
}

struct CompressConf: View {
    @State private var vibrateOnRing = true
    
    var body: some View {
        VStack {
            Conf()
            Submit()
        }
        .padding(10)
    }
}

struct ContentView: View {
    var body: some View {
        HStack {
            InputImage()
            CompressConf()
            
        }
        .frame(width: 500, height: 300)
        .background(Color.white)
    
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
