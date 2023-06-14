//
//  MainScreachCell.swift
//  White&FluffyApp
//
//  Created by Максим Нурутдинов on 13.06.2023.
//

import UIKit
import Kingfisher

class CellPhoto: UICollectionViewCell {
    
    var viewModel: CellPhotoViewModelProtocol! {
        didSet {
            setup(for: viewModel.photo)
        }
    }
    
    private lazy var image: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 10        
        addSubview(image)
        return image
    }()
    
    private func setup(for photo: Photo) {
        image.kf.indicatorType = .activity
        image.kf.setImage(with: URL(string: photo.urls?.small ?? ""))
    }
}

