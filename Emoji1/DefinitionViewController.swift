//
//  DefinitionViewController.swift
//  Emoji1
//
//  Created by Mark Langlois on 8/25/16.
//  Copyright © 2016 Mark Langlois. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "Smiley Face"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
