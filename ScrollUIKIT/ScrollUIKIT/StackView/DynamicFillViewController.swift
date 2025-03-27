//
//  DynamicFillViewController.swift
//  ScrollUIKIT
//
//  Created by MacBook Two on 27/03/2025.
//

import UIKit

class DynamicFillViewController: UIViewController {
    let items = ["Apple","iphone","ipad","banana","momos","Chilling"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }
    private func setupScrollView() {
       
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        // Constraints for ScrollView
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        // Create Vertical StackView
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.addSubview(stackView)

        // Constraints for StackView
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -40) // Keeps stack width consistent
        ])

        // Add Labels Dynamically
        for item in items {
            let label = UILabel()
            label.text = item
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            label.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
            label.layer.cornerRadius = 8
            label.layer.masksToBounds = true
            label.heightAnchor.constraint(equalToConstant: 200).isActive = true
            stackView.addArrangedSubview(label)
        }
    }
}
