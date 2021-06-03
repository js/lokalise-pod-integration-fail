//
//  ViewController.swift
//  archtest2
//
//  Created by Johan Sørensen on 02/06/2021.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Lokalise

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SignalProducer<Int, Never>(value:42)
            .on(value: { answer in
                print("answer: \(answer)")
            })
            .startWithCompleted {
                print("Completed.")
            }
        
        
        NSLog("Localise.shared: \(Lokalise.shared)")
    }
    
    
}

