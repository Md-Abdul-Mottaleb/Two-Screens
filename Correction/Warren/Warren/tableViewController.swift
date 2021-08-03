//
//  tableViewController.swift
//  Warren
//
//  Created by MacBook Pro on 4/8/21.
//

import UIKit

class tableViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
   
    var Restaurant_Images = [UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image")
        
                   ]
    
    var Names = ["Asado","Singapore","Las VEgas","OMalleys","Military owned","Asado","Asado","Asado","Asado"]
    
    var CountPlace = ["210 Places","117 Places","218 Places","94 Places","201 Places","201 Places","210 Places","210 Places","210 Places",]
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableViewOutlet.delegate = self
        self.tableViewOutlet.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Restaurant_Images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        sell.imageOutlet.image = Restaurant_Images[indexPath.row]
        sell.titleLabelOutlet.text = Names[indexPath.row]
        sell.countLabelOutlet.text = CountPlace[indexPath.row]
        /*
        sell.viewOutlet.layer.cornerRadius = sell.viewOutlet.frame.height / 25
         
        sell.viewOutlet.layer.cornerRadius = sell.viewOutlet.frame.width / 50
        */
        return sell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
   

}
