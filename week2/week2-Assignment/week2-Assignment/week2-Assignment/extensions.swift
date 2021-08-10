//
//  extensions.swift
//  week2-Assignment
//
//  Created by 林希語 on 2021/8/9.
//

import Foundation

import UIKit

extension UIColor {
    
    static let mainColorKeyLime = UIColor().colorFromHex("d9ed92")
    static let color1YellowGreen = UIColor().colorFromHex("b5e48c")
    static let color2GrannySmithApple = UIColor().colorFromHex("99d98c")
    static let color3Keppel = UIColor().colorFromHex("52B69A")
    static let color4BlueMunsell = UIColor().colorFromHex("168AAD")
    static let color5CeladonBlue = UIColor().colorFromHex("1A759F")
    static let color6YaleBlue = UIColor().colorFromHex("184E77")
    
    
    func colorFromHex(_ hex : String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.black
        }
        var rgb :UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)
        
        return UIColor .init(red: CGFloat((rgb & 0xff0000) >> 16) / 255.0,
                             green: CGFloat((rgb & 0x00ff00) >> 8) / 255.0,
                             blue: CGFloat(rgb & 0x0000ff) / 255.0,
                                           alpha: 1.0)
    }
}




