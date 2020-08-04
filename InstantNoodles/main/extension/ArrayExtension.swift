//
//  ArrayExtension.swift
//  InstantNoodles
//
//  Created by apple on 2020/7/31.
//  Copyright © 2020 qiao. All rights reserved.
//

import Foundation

extension Array {
    subscript(nullable idx: Int) -> Element? {
        if (startIndex..<endIndex).contains(idx) {
            return self[idx]
        } else {
            return nil
        }
    }
}
