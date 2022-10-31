//
//  ViewController.swift
//  dndapp
//
//  Created by Berkay Yaslan on 21.10.2022.
//

import UIKit

class HomeScreenVC: UIViewController {
  
  let racesButton = HomeScreenButton(backgroundColor: .darkGray, title: "Races", systemImageName: "person.3.sequence.fill")
  let classesButton = HomeScreenButton(backgroundColor: .darkGray, title: "Classes", systemImageName: "graduationcap.fill")
  let backgroundsButton = HomeScreenButton(backgroundColor: .darkGray, title: "Backgrounds", systemImageName: "book.closed.fill")
  let itemsButton = HomeScreenButton(backgroundColor: .darkGray, title: "Items", systemImageName: "latch.2.case.fill")
  let spellsButton = HomeScreenButton(backgroundColor: .darkGray, title: "Spells", systemImageName: "scroll.fill")
  let monstersButton = HomeScreenButton(backgroundColor: .darkGray, title: "Monsters", systemImageName: "pawprint.fill")
  var stackView = UIStackView()
  var titleLabel = UILabel()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTitleLabel()
    configureStackView()
    
    func configureStackView() {
      view.addSubview(stackView)
      stackView.axis = .vertical
      stackView.distribution = .fillEqually
      stackView.spacing = 20
      
      setStackViewConstraints()
      stackView.addArrangedSubview(racesButton)
      stackView.addArrangedSubview(classesButton)
      stackView.addArrangedSubview(backgroundsButton)
      stackView.addArrangedSubview(itemsButton)
      stackView.addArrangedSubview(spellsButton)
      stackView.addArrangedSubview(monstersButton)
    }
  
    
    func setStackViewConstraints() {
      stackView.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
      ])
    }
    
    func configureTitleLabel() {
      view.addSubview(titleLabel)
      titleLabel.text = "D&D 5e Companion"
      titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
      titleLabel.textAlignment = .center
      titleLabel.numberOfLines = 0
      titleLabel.adjustsFontSizeToFitWidth = true
      
      setTitleLabelConstraints()
    }
    
    func setTitleLabelConstraints() {
      titleLabel.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
      ])
    }
    
  }
  
}


