//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Andy on 9/16/19.
//  Copyright © 2019 Andy Almanza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballImages : [String] = ["ball1","ball2","ball3","ball4","ball5"]
    var randBallNum = 0
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        newBallImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randBallNum = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballImages[randBallNum])
    }
    


}

