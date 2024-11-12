//
//  CompanyIdentifiersBlock.swift
//  SearchMenu
//
//  Created by AdvocatesClose on 10/31/24.
//
import SwiftUI


struct CompanyIdentifiersBlock: View {

	var companyIdentificationFact: CompanyIdentificationFact
	
	var body: some View {
		VStack(spacing: 0) {
			ForEach(companyIdentificationFact.companyIdentifications) { companyIdentification in
				CompanyIdentificationRow(identifier: companyIdentification)
			}
		}
		.frame(maxWidth: 200)
	}
}
