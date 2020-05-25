//
//  JobsListView.swift
//  BeHired
//
//  Created by Fabrício Masiero on 25/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import SwiftUI

struct JobsListView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "folder.fill").resizable().aspectRatio(contentMode: .fit)
            Text("iOS Developer")
            Text("San Francisco - CA")
            Text("Slack HQ")
        }.overlay(
            RoundedRectangle(cornerRadius: 20).stroke()
        )
    }
}
struct JobsListView_Previews: PreviewProvider {
    static var previews: some View {
        JobsListView()
    }
}
