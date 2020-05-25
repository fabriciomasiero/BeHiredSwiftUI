//
//  Jobs.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation

public struct Jobs: Codable {
    public let id: String
    public let type: String
    public let url: String
    public let created: String
    public let company: String?
    public let companyUrl: String?
    public let location: String?
    public let title: String
    public let description: String
    public let apply: String
    public let companyLogo: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case url
        case created = "created_at"
        case company
        case companyUrl = "company_url"
        case location
        case title
        case description
        case apply = "how_to_apply"
        case companyLogo = "company_logo"
    }
}
