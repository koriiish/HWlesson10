//
//  ForthViewController.swift
//  5storyboardsandvc
//
//  Created by Карина Дьячина on 26.12.23.
//

import UIKit
class ForthViewController: UIViewController {
    var data: String?
    var pizza = Pizza()
    let dataButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        setupButton()
        
    }
    func setupButton() {
            dataButton.setTitle("Передать пиццу на пятый экран", for: .normal)
            dataButton.backgroundColor = UIColor.systemGray6
            dataButton.layer.cornerRadius = 20
            dataButton.addTarget(self, action: #selector(sendData), for: .touchUpInside)
            dataButton.frame = CGRect(x: Int(UIScreen.main.bounds.size.width/2) - 270/2, y: 200, width: 270, height: 60)
        }
        
        
        func addSubviews() {
            self.view.addSubview(dataButton)
        }
    @objc func sendData() {
            let storyboard = UIStoryboard(name: "FifthViewController", bundle: nil)
            let fifthVC = storyboard.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
            fifthVC.modalPresentationStyle = .fullScreen
            fifthVC.data = self.data
           
            
            present(fifthVC, animated: true)
        }

}
    
