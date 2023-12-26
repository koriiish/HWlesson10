//
//  ThirdViewController.swift
//  5storyboardsandvc
//
//  Created by Карина Дьячина on 26.12.23.
//

import UIKit
class ThirdViewController: UIViewController {
    var data: String?
    var pizza = Pizza()
    let dataButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        setupButton()
               
    }
    func setupButton() {
           dataButton.setTitle("Передать пиццу на четвёртый экран", for: .normal)
           dataButton.backgroundColor = UIColor.systemPurple
           dataButton.layer.cornerRadius = 20
           dataButton.addTarget(self, action: #selector(sendData), for: .touchUpInside)
           dataButton.frame = CGRect(x: Int(UIScreen.main.bounds.size.width/2) - 290/2, y: 200, width: 290, height: 60)
       }
       
       
       func addSubviews() {
           self.view.addSubview(dataButton)
       }
    @objc func sendData() {
           let storyboard = UIStoryboard(name: "FourthViewController", bundle: nil)
           let forthVC = storyboard.instantiateViewController(withIdentifier: "ForthViewController") as! ForthViewController
        forthVC.modalPresentationStyle = .fullScreen
        forthVC.data = self.data
           
           
           present(forthVC, animated: true)
       }

}
