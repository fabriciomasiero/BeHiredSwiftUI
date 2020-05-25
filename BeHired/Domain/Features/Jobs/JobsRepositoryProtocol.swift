//
//  JobsRepositoryProtocol.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Combine

public protocol JobsRepositoryProtocol {
    
    func getJobs(job category: String, page: Int) -> AnyPublisher<Jobs, JobsError>
}
