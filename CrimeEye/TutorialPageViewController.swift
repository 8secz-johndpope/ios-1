//
//  TutorialPageViewController.swift
//  CrimeEye
//
//  Created by Gurpreet Paul on 02/12/2015.
//  Copyright © 2015 Crime Eye. All rights reserved.
//

import UIKit

class TutorialPageViewController: UIPageViewController,
    UIPageViewControllerDataSource,
    UIPageViewControllerDelegate {
    
    var pages = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.dataSource = self
        
        
        let page1: UIViewController! = storyboard?.instantiateViewControllerWithIdentifier("FirstViewController")
        let page2: UIViewController! = storyboard?.instantiateViewControllerWithIdentifier("SecondViewController")
        
        pages.append(page1)
        pages.append(page2)
        
        setViewControllers([page1], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let currentIndex = pages.indexOf(viewController)!
        let previousIndex = (currentIndex - 1)
        if (previousIndex < 0) {
            return nil
        }
        return pages[previousIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let currentIndex = pages.indexOf(viewController)!
        let nextIndex = currentIndex + 1
        if (nextIndex >= pages.count) {
            return nil
        }
        return pages[nextIndex]
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
}