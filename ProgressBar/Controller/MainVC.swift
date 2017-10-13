//
//  ViewController.swift
//  ProgressBar
//
//  Created by Vladimir Valter on 13/10/2017.
//  Copyright © 2017 Vladimir Valter. All rights reserved.
//

import UIKit

class MainVC: UIViewController {


    @IBOutlet weak var progressBarView: ProgressBarView!
    @IBOutlet weak var slider: UISlider!


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.progress = CGFloat(slider.value)
    }


}

