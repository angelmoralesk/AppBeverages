//
//  ViewController.swift
//  AppBeverages
//
//  Created by Morales, Angel (MX - Mexico) on 12/02/18.
//  Copyright © 2018 TheKairuz. All rights reserved.
//

import UIKit

struct Beverage {
    let name : String
    let image : UIImage
}

class BeverageMenuViewController : UIViewController {

    lazy var beverages : [Beverage] = {
        
        let lemonade = Beverage(name: "Lemonade", image: #imageLiteral(resourceName: "lemonade"))
        let strawBerryLemonade = Beverage(name: "Strawberry Lemonade", image: #imageLiteral(resourceName: "strawberrylemonade"))
        let pina = Beverage(name: "Piña Colada", image: #imageLiteral(resourceName: "pinacolada"))
        let margarita = Beverage(name: "Margarita", image: #imageLiteral(resourceName: "margarita"))
        
        return [lemonade,strawBerryLemonade,pina,margarita]
    }()
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension BeverageMenuViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beverages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageCell", for: indexPath) as! BeverageCell
        
        let beverage = beverages[indexPath.row]
        
        cell.nameLabel.text = beverage.name
        cell.beverageImageView.image = beverage.image
        
        return cell
        
    }
}












