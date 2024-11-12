//
//  CompanyIdentificationFact.swift
//  SearchMenu
//
//  Created by AdvocatesClose on 10/9/24.
//

import Foundation

struct CompanyIdentificationFact: Codable, Hashable, Identifiable {
	var name: String
	var ticker: String
	var cik: String
	var cusip: String
	var exchange: String
	var isDelisted: Bool?
	var category: String
	var sector: String
	var industry: String
	var sic: String
	var sicSector: String
	var sicIndustry: String
	var famaSector: String
	var famaIndustry: String
	var currency: String
	var location: String
	var id: String

	init(
		name: String = "",
		ticker: String = "",
		cik: String = "",
		cusip: String = "",
		exchange: String = "",
		isDelisted: Bool? = nil,
		category: String = "",
		sector: String = "",
		industry: String = "",
		sic: String = "",
		sicSector: String = "",
		sicIndustry: String = "",
		famaSector: String = "",
		famaIndustry: String = "",
		currency: String = "",
		location: String = "",
		id: String = ""
	) {
		self.name = name
		self.ticker = ticker
		self.cik = cik
		self.cusip = cusip
		self.exchange = exchange
//		self.isDelisted = isDelisted ?? nil : "True" ? "False"
		self.category = category
		self.sector = sector
		self.industry = industry
		self.sic = sic
		self.sicSector = sicSector
		self.sicIndustry = sicIndustry
		self.famaSector = famaSector
		self.famaIndustry = famaIndustry
		self.currency = currency
		self.location = location
		self.id = id
	}
}
