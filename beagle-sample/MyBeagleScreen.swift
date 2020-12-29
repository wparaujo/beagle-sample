//
//  MyBeagleScreen.swift
//  beagle-sample
//
//  Created by Wesley Araujo on 23/12/20.
//  Copyright © 2020 Wesley Araujo. All rights reserved.
//

import Foundation
import Beagle

class BeagleConfig {
    static func config() {
        let dependencies = BeagleDependencies()
        dependencies.urlBuilder = UrlBuilder(baseUrl: URL(string: ""))
        Beagle.dependencies = dependencies
    }
}
