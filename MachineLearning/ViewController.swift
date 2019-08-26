//
//  ViewController.swift
//  MachineLearning
//
//  Created by Abdul Halimi on 8/25/19.
//  Copyright © 2019 Abdul Halimi. All rights reserved.
//

import UIKit
import CoreML
import Vision
class ViewController: UIViewController {
    lazy var classificationRequest: VNCoreMLRequest = {
        do {
            let healthySnacks = HealthySnacks()
            let visionModel = try VNCoreMLModel(for: healthySnacks.model)
            let request = VNCoreMLRequest(model: visionModel, completionHandler: {
                [weak self] request, error in
                print("Request is finished", request.results as Any)
            })
            request.imageCropAndScaleOption = .centerCrop
            return request
        } catch {
            fatalError("Failed to create VNCoreMLModel: \(error)")
        }
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func classify(image: UIImage) {
        
    }


}

