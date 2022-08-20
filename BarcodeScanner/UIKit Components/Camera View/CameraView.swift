//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import SwiftUI

struct CameraView: UIViewControllerRepresentable {
    
    @Binding var scannedBarcode: String
    @Binding var alertItem: AlertItem?
    
    func makeUIViewController(context: Context) -> CameraViewController {
        CameraViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: CameraViewController, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(cameraView: self)
    }
    
    final class Coordinator: NSObject, CameraViewControllerDelegate {
        private let cameraView: CameraView
        
        init(cameraView: CameraView) {
            self.cameraView = cameraView
        }
        
        func didFind(barcode: String) {
            cameraView.scannedBarcode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error {
            case .invalidDeviceInput:
                cameraView.alertItem = AlertContext.invalidDeviceInput
            case .invalidScanType:
                cameraView.alertItem = AlertContext.invalidScanType
            }
        }
    }
}
