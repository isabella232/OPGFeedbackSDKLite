//
//  UploadMediaViewController.swift
//  SDKDemoApp
//
//  Created by OnePoint Global on 04/10/16.
//  Copyright © 2016 opg. All rights reserved.
//

import UIKit

class UploadMediaViewController: RootViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    var mediaID : NSString?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func uploadMediaSwift(_ sender: AnyObject)
    {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.delegate=self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
// Local variable inserted by Swift 4.2 migrator.
let info = convertFromUIImagePickerControllerInfoKeyDictionary(info)

        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print("documentsPath: \(documentsPath)")
        let image:UIImage = (info[convertFromUIImagePickerControllerInfoKey(UIImagePickerController.InfoKey.originalImage)] as? UIImage)!
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let photoURL          = NSURL(fileURLWithPath: documentDirectory)
        let localPath         = photoURL.appendingPathComponent("profileimage")
        let data              = image.jpegData(compressionQuality: 0.9)

        do
        {
            try data?.write(to: localPath!, options: Data.WritingOptions.atomic)
        }
        catch
        {
            // Catch exception here and act accordingly
        }

        let sdk = OPGSDK()        // Creating OPGSDK instance
        do {
            mediaID = try sdk.uploadMediaFile(localPath?.absoluteString) as NSString?
        }
        catch{
            print("Upload Media Media Failed")         /* @"Error Occured. Contact Support!" */
        }
        print("Uploaded media ID is \(String(describing: mediaID))" )
        self.dismiss(animated: true, completion: nil);
        self.showAlert()
    }

    func showAlert()
    {
        if(self.mediaID == nil) {
            super.showAlert(alertMessage: "Media upload failed")
        }
        else {
            super.showAlert(alertMessage: "Uploaded media ID is \(self.mediaID!)")
        }
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKeyDictionary(_ input: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
	return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKey(_ input: UIImagePickerController.InfoKey) -> String {
	return input.rawValue
}
