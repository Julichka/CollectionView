//
//  Cell.swift
//  CollectionView
//
//  Created by Yuliia Khrupina on 1/29/22.
//

import UIKit

class Cell: UICollectionViewCell {
    
    
    @IBOutlet weak var temperatureImage: UIImageView!
    
    func setTemperatureImage(tempName: String) {
        temperatureImage.image = UIImage(named: tempName)
    }
}
