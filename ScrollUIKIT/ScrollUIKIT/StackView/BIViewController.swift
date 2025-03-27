//
//  BIViewController.swift
//  ScrollUIKIT
//
//  Created by MacBook Two on 26/03/2025.
//

import UIKit

class BIViewController: UIViewController {

    @IBOutlet weak var fruitStackView: UIStackView!
    let fruits = ["Apple", "Banana", "Cherry", "Grapes", "Mango", "Orange", "Peach", "Strawberry"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayFruitViews()
    }
    
    func displayFruitViews(){
        for (index, label) in fruitStackView.arrangedSubviews.enumerated() {
            if let label = label as? UILabel, index < fruits.count {
                label.text = fruits[index]
            }
        }
    }
}
