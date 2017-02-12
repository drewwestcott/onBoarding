//
//  OnBoardingVC.swift
//  onBoarding
//
//  Created by Drew Westcott on 11/02/2017.
//  Copyright © 2017 Drew Westcott. All rights reserved.
//

import UIKit

class OnBoardingVC: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

	let pages = ["OnBoarding1VC","OnBOarding2VC"]
	
    override func viewDidLoad() {
        super.viewDidLoad()

		self.delegate = self
		self.dataSource = self
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		let vc = self.storyboard?.instantiateViewController(withIdentifier: "OnBoarding1VC")
		setViewControllers([vc!], direction: .forward, animated: true, completion: nil)
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		for view in view.subviews {
			if view is UIScrollView {
				view.frame = UIScreen.main.bounds
			}
			else if view is UIPageControl {
				view.backgroundColor = UIColor.clear
			}
		}
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
		
		if let idofVC = viewController.restorationIdentifier {
			if let index = pages.index(of: idofVC) {
				if index < pages.count-1{
					return self.storyboard?.instantiateViewController(withIdentifier: pages[index-1])
				}
			}
		}
		
		return nil
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
		
		if let idofVC = viewController.restorationIdentifier {
			if let index = pages.index(of: idofVC) {
				if index > 0 {
					return self.storyboard?.instantiateViewController(withIdentifier: pages[index-1])
				}
			}
		}
		return nil
}
	
	func presentationCount(for pageViewController: UIPageViewController) -> Int {
		
		return pages.count
		
	}
	
	func presentationIndex(for pageViewController: UIPageViewController) -> Int {
		
		if let idofVC = viewControllers?.first?.restorationIdentifier {
			if let index = pages.index(of: idofVC) {
				return index
			}
		}
		return 0
		
		
	}

}
