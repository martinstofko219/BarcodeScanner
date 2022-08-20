//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import SwiftUI

struct CameraView: UIViewControllerRepresentable {
    
    @Binding var scannedBarcode: String
    
    func makeUIViewController(context: Context) -> ScannerViewController {
        ScannerViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(cameraView: self)
    }
    
    final class Coordinator: NSObject, ScannerViewControllerDelegate {
        private let cameraView: CameraView
        
        init(cameraView: CameraView) {
            self.cameraView = cameraView
        }
        
        func didFind(barcode: String) {
            cameraView.scannedBarcode = barcode
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView(scannedBarcode: .constant("12345"))
    }
}
