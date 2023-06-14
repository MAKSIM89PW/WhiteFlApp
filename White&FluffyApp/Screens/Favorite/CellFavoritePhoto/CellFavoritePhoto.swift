//
//  CellFavoritePhoto.swift
//  White&FluffyApp
//
//  Created by Максим Нурутдинов on 13.06.2023.
//

import UIKit
import Kingfisher

class CellFavoritePhoto: UITableViewCell {
    
    var viewModel: CellFavoritePhotoViewModelProtocol! {
        didSet {
            self.setup(for: viewModel.photo)
        }
    }    
    
    lazy var nameAuthorLabel: UILabel = {
        let nameAuthorLabel = UILabel(frame: CGRect(x: 120, y: 45, width: self.frame.width - 130, height: 30))
        nameAuthorLabel.font = UIFont(name: customFont.markProRegular.rawValue, size: 20)
        nameAuthorLabel.textColor = .blueCustom
        nameAuthorLabel.textAlignment = .left
        addSubview(nameAuthorLabel)
        return nameAuthorLabel
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 10  
        addSubview(image)
        return image
    }()
    
    private func setup(for photo: Photo) {
        image.kf.indicatorType = .activity
        image.kf.setImage(with: URL(string: photo.urls?.small ?? ""))
        nameAuthorLabel.text = photo.user?.name
    }
}
