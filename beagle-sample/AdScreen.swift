//
//  MyBeagleScreen.swift
//  beagle-sample
//
//  Created by Wesley Araujo on 23/12/20.
//  Copyright © 2020 Wesley Araujo. All rights reserved.
//

import Foundation
import Beagle
import BeagleSchema
import AnimationComponent


class AdScreen {
    
    private var adId = 0
    
    init(adId: Int) {
        self.adId = adId
    }
    
    var screen: Screen {
        return Screen(child: buildChild())
    }
    
    func buildChild() -> Container {
        
        switch adId {
        case 0:
            return Container(children: [
                 AnimationComponent(url: "https://assets7.lottiefiles.com/packages/lf20_c9miik7h.json", height: 300)
            ])
        case 1:
            return Container(children: [
                 AnimationComponent(url: "https://assets1.lottiefiles.com/private_files/lf30_5jj6fmwh.json", height: 300)
            ])
        case 2:
            return Container(children: [
                 AnimationComponent(url: "https://assets6.lottiefiles.com/packages/lf20_ppx95ygz.json", height: 300)
            ])
        default:
            return Container(children: [
                 AnimationComponent(url: "https://assets7.lottiefiles.com/packages/lf20_c9miik7h.json", height: 300)
            ])
        }
    }
}
