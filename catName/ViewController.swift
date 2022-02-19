//
//  ViewController.swift
//  catName
//
//  Created by Umut Cörüt on 14.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var catsName = [String]()
    var catsImage = [UIImage]()
    var chosenCatName = ""
    var chosenCatImage = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        catsName.append("British Shorthair")
        catsName.append("İran Kedisi")
        catsName.append("Mavi Rus Kedisi")
        catsName.append("Ragdoll")
        catsName.append("Scotish Fold")
        catsName.append("Selkirk Rex")
        
       
        catsImage.append(UIImage(named: "britishshorthair.jpeg")!)
        catsImage.append(UIImage(named: "iran.jpeg")!)
        catsImage.append(UIImage(named: "mavirus.jpeg")!)
        catsImage.append(UIImage(named: "ragdoll.jpeg")!)
        catsImage.append(UIImage(named: "scotishfold.jpeg")!)
        catsImage.append(UIImage(named: "selkirkrex.jpeg")!)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    
        UITableViewCell {
        let cell = UITableViewCell()
            cell.textLabel?.text = catsName [indexPath.row]
        return cell }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catsName.count
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCatName = catsName[indexPath.row]
        chosenCatImage = catsImage [indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedCatName = chosenCatName
            destinationVC.selectedCatImage = chosenCatImage
    }
    }

}

