//
//  ViewController.swift
//  UIImageViewChallenge
//
//  Created by Ricky Bobby
//  Copyright © 2022 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - MVP
    
    @IBOutlet weak var disappearingImageView: UIImageView!
    
    
    
    //MARK: - Stretch #3 - Part I
    
    @IBOutlet weak var nowYouSeeMeLabel: UILabel!
    
    
    @IBOutlet weak var slider: UISlider!
    var sliderValue: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func whenSliderMoved(_ slider: UISlider) {
        //TODO: - MVP, Uncomment the line below
        disappearingImageView.alpha = CGFloat(slider.value)

        
        //MARK: - Stretch #3 - Part II
        if
            CGFloat(slider.value) == 0{
            nowYouSeeMeLabel.text = "Now you dont"
            
        }
        else {
            nowYouSeeMeLabel.text = "Now you see me"
                }
       
        
    }
    
    //MARK: - Stretch #1 and #2
    
    @IBAction func whenPressedchangesimage(_ sender: UIButton) {
        
        if
            disappearingImageView.image == UIImage (named: "smielyImage"){
            disappearingImageView.image = UIImage (named: "Binary")
        }
        else {
            disappearingImageView.image = UIImage (named: "smielyImage")
        }
    }
    
    
    @IBAction func changeBackgroundImage(_ sender: UIButton) {
        view.backgroundColor = UIColor(patternImage: UIImage(named: "laughingEmojiImage")!)
    }
    
}
    


