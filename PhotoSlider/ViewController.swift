//
//  ViewController.swift
//  PhotoSlider
//
//  Created by YeouTimothy on 2016/6/14.
//  Copyright © 2016年 YeouTimothy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var indexNow = 0
    @IBAction func swipeLeft(sender: AnyObject) {
        if indexNow == 0{
            indexNow = 10
            imageView.image = UIImage(named: imageName[indexNow])
        }else{
            indexNow -= 1
            imageView.image = UIImage(named: imageName[indexNow])
        }
        
    }
    @IBAction func swipeRight(sender: AnyObject) {
        if indexNow == 10{
            indexNow = 0
            imageView.image = UIImage(named: imageName[indexNow])
        }else{
            indexNow += 1
            imageView.image = UIImage(named: imageName[indexNow])
        }

        
    }
    let imageName = ["blonde_excited bliss","blonde_excited tears", "blonde_excited", "blonde_facepalm", "blonde_fake smile", "blonde_forever alone", "blonde_freddie", "blonde_fuck that bitch", "blonde_fuck yeah", "blonde_gasp"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

