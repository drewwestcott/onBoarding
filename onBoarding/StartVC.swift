//
//  StartVC.swift
//  onBoarding
//
//  Created by Drew Westcott on 12/02/2017.
//  Copyright © 2017 Drew Westcott. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	@IBAction func startOnBoarding(_ sender: Any) {
		
		let instructions = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OnBoardController")
		instructions.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
		UIApplication.shared.keyWindow?.rootViewController?.present(instructions, animated: true, completion: nil)
		
//		performSegue(withIdentifier: "showOnBoarding", sender: nil)
		
	}

}
