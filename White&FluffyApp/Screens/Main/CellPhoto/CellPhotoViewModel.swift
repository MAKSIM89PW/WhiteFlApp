//
//  CellPhotoViewModel.swift
//  White&FluffyApp
//
//  Created by Максим Нурутдинов on 13.06.2023.
//

import Foundation

protocol CellPhotoViewModelProtocol {
    
    var photo: Photo { get }
    
    init(photo: Photo)
}

class CellPhotoViewModel: CellPhotoViewModelProtocol {
    
    let photo: Photo
    
    required init(photo: Photo) {
        self.photo = photo
    }
}
