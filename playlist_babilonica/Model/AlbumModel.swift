//
//  AlbumModel.swift
//  playlist_babilonica
//
//  Created by Pedro Henrique Sudario da Silva on 21/05/25.
//

import Foundation

struct Album: Identifiable {
    
    let id = UUID()
    let artistName: String
    let musicName: String
    let albumPhotoName: String
    let isExplicit: Bool
    
    
}
