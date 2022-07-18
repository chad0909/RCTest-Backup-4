//
//  DifferentLoginDataResponse.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/18.
//


import Foundation

// MARK: - GetLoginVerificationMessage
struct GetLoginVerificationMessage: Codable {
    let isSuccess: Bool?
    let code: Int?
    let message: String?
    let result: String?

    enum CodingKeys: String, CodingKey {
        case isSuccess
        case code
        case message
        case result
    }
}
