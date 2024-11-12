	//
	//  CompanyIdentificationView.swift
	//  SearchMenu
	//
	//  Created by AdvocatesClose on 10/9/24.
	//


import SwiftUI

struct CompanyIdentificationView: View {

	@State private var searchResults: [CompanyIdentificationFact] = []
	@State private var nameSearch: String = ""

	var body: some View {
		NavigationStack {
			List {
				ForEach(searchResults, id: \.self) { searchResult in
					NavigationLink {
						CompanyIdentificationFactList(companyIdentificationFact: searchResult)
					} label: {
						CompanyIdentificationLabel(companyIdentificationFact: searchResult)
					}
				}
			}
			.searchable(text: $nameSearch)
			.onSubmit(of: .search) {
				print(nameSearch)
				Task {
					do {
						searchResults = try await fetchSearchResults(for: nameSearch)
					} catch {
						print(error)
					}
				}
			}
		}
	}

	func fetchSearchResults(for name: String) async throws -> [CompanyIdentificationFact] {

		let apiKey = SecApiKey.default

		let url = URL(string: "https://api.sec-api.io/mapping/name/\(name)")!

		let headers = [
			"Content-Type": "application/json",
			"Accept": "application/json",
			"Authorization": apiKey
		]

		var request = URLRequest(url: url)
		request.httpMethod = "GET"
		request.allHTTPHeaderFields = headers

		let (data, _) = try await URLSession.shared.data(for: request)
		let responses = try JSONDecoder().decode([CompanyIdentificationFact].self, from: data)

		return responses
	}
}


#Preview("Company Identification") {
	CompanyIdentificationView()
}
