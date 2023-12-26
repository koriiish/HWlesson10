//
//  SecondViewController.swift
//  5storyboardsandvc
//
//  Created by Карина Дьячина on 26.12.23.
//

import UIKit

class SecondViewController: UIViewController {
    var data: String?
    var pizza = Pizza()
    let dataButton = UIButton(type: .system)
    let pizzaLabel = UILabel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        setupButton()
        setupPizza()
    }
    
    func setupButton() {
            dataButton.setTitle("Передать пиццу на третий экран", for: .normal)
            dataButton.backgroundColor = UIColor.systemBlue
            dataButton.layer.cornerRadius = 20
            dataButton.addTarget(self, action: #selector(sendData), for: .touchUpInside)
            dataButton.frame = CGRect(x: Int(UIScreen.main.bounds.size.width/2) - 270/2, y: 200, width: 300, height: 200)
        }
        
        func setupPizza() {
            pizzaLabel.textColor = UIColor.black
            pizzaLabel.frame = CGRect(x: Int(UIScreen.main.bounds.size.width/2) - 200/2, y: Int(dataButton.frame.maxY) + 20, width: 200, height: 120)
            pizzaLabel.numberOfLines = 4
            pizzaLabel.text = "Pizza: \(pizza.name ?? "No pizza name"), \(pizza.ingredient1 ?? "No pizza ingredient1"), \(pizza.ingredient2 ?? "No pizza ingredient2"), \(pizza.ingredient3 ?? "No pizza ingredient3") "
        }
        
    func addSubviews() {
            self.view.addSubview(dataButton)
            self.view.addSubview(pizzaLabel)
        }
        
        @objc func sendData() {
            let storyboard = UIStoryboard(name: "ThirdViewController", bundle: nil)
            let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            thirdVC.modalPresentationStyle = .fullScreen
            thirdVC.data = self.data
           
            
            present(thirdVC, animated: true)
        }
}
