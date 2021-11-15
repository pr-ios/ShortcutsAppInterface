//
//  ContentView.swift
//  ShortcutsApp
//
//  Created by Abdullah AlRashoudi on 11/15/21.
//

import SwiftUI

struct ContentView: View {
    @State var texty: String = ""
    let columns = [
    
        GridItem(.flexible(minimum: 50, maximum: 200)),
        GridItem(.flexible(minimum: 50, maximum: 200))
      ]
    
  
    var body: some View {
        NavigationView {
        ScrollView {
             
               
                 LazyVGrid(columns: columns, spacing: 20) {
                     
                     ExtractedView(shortcutName: "Twitter Downloader", numberOfAction: "3 actions", image: Image(systemName: "arrow.down.square.fill"), myColor: .blue)
                       
                     ExtractedView(shortcutName: "Instagram Downloader", numberOfAction: "7 actions", image: Image(systemName: "arrow.down.square.fill"), myColor: .red)
                     
                     ExtractedView(shortcutName: "myLocation", numberOfAction: "15 actions", image: Image(systemName: "location.circle"), myColor: .yellow)

                     ExtractedView(shortcutName: "فتح واتساب", numberOfAction: "20 actions", image: Image(systemName: "message"), myColor: .green)
                 }
       
             }
        .searchable(text: $texty)
        .navigationTitle("All Shortcuts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    
    @State var shortcutName: String = ""
    @State var numberOfAction: String = ""
    @State var image: Image
    @State var myColor: Color
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                
               image
                    .foregroundColor(.white)
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        
                        .foregroundColor(.white)
                        
                }
            }.padding(.horizontal)
            
            Group{
                Text(shortcutName)
                    .fontWeight(.bold)
                    .padding(.top, 12)
                   
                Text(numberOfAction)
                    .font(.footnote)
                
            }.padding(.leading)
                .foregroundColor(.white)
            
            
            
        }.frame(width: 165, height: 100, alignment: .center)
        
            .background(myColor).cornerRadius(15)
    }
}
