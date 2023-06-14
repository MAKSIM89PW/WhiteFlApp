//
//  customColor.swift
//  White&FluffyApp
//
//  Created by Максим Нурутдинов on 13.06.2023.
//

import UIKit

extension UIColor {
    
    private static let missingColor: UIColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    
    public static let whiteCustom = UIColor(named: "whiteCustom") ?? missingColor
    public static let backgroundWhiteCuston = UIColor(named: "backgroundWhiteCuston") ?? missingColor
    public static let blackCustom = UIColor(named: "blackCustom") ?? missingColor
    public static let orangeCustom = UIColor(named: "orangeCustom") ?? missingColor
    public static let blueCustom = UIColor(named: "blueCustom") ?? missingColor
    public static let grayCustom = UIColor(named: "grayCustom") ?? missingColor
}
