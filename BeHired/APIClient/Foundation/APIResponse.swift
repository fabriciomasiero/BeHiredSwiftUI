//
//  APIResponse.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation

public struct APIResponse<T: Codable>: Codable {
    let data: T?
    
    private enum CodingKeys: String, CodingKey {
        case data
    }
}
