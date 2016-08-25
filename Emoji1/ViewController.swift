//
//  ViewController.swift
//  Emoji1
//
//  Created by Mark Langlois on 8/24/16.
//  Copyright © 2016 Mark Langlois. All rights reserved.???
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblView: UITableView!
    
    var emojis = ["😀","😠","😡","😈","👻","👺","👊","😏","😰","🕵🏽"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblView.dataSource = self
        tblView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        print(indexPath.row)
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

