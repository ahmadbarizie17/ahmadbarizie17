//
//  Home.swift
//  Custom slide parallax
//
//  Created by AHMAD BARIZIE SIROJUL ILMI on 12/5/20.
//

import SwiftUI

struct Home: View {
    @State var selected : Int = 0
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    var body: some View {
        
        TabView(selection: $selected){
            
            //images.....
            
            ForEach(2...14,id: \.self){index in
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                    
                    //geometry reader for parallax effect...
                    
                    GeometryReader{reader in
                        
                        Image("pic\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            //moving view in oppsite side when user starts to swipe
                            //this will create parallax effect...
                            .offset(x: -reader.frame(in: .global).minX)
                            .frame(width: width, height: height / 2)
                            
                    }
                    .frame(height: height / 2)
                    .cornerRadius(15)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    //shadow effect
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: -5)
                    // Decreasing width by padding...
                    // so outer view only decreased...
                    // inner image will be full width...
                    
                    //bottom Image...
                    
                    Image("pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                        .offset(x: -15, y: 25)
            })
                .padding(.horizontal,25)
            
        }
    }
        //page Tab view...
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        
        Home()
        
    }
}

