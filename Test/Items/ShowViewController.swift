//
//  ShowViewController.swift
//  Test
//
//  Created by jiad abdul on 19/12/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var share: UIButton!
    @IBOutlet weak var fav: UIButton!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageShow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageShow.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        fav.translatesAutoresizingMaskIntoConstraints = false
        share.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageShow)
        imageShow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        imageShow.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageShow.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageShow.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        view.addSubview(name)
        name.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        name.topAnchor.constraint(equalTo: imageShow.topAnchor, constant: 220).isActive = true
        
        view.addSubview(fav)
        fav.centerXAnchor.constraint(equalTo: name.centerXAnchor).isActive = true
        fav.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 8).isActive = true
        
        view.addSubview(share)
        share.centerXAnchor.constraint(equalTo: fav.centerXAnchor).isActive = true
        share.topAnchor.constraint(equalTo: fav.bottomAnchor, constant: 8).isActive = true
    }
}
