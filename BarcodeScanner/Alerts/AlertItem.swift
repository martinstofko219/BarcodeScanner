//
//  AlertItem.swift
//  BarcodeScanner
//
//  Created by Martin Stofko on 8/19/22.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}
