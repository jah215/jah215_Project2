//
//  ViewController.swift
//  FavoriteTeam
//
//  Created by Hanchin,Jordan on 10/16/15.
//  Copyright © 2015 Hanchin,Jordan. All rights reserved.
//

import UIKit

/*var data: Dictionary<String, String>? = {
    g    lazy var data: Dictionary<String, String>? = {
        guard let path = NSBundle.mainBundle().pathForResource("data", ofType: "plist") else {
            print("Invalid path for plist")
            return nil
        }
        
        return NSDictionary(contentsOfFile: path) as? Dictionary<String, String>
        }()    }()*/

class ViewController: UIViewController {

    @IBOutlet weak var favTeam: UITextField!
    @IBOutlet weak var division: UITextField!
    @IBOutlet weak var win_loss: UITextField!
    @IBOutlet weak var nextPlay: UITextField!
    @IBOutlet weak var lastPlay: UITextField!
    @IBOutlet weak var f2Team: UITextField!
    @IBOutlet weak var div2: UITextField!
    @IBOutlet weak var w_l2: UITextField!
    @IBOutlet weak var nPlay2: UITextField!
    @IBOutlet weak var lPlay2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let path = NSBundle.mainBundle().pathForResource("data", ofType: "plist") else {
            print("Invalid path for plist")
            return
        }
        let x =  NSDictionary(contentsOfFile: path) as? Dictionary<String, String>
        
        favTeam.text = x?["tName"]
        division.text = x?["Div"]
        win_loss.text = x?["w_l"]
        nextPlay.text = x?["nextP"]
        lastPlay.text = x?["lastP"]
        f2Team.text = x?["tName"]
        div2.text = x?["Div"]
        w_l2.text = x?["w_l"]
        nPlay2.text = x?["nextP"]
        lPlay2.text = x?["lastP"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

