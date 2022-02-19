//
//  imageViewController.swift
//  catName
//
//  Created by Umut Cörüt on 14.02.2022.
//

import UIKit

class imageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var catNameLabel: UILabel!
    
    var selectedCatName = ""
    var selectedCatImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        catNameLabel.text = selectedCatName
        imageView.image = selectedCatImage
    }
    

}
