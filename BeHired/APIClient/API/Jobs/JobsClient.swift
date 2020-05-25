//
//  JobsClient.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation
import Combine

public class JobsClient: APIClient {
    
    var path: String = ""
    private let urlSession: URLSession
    private let domain: URL?
    
    required init(session: URLSession, domain: URL?) {
        self.urlSession = session
        self.domain = domain
    }
}
extension JobsClient: JobsRemoteDataProtocol {
    
    public func getJobs(job category: String, page: Int) -> AnyPublisher<Jobs, JobsError> {
        guard let domainString = domain?.absoluteString,
            let url = URL(string: String(describing: "\(domainString)/\(path)")) else {
                let error = JobsError.intern(description: "Couldnt create URL")
                return Fail(error: error).eraseToAnyPublisher()
        }
        let urlRequest = URLRequest(url: url)
        return urlSession.dataTaskPublisher(for: urlRequest).mapError { error in
            .network(description: error.localizedDescription)
        }.flatMap { data in
            decode(data.data)
        }.eraseToAnyPublisher()
    }
}
