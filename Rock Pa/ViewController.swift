//
//  ViewController.swift
//  Rock Pa
//
//  Created by Rakha Galih Nugraha Sukma on 06/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var victoryLabel: UILabel!
    @IBOutlet weak var playerImageView: UIImageView!
    
    let images = [#imageLiteral(resourceName: "andrej-lisakov-fGZ2x8wFxC0-unsplash"), #imageLiteral(resourceName: "anton-maksimov-5642-su-NHWSLNffg1s-unsplash"), #imageLiteral(resourceName: "alex-gruber-KVsFiYXy0BE-unsplash")]
    
    
    @IBAction func rockButtonPressed(_ sender: Any) {
        playerImageView.image = #imageLiteral(resourceName: "anton-maksimov-5642-su-NHWSLNffg1s-unsplash")
        randomImage()
        lookVictory()
    }
    @IBAction func paperButtonPressed(_ sender: Any) {
        playerImageView.image = #imageLiteral(resourceName: "andrej-lisakov-fGZ2x8wFxC0-unsplash")
        randomImage()
        lookVictory()
    }
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        playerImageView.image = #imageLiteral(resourceName: "alex-gruber-KVsFiYXy0BE-unsplash")
        randomImage()
        lookVictory()
    }
    
    func randomImage(){
        computerImageView.image = images.randomElement()
    }
    
    func lookVictory(){
        let playerWins = playerImageView.image ==  #imageLiteral(resourceName: "andrej-lisakov-fGZ2x8wFxC0-unsplash") &&  computerImageView.image == #imageLiteral(resourceName: "anton-maksimov-5642-su-NHWSLNffg1s-unsplash") || playerImageView.image ==  #imageLiteral(resourceName: "anton-maksimov-5642-su-NHWSLNffg1s-unsplash") &&  computerImageView.image == #imageLiteral(resourceName: "alex-gruber-KVsFiYXy0BE-unsplash") || playerImageView.image ==  #imageLiteral(resourceName: "alex-gruber-KVsFiYXy0BE-unsplash") &&  computerImageView.image == #imageLiteral(resourceName: "andrej-lisakov-fGZ2x8wFxC0-unsplash")
        if (playerImageView.image == computerImageView.image){
            victoryLabel.text = "Draw!"
        } else if (playerWins){
            victoryLabel.text = "Player Wins!"
        } else {
            victoryLabel.text = "Computer Wins!"
        }
    }
}

