//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by lapacino on 7/31/15.
//  Copyright (c) 2015 lapacino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var factLabel: UILabel!
    
    var tigersArray:[Tigers] = []
    var lionsArray:[Lions] = []
    var lionCubArray:[LionCub] = []
    
    var currentAnimals = (subSpicies: "Tigers", index: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var tiger1 = Tigers()
        tiger1.name = "BengalTiger"
        tiger1.age = 1
        tiger1.breed = "Bengal"
        tiger1.fact = "live in the bengal area"
        tiger1.image = UIImage(named: "BengalTiger.jpg")!

        
        self.nameLabel.text = tiger1.name
        self.ageLabel.text = String(tiger1.age)
        self.breedLabel.text = tiger1.breed
        self.factLabel.text = tiger1.fact
        self.imageView.image = tiger1.image

        
        tigersArray.append(tiger1)

    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItem(sender: UIBarButtonItem) {
        
        UIView.transitionWithView(self, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: { () -> Void in
            var tiger2 = Tigers()
            tiger2.image = UIImage(named: "IndochineseTiger.jpg")!
            tiger2.name = "IndochineseTiger"
            tiger2.age = 2
            tiger2.breed = "Indochinese"
            tiger2.fact = "live in the Indochinese area"
            
            var tiger3 = Tigers()
            tiger3.image = UIImage(named: "MalayanTiger.jpg")!
            tiger3.name = "MalayanTiger"
            tiger3.age = 3
            tiger3.breed = "Malayan"
            tiger3.fact = "live in the Malayan area"
            
            var tiger4 = Tigers()
            tiger4.image = UIImage(named: "SiberianTiger.jpg")!
            tiger4.name = "SiberianTiger"
            tiger4.age = 4
            tiger4.breed = "Siberian"
            tiger4.fact = "live in the Siberian area"
            
            tigersArray = [tiger2, tiger3, tiger4]
            
            var lion = Lions()
            lion.image = UIImage(named: "Lion.jpg")!
            lion.name = "Lion"
            lion.age = 5
            lion.breed = "african"
            lion.fact = "live in the african area"
            
            var lioness = Lions()
            lioness.image = UIImage(named: "Lioness.jpeg")!
            lioness.name = "Lioness"
            lioness.age = 6
            lioness.breed = "southAfrica"
            lioness.fact = "live in the southAfrican area"
            
            lionsArray = [lion, lioness]
            
            
            
            var lionCub1 = LionCub()
            lionCub1.image = UIImage(named: "LionCub1.jpg")!
            lionCub1.name = "LionCub1"
            lionCub1.age = 7
            lionCub1.breed = "Tanzanian"
            lionCub1.fact = "live in the tanzania area"
            
            var lionCub2 = LionCub()
            lionCub2.image = UIImage(named: "LionCub2.jpeg")!
            lionCub2.name = "LionCub2"
            lionCub2.age = 8
            lionCub2.breed = "kongo"
            lionCub2.fact = "live in the kongo area"
            
            lionCubArray = [lionCub1, lionCub2]
            
            
            randomAnimal()
            
            if currentAnimals.subSpicies == "Tigers"{
                
                let indexPath = Int(arc4random_uniform(UInt32(3)))
                var tiger = tigersArray[indexPath]
                self.imageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = String(tiger.age)
                self.breedLabel.text = tiger.breed
                self.factLabel.text = tiger.fact
            }
            else if currentAnimals.subSpicies == "Lions" {
                
                let indexPath1 = Int(arc4random_uniform(UInt32(2)))
                var lions = lionsArray[indexPath1]
                self.imageView.image = lions.image
                self.nameLabel.text = lions.name
                self.ageLabel.text = String(lions.age)
                self.breedLabel.text = lions.breed
                self.factLabel.text = lions.fact
            }
            else if currentAnimals.subSpicies == "LionCub" {
                
                let indexPath2 = Int(arc4random_uniform(UInt32(2)))
                var lionCub = lionCubArray[indexPath2]
                self.imageView.image = lionCub.image
                self.nameLabel.text = lionCub.name
                self.ageLabel.text = String(lionCub.age)
                self.breedLabel.text = lionCub.breed
                self.factLabel.text = lionCub.fact
            }
        }) { (<#Bool#>) -> Void in
            <#code#>
        }
        
   
    }
    
    func randomAnimal() {
        
        switch currentAnimals {
            
            case ("Tigers",_): self.currentAnimals.subSpicies = "Lions"
            case ("Lions",_): self.currentAnimals.subSpicies = "LionCub"
            default: self.currentAnimals.subSpicies = "Tigers"
            }
        }

}























