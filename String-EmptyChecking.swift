//
//  String-EmptyChecking.swift
//  CupcakeCorner_12.06
//
//  Created by ionut.binisor on 16.06.2023.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
