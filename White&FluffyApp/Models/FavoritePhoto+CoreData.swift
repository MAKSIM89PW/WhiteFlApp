//
//  FavoritePhoto+CoreDataProperties.swift
//  White&FluffyApp
//
//  Created by Максим Нурутдинов on 13.06.2023.
//

import Foundation
import CoreData

@objc(FavoritePhotoModel)
public class FavoritePhotoModel: NSManagedObject {}

extension FavoritePhotoModel {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoritePhoto> {
        return NSFetchRequest<FavoritePhoto>(entityName: "FavoritePhotoModel")
    }
    
    @NSManaged public var locationCity: String?
    @NSManaged public var locationCountry: String?
    @NSManaged public var authorName: String?
    @NSManaged public var createdDate: String?
    @NSManaged public var downloads: String?
    @NSManaged public var locationName: String?
    @NSManaged public var idFavoritePhoto: String?
    @NSManaged public var urlImage: String?
    
}

