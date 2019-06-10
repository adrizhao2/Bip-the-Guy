//
//  ViewController.swift
//  Bip the Guy
//
//  Created by Adrianna Zhao on 6/10/19.
//  Copyright © 2019 Adrianna Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be created.
    }
    
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        // shrink our image by 60 pixels
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue,
                                          y: self.imageToPunch.bounds.origin.y + shrinkValue,
                                          width: self.imageToPunch.bounds.size.width - shrinkValue,
                                          height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: {self.imageToPunch.bounds = bounds}, completion: nil)
    }

    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
    }
}

