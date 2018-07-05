//
//  ViewController.swift
//  DummyAppMac
//
//  Created by Ethan Lin on 7/5/18.
//  Copyright © 2018 University of Wisconsin System Office of Academic and Student Affairs. All rights reserved.
//

import Cocoa
import SbPlusXmlManager

class ViewController: NSViewController {

    @IBOutlet var output: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getXMLPath();
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func getXMLPath() {
        
        let xmlMngr = SbXmlManager()
        
        do {
            output.string = try xmlMngr.read( path: "Desktop/sbplus.xml" );
        } catch let error as NSError {
            output.string = error.localizedFailureReason!;
        }
        
    }

}

