//
//  ViewController.swift
//  5storyboardsandvc
//
//  Created by Карина Дьячина on 26.12.23.
//

import UIKit

class ViewController: UIViewController {
        
        let data = "Переданная пицца"
        let dataButton = UIButton(type: .system)
        var pizza = Pizza()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        setupButton()
   
        
    }

    func setupButton() {
           dataButton.setTitle("Передать пиццу  на второй экран", for: .normal)
           dataButton.backgroundColor = UIColor.systemPink
           dataButton.layer.cornerRadius = 30
           dataButton.addTarget(self, action: #selector(sendData), for: .touchUpInside)
           dataButton.frame = CGRect(x: Int(UIScreen.main.bounds.size.width/2) - 270/2, y: 200, width: 300, height: 200)
       }
       

    func addSubviews() {
            self.view.addSubview(dataButton)

        }
        
        func setPizza() {
            pizza.name = "Pepperoni"
            pizza.ingredient1 = "cheese"
            pizza.ingredient2 = "pepperoni"
            pizza.ingredient3 = "basement"
        }
    @objc func sendData() {
            let storyboard = UIStoryboard(name: "SecondViewController", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            secondVC.modalPresentationStyle = .fullScreen
        secondVC.data = self.data
        
            
            setPizza()
        secondVC.pizza = self.pizza
            
            present(secondVC, animated: true)
        }

}


