//
//  FifthViewController.swift
//  5storyboardsandvc
//
//  Created by Карина Дьячина on 26.12.23.
//

import UIKit
class FifthViewController: UIViewController {
    var data: String?
    var pizza = Pizza()
    let dataLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        setupDataLabel()
        
    }
   
       
       func setupDataLabel() {
           dataLabel.textColor = UIColor.black
           dataLabel.frame = CGRect(x: Int(UIScreen.main.bounds.size.width/2) - 170/2, y: 200, width: 170, height: 60)
           dataLabel.text = data
       }
       
       func addSubviews() {
           view.addSubview(dataLabel)
       }
}
