//
//  MainViewController.swift
//  CustomCamera
//
//  Created by admin_user on 5/15/17.
//  Copyright © 2017 admin_user. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var ivCruiseFrame: UIImageView!
    @IBOutlet weak var btnSave: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: Button Action Methods

    @IBAction func didTapCaptureButton(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func didTapSaveButton(_ sender: UIButton) {
        
    }
    
    // MARK: ImagePickerController Delegate Methods
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        dismiss(animated: true, completion: nil);
        
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        ivCruiseFrame.contentMode = .scaleAspectFit //3
        ivCruiseFrame.image = chosenImage //4
        dismiss(animated:true, completion: nil) //5
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
    }
    
}
