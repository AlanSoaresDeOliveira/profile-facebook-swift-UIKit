//
//  FriendsDAO.swift
//  profile-facebook
//
//  Created by Alan Soares de Oliveira on 22/12/20.
//

import UIKit

class FriendsDAO: NSObject {
    func getFriends() -> Array<Friens> {
        
        let emanuel = Friens(name: "Emanuel Macron", image: "emanuel.jpg")
        let angela = Friens(name: "Angela Merkel", image: "angela.jpg")
        let obama = Friens(name: "Barack Obama", image: "barack.jpg")
        let bill = Friens(name: "Bill Gates", image: "bill.jpg")
        let tabata = Friens(name: "Tabata Amaral", image: "tabata.jpg")
        let elon = Friens(name: "Elon Musk", image: "elon.jpg")
        
        let listOfFriends: [Friens] = [emanuel, angela, obama, bill, tabata, elon]
        return listOfFriends
    }
}
