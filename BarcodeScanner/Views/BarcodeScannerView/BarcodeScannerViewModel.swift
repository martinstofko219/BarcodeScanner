//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedBarcode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedBarcode.isEmpty ? "Not Yet Scanned" : scannedBarcode
    }
    
    var statusColor: Color {
        scannedBarcode.isEmpty ? .gray : .green
    }
}
