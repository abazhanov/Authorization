//
//  AboutMeViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 04.04.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    @IBOutlet weak var fioLabel: UILabel!
    @IBOutlet weak var photoLabel: UIImageView!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    //var userName: String!
    var currentUserModel: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fioLabel.text = currentUserModel.name + " " + currentUserModel.surname
        photoLabel.image = UIImage(named: currentUserModel.photo)
        sexLabel.text = String(currentUserModel.sex.rawValue)
        ageLabel.text = String(currentUserModel.old)
      
    }
}
