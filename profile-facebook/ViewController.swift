//
//  ViewController.swift
//  profile-facebook
//
//  Created by Alan Soares de Oliveira on 18/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlet
    
    @IBOutlet weak var imageCoverProfile: UIImageView!
    @IBOutlet weak var imagePerfilProfile: UIImageView!
    @IBOutlet weak var buttonAddStory: UIButton!
    @IBOutlet weak var buttonMoreDetails: UIButton!   
    @IBOutlet weak var buttonTakePhotoCover: UIView!
    @IBOutlet weak var buttonTakePhotoPerfil: UIView!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: Helpers
    
    func configureUI() {
        self.imagePerfilProfile.layer.cornerRadius = imagePerfilProfile.frame.width / 2
        self.imagePerfilProfile.layer.borderWidth = 3
        self.imagePerfilProfile.layer.borderColor = UIColor.white.cgColor
        
        self.buttonAddStory.layer.cornerRadius = 5
        self.buttonAddStory.setTitle("  Add to Story", for: .normal)
        
        self.buttonMoreDetails.layer.cornerRadius = 5
        
        self.imageCoverProfile.layer.cornerRadius = 5
        self.imageCoverProfile.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        self.buttonTakePhotoCover.layer.cornerRadius = buttonTakePhotoCover.frame.width / 2
        self.buttonTakePhotoPerfil.layer.cornerRadius = buttonTakePhotoPerfil.frame.width / 2
        
    }


}

