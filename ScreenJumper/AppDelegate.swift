//
//  AppDelegate.swift
//  Demo
//
//  Created by Tiou Lims on 2020/6/24.
//  Copyright © 2020 Tiou Lims. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var menu: NSMenu?
    @IBOutlet weak var firstMenuItem: NSMenuItem?
    
    var statusItem: NSStatusItem?
    
    @IBAction func openPerference(_ sender: Any){
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateController(withIdentifier: .init(stringLiteral: "preferencesID")) as? ViewController else { return }
        let window = NSWindow(contentViewController: vc)
           window.makeKeyAndOrderFront(nil)
//        if(self.window == nil){
//            // Create the SwiftUI view that provides the window contents.
//            let contentView = ContentView()
//            // Create the window and set the content view.
//            let window = NSWindow(
//                contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
//                styleMask: [.titled, .closable,
//                            .fullSizeContentView],
//                backing: .buffered, defer: false)
//            window.center()
//            window.setFrameAutosaveName("Main Window")
//            window.contentView = NSHostingView(rootView: contentView)
//            window.makeKeyAndOrderFront(nil)
//            self.window = window
//        }else{
//            NSApp.activate(ignoringOtherApps: true)
//        }
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem?.button?.title = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
        if let menu = menu {
            statusItem?.menu = menu
        }
        
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
}

