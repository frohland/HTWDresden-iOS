//
//  SideMenuContainerNavigationController.swift
//  HTWDD
//
//  Created by Mustafa Karademir on 19.06.19.
//  Copyright © 2019 HTW Dresden. All rights reserved.
//

import Foundation
import SideMenu

class SideMenuContainerNavigationController: NavigationController {
    
    weak var coordinator: AppCoordinator?
    
    lazy var sideMenuManager: SideMenuManager = {
       return SideMenuManager.default
    }()
    
    private lazy var sideMenuViewController: SideMenuViewController = {
       return UIStoryboard(name: "SideMenu", bundle: nil).instantiateViewController(withIdentifier: "SideMenuVC") as! SideMenuViewController
    }()
    
    override func viewDidLoad() {
        sideMenuManager.apply {
            sideMenuViewController.coordinator = self.coordinator
            $0.menuLeftNavigationController = UISideMenuNavigationController(rootViewController: self.sideMenuViewController)
            $0.menuPushStyle        = .preserveAndHideBackButton
            $0.menuPresentMode      = .menuSlideIn
            $0.menuWidth            = 290.0
            $0.menuFadeStatusBar    = false
            
            if let _ = viewControllers.first {
                $0.menuAddScreenEdgePanGesturesToPresent(toView: self.view, forMenu: UIRectEdge.left)
            }
        }
    }
    
}
