//
//  CustomView.swift
//  CircularPageControll
//
//  Created by Vaibhav Sharma on 12/09/19.
//

import UIKit

import UIKit

class PageViewController: UIPageViewController
{
    fileprivate lazy var pages: [UIViewController] = {
        return [
            self.getViewController(withIdentifier: "Page1"),
            self.getViewController(withIdentifier: "Page2"),
            self.getViewController(withIdentifier: "Page3")
        ]
    }()
    
    private var pendingIndex: Int?
    
    
    var pageControll: UIPageControl?
    fileprivate func getViewController(withIdentifier identifier: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate   = self
        
        if let firstVC = pages.first
        {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for view in self.view.subviews {
            if view is UIPageControl {
                view.backgroundColor  = UIColor.red.withAlphaComponent(0.9)
            }
        }
    }
}

extension PageViewController: UIPageViewControllerDataSource
{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard  previousIndex >= 0 else {
            return pages.last
        }
        
        guard pages.count > previousIndex else {
            return nil
        }
        
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < pages.count else {
            return pages.first
        }
        
        guard pages.count > nextIndex else {
            return nil
        }
        
        return pages[nextIndex]
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = pages.firstIndex(of: firstViewController) else {
                return 0
        }
        
        return firstViewControllerIndex
    }
}

extension PageViewController: UIPageViewControllerDelegate { }
