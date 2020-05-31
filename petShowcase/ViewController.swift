//
//  ViewController.swift
//  petShowcase
//
//  Created by sesilmarsely on 31/05/20.
//  Copyright © 2020 sesilmarsely. All rights reserved.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    
    var rating: Int?
    
    var title: String
    
    var subtitle: String?
    
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
    
    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append(Item(image: UIImage(named: "cat2")!,
                         rating: nil,
                         title: "Camille",
                         subtitle: "Likes: Cuddling with his human",
                         description: "Dislike: Badminton\nYou mean crappy tennis?"))
        
        data.append(Item(image: UIImage(named: "cat1")!,
                         rating: nil,
                         title: "Obi",
                         subtitle: "Likes: Being playful and affectionate",
                         description: "Dislike: im so tiny"))
        
        data.append(Item(image: UIImage(named: "cat3")!,
                         rating: nil,
                         title: "Troy",
                         subtitle: "Likes: Taking naps",
                         description: "Dislike: Other cats"))
        
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func didTapButton () {
        //Present the acrd slider
        
        
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome!"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }


}

