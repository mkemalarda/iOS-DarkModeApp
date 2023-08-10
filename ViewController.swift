//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Mustafa Kemal ARDA on 9.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light         // kullanıcının seçiminden bağımsız pencerenin dark/light modunu belirler
      
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
         
         if userInterfaceStyle == .dark {
             changeButton.tintColor = UIColor.white
         } else {
             changeButton.tintColor = UIColor.blue
         }
    }

    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
         
         if userInterfaceStyle == .dark {
             changeButton.tintColor = UIColor.white
         } else {
             changeButton.tintColor = UIColor.blue
         }
    }

}

