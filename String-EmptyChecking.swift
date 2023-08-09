//
//  String-EmptyChecking.swift
//  CupcakeCorner_12.06
//
//  Created by Binisor Lavinia on 16.06.2023.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
