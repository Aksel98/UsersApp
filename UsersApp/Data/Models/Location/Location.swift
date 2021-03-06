//
//  Location.swift
//  RenderforestUsers
//
//  Created by Aksel Avetisyan on 17.06.22.
//

import Foundation

struct Location: Decodable {
    let country: String
    let city: String
    let state: String
    let street: Street
    let coordinates: Coordinates
    
    func localTransform() -> LocationRealm {
        return LocationRealm(country: country, city: city, state: state, street: street.localTransform(), coordinates: coordinates.localTransform())
    }
}
