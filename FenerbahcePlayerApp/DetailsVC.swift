//
//  DetailsVC.swift
//  FenerbahcePlayerApp
//
//  Created by ferhat taşlı on 31.10.2023.
//

import UIKit

class DetailsVC: UIViewController {

    
    @IBOutlet weak var labelPlayer: UILabel!
    @IBOutlet weak var imagePlayer: UIImageView!
    
    var playerfootballlabel = ""
    var playerfootballimage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPlayer.text = playerfootballlabel
        imagePlayer.image = playerfootballimage
        
        // Do any additional setup after loading the view.
    }
    

}
