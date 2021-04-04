//
//  HobViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 04.04.2021.
//

import UIKit

class HobViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    var currentUserModel: User!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotoViewController else { return }
        photoVC.currentUserModel = currentUserModel
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentUserModel.hobbi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellHobby") as! HobTableViewCell
        
        //cell?.textLabel?.text = currentUserModel.hobbi[indexPath.row].title
        cell.titleCell.text = currentUserModel.hobbi[indexPath.row].title
        cell.subtitleCell.text = currentUserModel.hobbi[indexPath.row].description
        
        
        //print(indexPath)
        
        print(indexPath.row)
        return cell
    }


}
