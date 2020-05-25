//
//  JobsRepository.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation
import Combine

public class JobsRepository {
    
    private let remoteData: JobsRemoteDataProtocol
    
    
    public init(remoteData: JobsRemoteDataProtocol) {
        self.remoteData = remoteData
    }
}

extension JobsRepository: JobsRemoteDataProtocol {
    public func getJobs(job category: String, page: Int) -> AnyPublisher<Jobs, JobsError> {
        return remoteData.getJobs(job: category, page: page)
    }
}
