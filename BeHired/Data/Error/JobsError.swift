//
//  JobsError.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation

public enum JobsError: Error {
    case parsing(description: String)
    case network(description: String)
    case intern(description: String)
}
