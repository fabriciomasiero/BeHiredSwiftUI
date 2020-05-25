//
//  JobsUseCase.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation
import Combine

public class JobsUseCase {
    
    private let repository: JobsRepositoryProtocol
    
    public init(repository: JobsRepositoryProtocol) {
        self.repository = repository
    }
}

extension JobsUseCase: JobsUseCaseProtocol {
    public func execute(jobsCategory: String, page: Int) -> AnyPublisher<Jobs, JobsError> {
        return repository.getJobs(job: jobsCategory, page: page)
    }
}
