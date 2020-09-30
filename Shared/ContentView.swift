//
//  ContentView.swift
//  Shared
//
//  Created by Tian Tong on 9/30/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "Here we go!",
                       subTitle: "2020 Bizersoft Inc.",
                       desc: "A technical software company, building cool social applications.",
                       back: .blue,
                       textColor: .white)
            
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle)
            
            Image("tian")
                .resizable()
                .frame(width: 80, height: 80)
            
            Text("This text has a rounded rectangle behind it")
                .foregroundColor(Color.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue))
                .padding()
            
            Text("This text has a rounded rectangle behind it")
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .padding()
        }
    }
}

struct HeaderView: View {
    
    var title: String
    var subTitle: String
    var desc: String
    var back: Color
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .background(Color.yellow)
        
        Text(subTitle)
            .foregroundColor(.gray)
            .font(.title)
        
        Text(desc)
            .frame(maxWidth: .infinity)
            .font(.title)
            .foregroundColor(textColor)
            .padding()
            .background(back)
    }
}

struct YellowView: View {
    
    var isYellow = true
    
    var body: some View {
        if isYellow {
            return Color.yellow
        }
        
        return Color.clear
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
