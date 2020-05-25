//
//  APIClient.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation

protocol APIClient {
    
    var path: String { get }
    
    init(session: URLSession, domain: URL?)
}
