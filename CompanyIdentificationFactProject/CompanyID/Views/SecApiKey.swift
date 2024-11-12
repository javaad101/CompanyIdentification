//
//  APIKey.swift
//  Atlas-Javaadica
//
//  Created by AdvocatesClose on 9/16/24.
//

import Foundation

enum SecApiKey {
	/// Fetch the API key from `SEC-API-Info.plist`
	static var `default`: String {
		guard let filePath = Bundle.main.path(forResource: "SEC-API-Info", ofType: "plist")
		else {
			fatalError("Couldn't find file 'SEC-API-Info.plist'.")
		}
		let plist = NSDictionary(contentsOfFile: filePath)
		guard let value = plist?.object(forKey: "Authorization") as? String else {
			fatalError("Couldn't find key 'Authorization' in 'SEC-API-Info.plist'.")
		}
		if value.isEmpty {
			print("Please provide API key")
		}
		return value
	}
}

