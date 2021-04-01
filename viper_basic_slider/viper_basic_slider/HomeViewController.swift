//
//  ViewController.swift
//  viper_basic_slider
//
//  Created by Pritam Bolenwar on 18/11/20.
//

import UIKit

protocol ColorValueDelegate {
    func onColorValueChange() -> ()
}

class HomeViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var lblRgbValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rgb = loadCurrentColor()
        
        sliderRed.value = Float(rgb.0)
        sliderGreen.value = Float(rgb.1)
        sliderBlue.value = Float(rgb.2)
        lblRgbValue.text = "RGB (\(rgb.0), \(rgb.1), \(rgb.2) )"
        self.view.backgroundColor = UIColor(red: rgb.0/255, green: rgb.1/255, blue: rgb.2/255, alpha: 1.0)
        
    }

    @IBAction func onRedValueChange(_ sender: UISlider) {
        print("Red value received: \(sender.value)")
        
        onColorValueChange()
    }
    
    @IBAction func onGreenValueChange(_ sender: UISlider) {
        print("Green value received: \(sender.value)")
        
        onColorValueChange ()
    }
    
    @IBAction func onBlueValueChange(_ sender: UISlider) {
        print("Blue value received: \(sender.value)")
        
        onColorValueChange()
    }
    // RGB values to be saved. Values passed should be between 0-255
    
    
    
    func saveCurrentColor(rgb: (CGFloat, CGFloat, CGFloat   )) -> (Void) {
        
        UserDefaults.standard.set(rgb.0, forKey: "Red")
        UserDefaults.standard.set(rgb.1, forKey: "Green")
        UserDefaults.standard.set(rgb.2, forKey: "Blue")
        
        print("Current values are changed")
    }
    
    // load current color , RGB values returned will be 0-255
    
    func loadCurrentColor() -> (CGFloat, CGFloat, CGFloat) {
        
       let red = CGFloat(UserDefaults.standard.float(forKey: "Red"))
       let green = CGFloat(UserDefaults.standard.float(forKey: "Green"))
       let blue = CGFloat(UserDefaults.standard.float(forKey: "Blue"))
        
        return(red, green, blue)
    }
}

extension HomeViewController: ColorValueDelegate {
    
    //Track color value changes
    
    
    
    func onColorValueChange() {
        
        let step: Float = 1
        
        let red = CGFloat(round(sliderRed.value / step) * step)
        let green = CGFloat(round(sliderGreen.value / step) * step)
        let blue = CGFloat(round(sliderBlue.value / step) * step)
        
        lblRgbValue.text = "RGB (\(red), \(green), \(blue) )"
        
        self.view.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
        saveCurrentColor(rgb: (red,green, blue))
    }
    
}


