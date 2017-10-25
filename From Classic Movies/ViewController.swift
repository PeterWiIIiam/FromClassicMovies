//
//  ViewController.swift
//  From Classic Movies
//
//  Created by 何幸宇 on 10/24/17.
//  Copyright © 2017 X. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var entrance: UITextField!
    @IBAction func update(_ sender: UIButton) {
        updateImage { (image) in
            self.imageView.image = image
        }
        getData()
        DELETE()
        if let text = self.entrance.text
        {
            let data = textToData(text: text)
            uploard(data: data)
        }
    }
    func textToData(text: String)->Data{
        let data = text.data(using: .utf8)
        return data!
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }



}

