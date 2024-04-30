//
//  GalleryDataModel.swift
//  PhotoGalleryPractical
//
//  Created by Anand Panchal on 29/04/24.
//

import Foundation

struct GalleryDataModel : Codable {
	let products : [Products]?
	let total : Int?
	let skip : Int?
	let limit : Int?
}

struct Products : Codable {
    let id : Int?
    let title : String?
    let description : String?
    let price : Int?
    let discountPercentage : Double?
    let rating : Double?
    let stock : Int?
    let brand : String?
    let category : String?
    let thumbnail : String?
    let images : [String]?
}
