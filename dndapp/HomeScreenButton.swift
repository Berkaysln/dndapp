//
//  HomeScreenButton.swift
//  dndapp
//
//  Created by Berkay Yaslan on 21.10.2022.
//

import UIKit

class HomeScreenButton: UIButton {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configure()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  init(backgroundColor: UIColor,  title: String, systemImageName: String) {
    super .init(frame: .zero)
    self.backgroundColor = backgroundColor
    setTitle(title, for: .normal)
    setImage(UIImage(systemName: systemImageName), for: .normal)
    configure()
  }
  
  func configure() {
    layer.cornerRadius = 8
    titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
    setTitleColor(.systemBackground, for: .normal)
    translatesAutoresizingMaskIntoConstraints = false
  }
  
}
