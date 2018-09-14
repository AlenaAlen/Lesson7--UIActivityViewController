//
//  ViewController.swift
//  ShareApp
//
//  Created by Алена Кропотова on 14.09.2018.
//  Copyright © 2018 Alen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shareButtonTapped(_ sender: Any) {
        
        let textToShare = "Посмотри тут!"
        let myURL = URL(string: "https://www.google.com")
        let objectToshare = [textToShare, myURL] as [Any]
        let activityVC = UIActivityViewController(activityItems: objectToshare, applicationActivities: nil)
        activityVC.excludedActivityTypes = [UIActivityType.airDrop,UIActivityType.addToReadingList]
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    
}

