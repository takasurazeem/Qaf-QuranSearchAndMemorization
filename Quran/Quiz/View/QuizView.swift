//
//  QuizView.swift
//  Quran
//
//  Created by Takasur Azeem on 30/07/2023.
//  Copyright © 2023 Eyad Shokry. All rights reserved.
//

import SwiftUI

struct QuizView: View {
    @StateObject var viewModel: ViewModel
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Picker("Surah", selection: $viewModel.selectedSurah) {
                        ForEach(viewModel.surahNames) { surah in
                            Text("\(surah.id) \(surah.title)")
//                            HStack {
//                                Text(surah.id)
//                                Text(surah.title)
//                            }
                        }
                    }
//                    .pickerStyle(.navigationLink)
                }
            }
            .navigationTitle("Prepare Quiz")
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(viewModel: QuizView.ViewModel())
    }
}
