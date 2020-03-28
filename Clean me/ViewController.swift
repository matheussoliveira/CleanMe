//
//  ViewController.swift
//  Clean me
//
//  Created by Matheus Oliveira on 16/03/20.
//  Copyright © 2020 Matheus Oliveira. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.wantsLayer = true
    }
    
    override func viewDidAppear() {
        
        // Setting fullscreen
        let presOptions: NSApplication.PresentationOptions = [.fullScreen, .autoHideMenuBar]
        let optionsDictionary = [NSView.FullScreenModeOptionKey.fullScreenModeApplicationPresentationOptions: presOptions]
        view.enterFullScreenMode(NSScreen.main!, withOptions: optionsDictionary)
        view.wantsLayer = true
    }

    override var representedObject: Any? {
        didSet {
        }
    }

    override func awakeFromNib() {
        if self.view.layer != nil {
            self.view.layer?.backgroundColor = CGColor.black
        }
    }
}

