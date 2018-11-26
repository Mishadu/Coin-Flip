//
//  ViewController.swift
//  Coin Flip
//
//  Created by Vartotojas on 26/11/2018.
//  Copyright © 2018 Michail Dudelev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var coinImageIndex : Int = 0
    let coinArray = ["coin1", "coin2"]

    @IBOutlet weak var coinImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func flipButton(_ sender: UIButton) {
        coinImageIndex = Int(arc4random_uniform(2))
        
        coinImageView.image = UIImage(named: coinArray[coinImageIndex])
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        coinImageView.image = UIImage(named : "coin3")
    }
}

