//
//  ViewController.swift
//  TrafficLight2
//
//  Created by Lepestok Jora on 21.10.2022.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var selectColor:Int = 0 // так как не прошли энумы будем статус измерять интом - 1 красный, 2 - желтный, 3 - зеленый, 0 - выкл
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startButton.layer.cornerRadius = 10
        greenLight.layer.cornerRadius = 60
        yellowLight.layer.cornerRadius = 60
        redLight.layer.cornerRadius = 60
        startButton.layer.borderColor = UIColor.blue.cgColor
        startButton.setTitle(title, for: .normal)
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        setupColor()
        
    }
//я вот здесь нажал кнопку старт
    @IBAction func setupColor() {
        startButton.setTitle("Next", for: .normal)
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        switch selectColor {
        case 1:
            //когда красный, желтый,зеленый тусклый кнопка некст
            redLight.alpha = 1
            selectColor = 2
        case 2:
            //когда желтый, то красный и зеленный тусклый
            yellowLight.alpha = 1
            selectColor = 3
            
        case 3:
            greenLight.alpha = 1
            selectColor = 0
        default:
            startButton.setTitle("Start", for: .normal)
            selectColor = 1
        }
    }
}
