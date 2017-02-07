//
//  TouchBarWindowController.swift
//  testtouchbar2
//
//  Created by Kajornsak Peerapathananont on 2/7/2560 BE.
//  Copyright © 2560 Kajornsak Peerapathananont. All rights reserved.
//

import Cocoa

@available(OSX 10.12.2, *)
class TouchBarWindowController: NSWindowController {

    
    @IBOutlet weak var touchBarSlider: NSSliderTouchBarItem!
    override func windowDidLoad() {
        super.windowDidLoad()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        self.touchBarSlider.slider.minValue = 0.0
        self.touchBarSlider.slider.maxValue = 100.0
        self.touchBarSlider.slider.doubleValue = 50.0
        self.touchBarSlider.slider.isContinuous = true
        self.touchBarSlider.target = self
        self.touchBarSlider.action = #selector(sliderChanged)
        
    }
    func sliderChanged(){
        print(self.touchBarSlider.slider.integerValue)
        
    }
    override func makeTouchBar() -> NSTouchBar? {
        <#code#>
    }
}
