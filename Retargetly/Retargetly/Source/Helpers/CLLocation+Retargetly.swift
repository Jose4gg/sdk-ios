//
//  CLLocation+Retargetly.swift
//  Retargetly
//
//  Created by José Valderrama on 17/06/2018.
//  Copyright © 2018 NextDots. All rights reserved.
//

import Foundation
import CoreLocation

extension CLLocation {
    public var formatted: String {
        return "\(self.coordinate.latitude);\(self.coordinate.longitude);\(self.altitude)"
    }
}
