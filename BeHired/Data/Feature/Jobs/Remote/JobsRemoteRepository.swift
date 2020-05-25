//
//  JobsRemoteDataProtocol.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation
import Combine

public protocol JobsRemoteDataProtocol {
    
    func getJobs(job category: String, page: Int) -> AnyPublisher<Jobs, JobsError>
}
