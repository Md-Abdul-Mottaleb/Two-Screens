//
//  ViewController.swift
//  Warren
//
//  Created by MacBook Pro on 4/8/21.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    
  
    var Array = ["24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+  ","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  ","24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+  ","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  ","24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+  ","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  "]
    
    @IBOutlet weak var titleLabelOutlet: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        titleLabelOutlet.layer.borderWidth = 1
        titleLabelOutlet.layer.borderColor = UIColor.white.cgColor
        
        titleLabelOutlet.layer.cornerRadius = titleLabelOutlet.frame.height / 25
        titleLabelOutlet.layer.cornerRadius = titleLabelOutlet.frame.width / 50
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        sell.labelForCell.text = Array[indexPath.row]
        sell.labelForCell.layer.borderWidth = 1
        
        sell.labelForCell.layer.borderColor = UIColor.blue.cgColor
        
        sell.labelForCell.layer.cornerRadius = sell.labelForCell.frame.height / 25
        sell.labelForCell.layer.cornerRadius = sell.labelForCell.frame.width / 50
        
        
        return sell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
    
        sell.labelForCell.backgroundColor = UIColor.blue
        
    }
    
}
