//
//  MyCell.swift
//  OnboardingExample
//
//  Created by Ally Tiang on 11/18/18.
//  Copyright © 2018 Anitaa. All rights reserved.
//

import Foundation
import UIKit

class CellData {
    
    var image: UIImage
    var title: String
    
    init(image: UIImage, title: String) {
        self.image = image
        self.title = title
    }
}

class MyCell: UITableViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(data: CellData) {
        videoImageView.image = data.image
        videoTitleLabel.text = data.title
    }
    
}
