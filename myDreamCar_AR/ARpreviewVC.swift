//
//  TableViewController.swift
//  tabAR_testApp
//
//  Created by Dave on 8/7/18.
//  Copyright © 2018 David Moreland. All rights reserved.
//

import UIKit

class ARpreviewVC: UIViewController {

 //   var delegate: PreviewDelegate?
    var dataTest: String?
    let selectedAsset = "This is your Selected Asset from: Asset Preview!!!"
    @IBAction func openViewOnTap(_ sender: Any) {
        
        print("PreviewVC/OpenViewOnTap: ")
    performSegue(withIdentifier: "showWorldViewScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWorldViewScreen" {
          let  destinationVC = segue.destination as! ARWorldViewVC
        destinationVC.delegate = self
       //    d estinationVC.delegate? = self
         
          destinationVC.fetchScene(asset: selectedAsset)
            destinationVC.result.text = selectedAsset
            
        //    delegate?.fetchScene(asset: selectedAsset)
          // self.dismiss(animated: true, completion: nil)
            
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataTest = "Data From Preview PopUp !"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
