//
//  File.swift
//  SearchMenu
//
//  Created by AdvocatesClose on 10/9/24.
//


import SwiftUI

extension CompanyIdentificationFact {
	var companyIdentifications: [CompanyIdentification] {
		[
//			CompanyIdentification(
//				id: "companyName",
//				key: "Name",
//				value: name
//			),
			CompanyIdentification(
				id: "ticker",
				key: "Ticker",
				value: ticker),
			CompanyIdentification(
				id: "cik",
				key: "CIK",
				value: cik
			),
			CompanyIdentification(
				id: "cusip",
				key: "CUSIP",
				value: cusip
			),
			CompanyIdentification(
				id: "exchange",
				key: "Exchange",
				value: exchange
			),
//			CompanyIdentification(
//				id: "isDelisted",
//				key: "Delisted?",
//				value: "False"
//			),
//			CompanyIdentification(
//				id: "category",
//				key: "Category",
//				value: category
//			),
			CompanyIdentification(
				id: "sector",
				key: "Sector",
				value: sector
			),
			CompanyIdentification(
				id: "industry",
				key: "Industry",
				value: industry
			),
			CompanyIdentification(
				id: "sic",
				key: "SIC",
				value: sic
			),
//			CompanyIdentification(
//				id: "sicIndustry",
//				key: "SIC Industry",
//				value: sicIndustry
//			),
			CompanyIdentification(
				id: "currency",
				key: "Currency",
				value: currency
			),
			CompanyIdentification(
				id: "location",
				key: "Domicile",
				value: location
			)
		]
	}
}


