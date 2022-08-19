//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Rectangle().frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                
                Label("Scaned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title3)
                
                Text("Not Yet Scanned")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
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
