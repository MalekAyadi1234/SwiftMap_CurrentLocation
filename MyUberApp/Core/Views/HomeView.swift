//
//  HomeView.swift
//  MyUberApp
//
//  Created by Mallouka on 11/28/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
