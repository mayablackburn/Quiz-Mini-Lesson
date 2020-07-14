//
//  ViewController.swift
//  Quiz Mini Lesson
//
//  Created by Cindy J. Blackburn on 7/14/20.
//  Copyright © 2020 Maya Blackburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func strawberry(_ sender: Any) {
        chosenValue = "Strawberry"
    }
    @IBAction func mango(_ sender: Any) {
        chosenValue = "Mango"
    }
    
    
    var chosenValue = "Does not work"
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "questionOneSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC = segue.destination as! resultsViewController
        newVC.results = self.chosenValue
    }
}
    


