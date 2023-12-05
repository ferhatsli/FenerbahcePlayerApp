//
//  ViewController.swift
//  FenerbahcePlayerApp                                                                                               //
//  Created by ferhat taşlı on 31.10.20                                                    3.
//
                                                                                                                                       
import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    

    @IBOutlet weak var tableView: UITableView!
    
    var playername = [String]()
    var playerimage = [UIImage]()
    
    var choseplayernamelabel = ""
    var choseplayerimage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        playername.append("Fred")
        playername.append("Tadic")
        playername.append("Szymanski")
        playername.append("Dzeko")
        
        
        
        playerimage.append(UIImage(named: "fred")!)
        playerimage.append(UIImage(named: "tadic")!)
        playerimage.append(UIImage(named: "szymanski")!)
        playerimage.append(UIImage(named: "dzeko")!)
    }
    
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playername.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var contect = cell.defaultContentConfiguration()
        contect.text = playername[indexPath.row]
        cell.contentConfiguration = contect
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choseplayernamelabel = playername[indexPath.row]
        choseplayerimage = playerimage[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.playerfootballlabel = choseplayernamelabel
            destinationVC.playerfootballimage = choseplayerimage
            
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            
            playername.remove(at: indexPath.row)
            playerimage.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.top)
            
        }
    }
}

