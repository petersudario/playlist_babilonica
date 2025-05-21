//
//  ContentView.swift
//  playlist_babilonica
//
//  Created by Pedro Henrique Sudario da Silva on 21/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let dataModel = Data()

        ScrollView {
            VStack (spacing: 16){
                Image("edna")
                
                HStack {
                    Image(systemName: "arrow.down.circle.fill")
                        .font(.largeTitle)
                        .bold()
                        .symbolRenderingMode(.monochrome)
                    
                    Image(systemName: "person.fill.badge.plus")
                        .font(.largeTitle)
                        .bold()
                        .symbolRenderingMode(.monochrome)
                    
                    Spacer()
                    
                    Image(systemName: "play.circle.fill")
                        .foregroundColor(Color(.yellow))
                        .font(.largeTitle)
                        .bold()
                        .symbolRenderingMode(.monochrome)
                }
                
                VStack (alignment: .leading, spacing: 14){
                    Text("Playlist babilônica")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Essa playlist é destinada aos Jr. Learners da Apple Dev. Academy.")
                        .foregroundColor(Color.gray)
                    
                }
                
                HStack {
                    Image("edna_2")
                        .resizable()
                        .frame(width: 38, height: 38)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                    
                    Text("Playlist da Edna")
                        .bold()
                    
                    Spacer()
        
                }
                
                VStack (alignment: .leading) {
                    ForEach(dataModel.albuns) { album in
                        HStack {
                            Image(album.albumPhotoName)
                                .resizable()
                                .frame(width: 70, height: 64)
                            VStack (alignment: .leading) {
                                Text("\(album.musicName)")
                                    .font(.headline)
                                    .bold()
                                HStack {
                                    if (album.isExplicit){
                                        Image(systemName: "e.square.fill")
                                    }
                                    Text("\(album.artistName)")
                                        .font(.subheadline)
                                }
                         
                                
                            }
                            Spacer()
                        }
                    }
                }
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
