//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedBarcode = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                CameraView(scannedBarcode: $scannedBarcode).frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                
                Label("Scaned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title3)
                
                Text(scannedBarcode.isEmpty ? "Not Yet Scanned" : scannedBarcode)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(scannedBarcode.isEmpty ? .gray : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
            
    }
}
