//
//  DetailsVC.swift
//  TableView
//
//  Created by Lisa on 14.08.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorImageView: UIImageView!
    
    var selectedColorName = ""
    var selectedColorImageView = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorLabel.text = selectedColorName
        colorImageView.image = selectedColorImageView

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
