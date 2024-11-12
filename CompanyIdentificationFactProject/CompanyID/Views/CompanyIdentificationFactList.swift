//
//  File.swift
//  SearchMenu
//
//  Created by AdvocatesClose on 10/13/24.
//
import SwiftUI

struct CompanyIdentificationFactList: View {

	var companyIdentificationFact: CompanyIdentificationFact

	var body: some View {
		HStack(alignment: .center) {
			VStack(alignment: .leading) {
				Text(companyIdentificationFact.name)
					.font(.title2)
					.bold()
			}
			Spacer()
			CompanyIdentifiersBlock(
				companyIdentificationFact: companyIdentificationFact
			)
		}
		.padding(20)
	}
}

#Preview("Company ID List") {
	let sampleData = CompanyIdentificationFact.sampleData[0]
	CompanyIdentificationFactList(companyIdentificationFact: sampleData)
}
