//
//  ShowImageVC.swift
//  CollectionView
//
//  Created by Yuliia Khrupina on 1/29/22.
//

import UIKit

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentImage.image = UIImage(named: imageName)

        
    }
    
    func setImageName(name: String) {
        imageName = name
    }

}
