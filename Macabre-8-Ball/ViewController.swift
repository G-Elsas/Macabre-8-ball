//
//  ViewController.swift
//  Macabre-8-Ball
//
//  Created by Elsas on 01/10/23.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    //Setting up Gif, Labels, Button and Array of Gifs
    @IBOutlet weak var gifView: UIImageView!
    @IBOutlet weak var labeView: UILabel!
    @IBOutlet weak var labeView2: UILabel!
    //This array will be used to randomize the GIF that will be displayed
    let arrayOfGifs: [String] = ["interactionOne", "interactionTwo", "interactionThree", "interactionFour", "interactionFive", "interactionSix", "interactionSeven", "interactionEight"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Creating variables that will be used to define the custom font
        let labelFont = UIFont(name: "bone", size: 38)
        let labelFont2 = UIFont(name: "bone", size: 24)
        
        //Setting up the first label, above the GIF
        labeView.text = "macabre-8-ball"
        labeView.font = labelFont
        labeView.textColor = UIColor.white
        labeView.textAlignment = .center
        
        //Setting up the second label, under the GIF
        labeView2.text = "ask the dead"
        labeView2.font = labelFont2
        labeView2.textColor = UIColor.white
        labeView2.textAlignment = .center
        //This label was created because of the font, who's not able to be used inside a button
        
        //Function used to load the GIF that is displayed firstly on the screen
        gifView.loadGif(name: "initialInteraction")
        
    }
    
    
    
    //This action changes the GIF that is displayed, to other inside the arrayOfGifs, randomly, (like a magic8ball :v )
    @IBAction func gifChanger(_ sender: UIButton) {
        let randomGifs = arrayOfGifs.randomElement()!
        gifView.loadGif(name: randomGifs)
        
    }
    
}
