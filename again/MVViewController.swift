//
//  MVViewController.swift
//  again
//
//  Created by mac on 2017/8/3.
//  Copyright © 2017年 Justwithin. All rights reserved.
//

import UIKit

class MVViewController: UIViewController {

   
   
    @IBOutlet var Namefield: UITextField!
    @IBAction func Namefiled(_ sender: Any) {
        print (Namefield.text!)
    }
    
    
    @IBOutlet weak var testItem: UISegmentedControl!
    
    @IBOutlet weak var scores: UISlider!
  
    @IBOutlet weak var scoresName: UILabel!
    @IBAction func scores(_ sender: Any) {
     
        scoresName.text = "\(Int(scores.value))"
        }
    
    @IBOutlet weak var sendout: UIButton!
    @IBAction func sendout(_ sender: Any) {
        
        if testItem.selectedSegmentIndex == 1 && scores.value > 7  {
            
            Yes.isHidden = false
            No.isHidden = true
      
        }
            
        else {
            Yes.isHidden = true
            No.isHidden = false
           
        }

        print ("sendout")
         }
    
    
    @IBOutlet weak var Yes: UIImageView!
    @IBOutlet weak var No: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
