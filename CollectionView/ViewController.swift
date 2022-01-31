//
//  ViewController.swift
//  CollectionView
//
//  Created by Yuliia Khrupina on 1/29/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    
    let arrayTemperature = ["temp.green",
    "temp.blackGreen",
    "temp.lightYellow",
    "temp.darkYellow",
    "temp.orange",
    "temp.red" ]
    
    let arraySmiles = ["bad",
    "favorite",
    "hate",
    "notPleasant",
    "routine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView1.delegate = self
        collectionView1.dataSource = self
        
        collectionView2.delegate = self
        collectionView2.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else {return}
        var currentSelectedImage: String!
        
        if collectionView == collectionView1{
            currentSelectedImage = arrayTemperature[indexPath.row]
        } else if collectionView == collectionView2{
            currentSelectedImage = arraySmiles[indexPath.row]
        }
        vc.setImageName(name: currentSelectedImage)
        present(vc, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionView1{
            return arrayTemperature.count
        } else if collectionView == collectionView2{
            return arraySmiles.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
        if collectionView == collectionView1{
            if let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell {
                let imageName1 = arrayTemperature[indexPath.row]
                cell1.setTemperatureImage(tempName: imageName1)
                return cell1
            }
        } else if collectionView == collectionView2{
            if let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
                let imageName2 = arraySmiles[indexPath.row]
                cell2.setSmileImage(smileName: imageName2)
                return cell2
            }
        }
        return UICollectionViewCell()
    }
}


