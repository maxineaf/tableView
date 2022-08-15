//
//  ViewController.swift
//  TableView
//
//  Created by Lisa on 14.08.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var colorNames = [String]()
    var colorImages = [UIImage]()
    
    var chosenColorName = ""
    var chosenColorImage = UIImage()
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        colorNames.append("Peach")
        colorNames.append("Blue")
        colorNames.append("Purple")
        colorNames.append("Coffee")
        colorNames.append("Yellow")
        
        colorImages.append(UIImage(named:"peach.jpeg")!)
        colorImages.append(UIImage(named:"blue.jpeg")!)
        colorImages.append(UIImage(named:"purple.jpeg")!)
        colorImages.append(UIImage(named:"brown.png")!)
        colorImages.append(UIImage(named:"yellow.png")!)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colorNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = colorNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            chosenColorName = colorNames[indexPath.row]
            chosenColorImage = colorImages[indexPath.row]
            performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedColorName = chosenColorName
            destinationVC.selectedColorImageView = chosenColorImage
        }
    }
    
}

