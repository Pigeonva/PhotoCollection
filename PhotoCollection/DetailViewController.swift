//
//  DetailViewController.swift
//  PhotoCollection
//
//  Created by Артур Фомин on 23.01.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    let imageView = UIImageView()
    
    var image: UIImage?
    
    let closeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupImageView()
        setupCloseButton()
        
    }
    private func setupCloseButton() {

        closeButton.setTitle("Close", for: .normal)
        closeButton.setTitleColor(.black, for: .normal)
        closeButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(closeButton)
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
    }
    
    @objc private func didTapButton() {
        
        dismiss(animated: true)
        
    }
    
    private func setupImageView() {
        
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
//        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
//        imageView.frame = CGRect(x: 0, y: 0, width: image!.size.width/3, height: image!.size.height/3)
        
      
        
    }
    
}
