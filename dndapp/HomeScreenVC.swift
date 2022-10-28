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
  let monsterButton = HomeScreenButton(backgroundColor: .darkGray, title: "Monsters", systemImageName: "pawprint.fill")
  override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
    
    func configureUI() {
      configureRacesButton()
      configureClassesButton()
      configureBackgroundsButton()
      configureItemsButton()
      configureSpellsButton()
      configureMonsterButton()
    }
    
    func configureRacesButton() {
      view.addSubview(racesButton)
      racesButton.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        racesButton.widthAnchor.constraint(equalToConstant: 160),
        racesButton.heightAnchor.constraint(equalToConstant: 50),
        racesButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 12),
        racesButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
      ])
    }
    
    func configureClassesButton() {
      view.addSubview(classesButton)
      classesButton.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        classesButton.widthAnchor.constraint(equalToConstant: 160),
        classesButton.heightAnchor.constraint(equalToConstant: 50),
        classesButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -12),
        classesButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
      ])
    }
    
    func configureBackgroundsButton() {
      view.addSubview(backgroundsButton)
      backgroundsButton.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        backgroundsButton.widthAnchor.constraint(equalToConstant: 160),
        backgroundsButton.heightAnchor.constraint(equalToConstant: 50),
        backgroundsButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 12),
        backgroundsButton.topAnchor.constraint(equalTo: racesButton.bottomAnchor, constant: 16)
      ])
    }
    
    func configureItemsButton() {
      view.addSubview(itemsButton)
      itemsButton.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        itemsButton.widthAnchor.constraint(equalToConstant: 160),
        itemsButton.heightAnchor.constraint(equalToConstant: 50),
        itemsButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -12),
        itemsButton.topAnchor.constraint(equalTo: classesButton.bottomAnchor, constant: 16)
      ])
    }
    
    func configureSpellsButton() {
      view.addSubview(spellsButton)
      spellsButton.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        spellsButton.widthAnchor.constraint(equalToConstant: 160),
        spellsButton.heightAnchor.constraint(equalToConstant: 50),
        spellsButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 12),
        spellsButton.topAnchor.constraint(equalTo: backgroundsButton.bottomAnchor, constant: 16)
      ])
    }
    
    func configureMonsterButton() {
      view.addSubview(monsterButton)
      monsterButton.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        monsterButton.widthAnchor.constraint(equalToConstant: 160),
        monsterButton.heightAnchor.constraint(equalToConstant: 50),
        monsterButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -12),
        monsterButton.topAnchor.constraint(equalTo: itemsButton.bottomAnchor, constant: 16)
      ])
    }
    
  }
  
}


