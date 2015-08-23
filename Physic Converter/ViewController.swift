//
//  ViewController.swift
//  Physic Converter
//
//  Created by Hongze Xia on 22/08/2015.
//  Copyright (c) 2015 Hongze Xia. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear() {
        energyComboLeft.selectItemAtIndex(0)
        energyComboRight.selectItemAtIndex(1)
        lengthComboLeft.selectItemAtIndex(0)
        lengthComboRight.selectItemAtIndex(1)
    }
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet weak var energyTextLeft: NSTextField!
    @IBOutlet weak var energyTextRight: NSTextField!
    @IBOutlet weak var energyComboLeft: NSComboBox!
    @IBOutlet weak var energyComboRight: NSComboBox!
    @IBOutlet weak var lengthTextLeft: NSTextField!
    @IBOutlet weak var lengthTextRight: NSTextField!
    @IBOutlet weak var lengthComboLeft: NSComboBox!
    @IBOutlet weak var lengthComboRight: NSComboBox!

    @IBAction func convertEnergyLeft(sender: AnyObject) {
        let leftSelection = energyComboLeft.stringValue
        let rightSelection = energyComboRight.stringValue
        let inputValue = energyTextLeft.doubleValue
        let result = convertEnergy(leftSelection, inputValue, rightSelection)
        energyTextRight.doubleValue = result
//        println("The selected item is \(result)")
    }
    @IBAction func convertEnergyRight(sender: AnyObject) {
        let leftSelection = energyComboLeft.stringValue
        let rightSelection = energyComboRight.stringValue
        let inputValue = energyTextRight.doubleValue
        let result = convertEnergy(rightSelection, inputValue, leftSelection)
        energyTextLeft.doubleValue = result
    }
    @IBAction func convertLengthLeft(sender: AnyObject) {
        let leftSelection = lengthComboLeft.stringValue
        let rightSelection = lengthComboRight.stringValue
        let inputValue = lengthTextLeft.doubleValue
        let result = convertLength(leftSelection, inputValue, rightSelection)
        lengthTextRight.doubleValue = result
    }
    @IBAction func convertLengthRight(sender: AnyObject) {
        let leftSelection = lengthComboLeft.stringValue
        let rightSelection = lengthComboRight.stringValue
        let inputValue = lengthTextRight.doubleValue
        let result = convertLength(rightSelection, inputValue, leftSelection)
        lengthTextLeft.doubleValue = result
    }

}

