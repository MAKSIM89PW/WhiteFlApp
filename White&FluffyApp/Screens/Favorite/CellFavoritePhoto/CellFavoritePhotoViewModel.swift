//
//  CellFavoritePhotoViewModel.swift
//  White&FluffyApp
//
//  Created by Максим Нурутдинов on 13.06.2023.
//

import Foundation

protocol CellFavoritePhotoViewModelProtocol {
    
    var photo: Photo { get }
    var nameAuthorLabel: String { get }
    
    init(photo: Photo)
}

class CellFavoritePhotoViewModel: CellFavoritePhotoViewModelProtocol {
    
    let photo: Photo
    
    var nameAuthorLabel: String {
        "Author: \(photo.user?.name ?? "no info")"
    }
    
    required init(photo: Photo) {
        self.photo = photo
    }
    
}
