//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Michael Sidoruk on 27/04/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }
    
    // MARK: TableViewDelegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}



// MARK: TextFieldDelegate

extension NewPlaceViewController: UITextFieldDelegate {
    // hide keyboard by done button
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
