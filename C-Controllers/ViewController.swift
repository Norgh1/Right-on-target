//
//  ViewController.swift
//  Right on target
//
//  Created by Nor Gh on 7/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game!
    
    lazy var secondViewController: SecondViewController = SecondViewController()
    
    var number: Int = 0
    var rounds: Int = 0
    var points: Int = 0
    

    @IBOutlet weak var checkOutButton: UIButton!
    @IBOutlet weak var checkOutLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var aboutApp: UIButton!
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareForView()
        game = Game(startValue: 1, endValue: 50, rounds: 5)
    }


    private func prepareForView(){
        checkOutLabel.text = "Check Out:0"
        checkOutLabel.textColor = .systemIndigo
        checkOutLabel.font = UIFont(name: "Bold", size: .nan)
        slider.thumbTintColor = .systemPink
        slider.minimumTrackTintColor = .systemPink
        checkOutButton.setTitle("Tapp to chack", for: .normal)
        view.backgroundColor = .systemYellow
        aboutApp.setTitle("aboutApp", for: .normal)
    }
    
    
    @IBAction func tappButton(_ sender: Any) {
        
        game.calculateScore(with: Int(slider.value))
        
        if game.isGameEnded {
            showAlertWith(score: game.score)
            game.restartGame()
        } else {
            game.startNewGame()
        }
    }
    
    private func showAlertWith(score: Int) {
        let alert = UIAlertController(title: "Игра окончена",message: "Вы заработали \(score) очков",preferredStyle: .alert); alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
    self.present(alert, animated: true, completion: nil)
    } }
    
    private func getSecondViewController() -> SecondViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        return vc as! SecondViewController
    }
    


