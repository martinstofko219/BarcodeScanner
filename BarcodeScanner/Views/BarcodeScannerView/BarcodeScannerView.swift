//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                CameraView(scannedBarcode: $viewModel.scannedBarcode, alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                
                Spacer()
                
                Label("Scaned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title3)
                
                Text(viewModel.statusText)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(viewModel.statusColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            // try a new way of implementing alert
            .alert(item: $viewModel.alertItem, content: { a in
                Alert(title: Text(a.title),
                      message: Text(a.message),
                      dismissButton: a.dismissButton)
            })
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
