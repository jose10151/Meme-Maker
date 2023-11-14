//
//  ViewController.swift
//  Meme Maker
//
//  Created by 4d on 11/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    var topArray:[captionOption] = [captionOption(emoji: "🕶️", caption: "You know whats cool?"), captionOption(emoji: "💥", caption: "You know what makes me mad?"), captionOption(emoji: "👩🏻‍🏫", caption: "When Ms.Antigua says theres another \"short\" quiz")]
    
    var bottomArray:[captionOption] = [captionOption(emoji: "😻", caption: "Cats wearing hats"), captionOption(emoji: "🐶", caption: "Ms.Antiguas cat"),captionOption(emoji: "🥲", caption: "But its 20 questions long")]
    
    
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topLabel: UILabel!
    
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()
        for choice in topArray{
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topArray.count, animated: false)
        }
        
        for choice in bottomArray{
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomArray.count, animated: false)
        }
        
        topSegmentedControl.selectedSegmentIndex = 0
        bottomSegmentedControl.selectedSegmentIndex = 0
    
    }
    
    @IBAction func changeOption(_ sender: Any) {
        topLabel.text = topArray[topSegmentedControl.selectedSegmentIndex].caption
        
        bottomLabel.text =
        bottomArray[bottomSegmentedControl.selectedSegmentIndex].caption
        
        
    }
    


}

