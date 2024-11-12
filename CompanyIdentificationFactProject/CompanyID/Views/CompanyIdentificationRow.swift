//
//  CompanyIdentificationRow.swift
//  SearchMenu
//
//  Created by AdvocatesClose on 10/9/24.
//

import SwiftUI

struct CompanyIdentificationRow: View {
	
	var identifier: CompanyIdentification

	var body: some View {
		VStack {
			HStack {
				Text(identifier.key)
					.fontWeight(.medium)
				Spacer()
				Text(identifier.value)
					.fontWeight(.semibold)
					.foregroundStyle(.secondary)
			}
			.padding(.vertical, 1)
			.padding(.leading, identifier.indented ? 10 : 0)
			.font(.footnote)
		}
		Divider()
	}
}

#Preview("Company Identification Row") {
	let company = CompanyIdentification(
		id: "AdvocatesClose",
		key: "Advocates Close",
		value: "Value"
	)

	CompanyIdentificationRow(identifier: company)
		.frame(maxWidth: 300)
}

