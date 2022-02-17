//
//  EnvironmentValues+ImageCache.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 15/02/22.
//

import UIKit
import SystemConfiguration
import SwiftUI

struct ImageCacheKey: EnvironmentKey {
    static let defaultValue: ImageCache = TemImageCache()
}

extension EnvironmentValues {
    var imageCache: ImageCache {
        get { self[ImageCacheKey.self] }
        set { self[ImageCacheKey.self] = newValue}
    }
}
