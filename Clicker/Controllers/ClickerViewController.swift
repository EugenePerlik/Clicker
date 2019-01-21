//
//  ViewController.swift
//  Clicker
//
//  Created by Евгений on 20/01/2019.
//  Copyright © 2019 Evgeniy. All rights reserved.

import UIKit

class ClickerViewController: UIViewController {

    var plusOne: UIButton = {
        var button = UIButton()
        button.setTitle("+1", for: .normal)
        button.setAppearance()
        return button
    }()
    
    let minusOne: UIButton = {
        var button = UIButton()
        button.setTitle("-1", for: .normal)
        button.setAppearance()
        return button
    }()
    
    let plusFive: UIButton = {
        var button = UIButton()
        button.setTitle("+5", for: .normal)
        button.setAppearance()
        return button
    }()
    
    let restartButton: UIButton = {
        var button = UIButton()
        button.setTitle("~", for: .normal)
        button.setAppearance()
        return button
    }()
    
    let clickerLable: UILabel = {
        var lable = UILabel()
        lable.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        lable.text = "0"
        lable.adjustsFontSizeToFitWidth = true
        lable.font = .systemFont(ofSize: 200)
        lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lable.textAlignment = .center
        return lable
    }()
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Кликер"
        view.backgroundColor = #colorLiteral(red: 0.4899400685, green: 0.1417754709, blue: 1, alpha: 1)
        frameElements()

        plusOne.addTarget(self, action: #selector(plusOneAction), for: .touchUpInside)
        minusOne.addTarget(self, action: #selector(minusOneAction), for: .touchUpInside)
        plusFive.addTarget(self, action: #selector(plusFiveAction), for: .touchUpInside)
        restartButton.addTarget(self, action: #selector(restartAction), for: .touchUpInside)
    }
    
    func frameElements() {
        view.addSubview(clickerLable)
        clickerLable.translatesAutoresizingMaskIntoConstraints = false
        clickerLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        clickerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        clickerLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        clickerLable.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        view.addSubview(minusOne)
        minusOne.translatesAutoresizingMaskIntoConstraints = false
        minusOne.topAnchor.constraint(equalTo: clickerLable.bottomAnchor, constant: 30).isActive = true
        minusOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        minusOne.heightAnchor.constraint(equalToConstant: 80).isActive = true
        minusOne.widthAnchor.constraint(equalToConstant: 80).isActive = true

        view.addSubview(plusOne)
        plusOne.translatesAutoresizingMaskIntoConstraints = false
        plusOne.topAnchor.constraint(equalTo: clickerLable.bottomAnchor, constant: 30).isActive = true
        plusOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        plusOne.heightAnchor.constraint(equalToConstant: 80).isActive = true
        plusOne.widthAnchor.constraint(equalToConstant: 80).isActive = true

        view.addSubview(plusFive)
        plusFive.translatesAutoresizingMaskIntoConstraints = false
        plusFive.topAnchor.constraint(equalTo: plusOne.bottomAnchor, constant: 30).isActive = true
        plusFive.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        plusFive.heightAnchor.constraint(equalToConstant: 80).isActive = true
        plusFive.widthAnchor.constraint(equalToConstant: 80).isActive = true

        view.addSubview(restartButton)
        restartButton.translatesAutoresizingMaskIntoConstraints = false
        restartButton.topAnchor.constraint(equalTo: minusOne.bottomAnchor, constant: 30).isActive = true
        restartButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        restartButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        restartButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    @objc func plusOneAction() {
        count = count + 1
        clickerLable.text = "\(count)"
    }
    
    @objc func minusOneAction() {
        count = count - 1
        clickerLable.text = "\(count)"
    }
    
    @objc func plusFiveAction() {
        count = count + 5
        clickerLable.text = "\(count)"
    }
    
    @objc func restartAction() {
        count = 0
        clickerLable.text = "\(count)"
    }
    
}

