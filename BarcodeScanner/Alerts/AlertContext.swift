//
//  AlertContext.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import SwiftUI

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Camera Failure",
        message: "We are unable to use the camera.",
        dismissButton: .default(Text("Ok")))
    
    static let invalidScanType = AlertItem(
        title: "Invalid Barcode",
        message: "This app only scans EAN-8 and EAN-13 barcodes.",
        dismissButton: .default(Text("Ok")))
}
