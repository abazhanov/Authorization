//
//  PhotoViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 04.04.2021.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var currentUserModel: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = UIImage(named: currentUserModel.photo)
    }
}
