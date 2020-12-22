//
//  FriendsCollectionViewCell.swift
//  profile-facebook
//
//  Created by Alan Soares de Oliveira on 22/12/20.
//

import UIKit

class FriendsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageFriend: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    func configureCell(friend: Friens) {
        imageFriend.image = UIImage(named: friend.image)
        imageFriend.layer.cornerRadius = 5
        labelName.text = friend.name
        
    }
}
