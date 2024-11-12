//
//  CompanyIdentificationLable.swift
//  SearchMenu
//
//  Created by AdvocatesClose on 10/13/24.
//

import SwiftUI

struct CompanyIdentificationLabel: View {

	var companyIdentificationFact: CompanyIdentificationFact

	var body: some View {
		VStack(alignment: .leading) {
			Text(companyIdentificationFact.name)
				.font(.caption)
			HStack(alignment: .bottom) {
				Text("\(companyIdentificationFact.exchange):\(companyIdentificationFact.ticker)")
					.font(.caption2)
				Spacer()
			}
		}
	}
}


#Preview {
	let sampleData = CompanyIdentificationFact.sampleData[0]
	CompanyIdentificationLabel(companyIdentificationFact: sampleData)
}

