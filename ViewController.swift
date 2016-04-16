//
//  ViewController.swift
//  whatDayisit
//
//  Created by Roman Parajuli on 3/8/15.
//  Copyright (c) 2015 Roman Parajuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func anyName(sender: AnyObject) {
        print("The button is clicked ")
        let choosenDate = self.datePicker.date
        
        //create a NSDateFormatter
        
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"//Changing EEEE tooher terms effects output
        
        //grab the day and create a message 
        let day = formatter.stringFromDate(choosenDate)
        let result = "It's a \(day)"
        let myalert = UIAlertController(title: result, message:"is it your Birthday?\n one of yours friend then??", preferredStyle: UIAlertControllerStyle.Alert)
        //show the alert
        self.presentViewController(myalert, animated: true, completion: nil)
        
        // addAction to alert
        myalert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

