//
//  UIVIewControllerExt.swift
//  ViPER
//
//  Created by Sagar Dabhi on 10/02/2022.
//

import Foundation
import UIKit
import SafariServices

extension UIViewController {
    func showLoader() {
        
    }
    
    func hideLoader() {
        
    }
    
    func setTitle(strTitle: String) {
        title = strTitle
    }
    
    func openURL(strUrl: String) {
        if let url = URL(string: strUrl) {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true

            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        }
    }
}
