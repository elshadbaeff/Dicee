//
//  ViewController.swift
//  Dicee
//
//  Created by Elshad Babaev on 21.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = [
        UIImage(named: "DiceOne")!,
        UIImage(named: "DiceTwo")!,
        UIImage(named: "DiceThree")!,
        UIImage(named: "DiceFour")!,
        UIImage(named: "DiceFive")!,
        UIImage(named: "DiceSix")!
    ]
    
    let rollButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.setTitle("Roll", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32)
        button.backgroundColor = UIColor(red: 155/255, green: 28/255, blue: 32/255, alpha: 1)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(rollButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "GreenBackground")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    let firstDiceImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "DiceOne")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    let secondDiceImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "DiceTwo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    let diceeLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "DiceeLogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImage)
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        view.addSubview(firstDiceImage)
        firstDiceImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        firstDiceImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        firstDiceImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        firstDiceImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        view.addSubview(secondDiceImage)
        secondDiceImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        secondDiceImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        secondDiceImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        secondDiceImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        view.addSubview(rollButton)
        rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rollButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        rollButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        rollButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        view.addSubview(diceeLogo)
        diceeLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        diceeLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        diceeLogo.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        diceeLogo.widthAnchor.constraint(equalToConstant: 120).isActive = true
        diceeLogo.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
    }
    
    @objc func rollButtonTapped() {
        firstDiceImage.image = diceArray.randomElement()
        secondDiceImage.image = diceArray.randomElement()
    }
}


