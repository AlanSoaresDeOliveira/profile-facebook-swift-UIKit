//
//  ViewController.swift
//  profile-facebook
//
//  Created by Alan Soares de Oliveira on 18/12/20.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    // MARK: IBOutlet
    
    @IBOutlet weak var imageCoverProfile: UIImageView!
    @IBOutlet weak var imagePerfilProfile: UIImageView!
    @IBOutlet weak var buttonAddStory: UIButton!
    @IBOutlet weak var buttonMoreDetails: UIButton!   
    @IBOutlet weak var buttonTakePhotoCover: UIView!
    @IBOutlet weak var buttonTakePhotoPerfil: UIView!
    @IBOutlet weak var buttonEditPublicDetails: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var friendsCollection: UICollectionView!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        friendsCollection.delegate = self
        friendsCollection.dataSource = self
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
        
        self.buttonEditPublicDetails.layer.cornerRadius = 5
//        self.scrollView.contentSize = CGSize(width: self.scrollView.frame.width, height: self.scrollView.frame.height + 400)
        
    }

    // MARK: UIColletcionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendcell", for: indexPath) as! FriendsCollectionViewCell
        
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 5
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return UIDevice.current.userInterfaceIdiom == .phone ? CGSize(width: collectionView.bounds.width / 3 - 8, height: 160) : CGSize(width: collectionView.bounds.width / 3 - 20, height: 250)
    }

}

