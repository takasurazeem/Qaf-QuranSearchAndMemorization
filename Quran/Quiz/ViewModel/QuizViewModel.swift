//
//  QuizViewModel.swift
//  Quran
//
//  Created by Takasur Azeem on 30/07/2023.
//  Copyright © 2023 Eyad Shokry. All rights reserved.
//

import Foundation

extension QuizView {
    class ViewModel: ObservableObject {
        
        init() {
            loadSurahNames()
        }
        
        func loadSurahNames() {
            surahNames = Bundle.main.decode(SurahNames.self, from: "SurahNames.json")
            selectedSurah = surahNames.first!
            
        }

        @Published var selectedSurah = SurahName(
            place: .mecca,
            type: .makkiyah,
            count: 7,
            title: "Al-Fatiha",
            titleAr: "الفاتحة",
            index: "001",
            pages: "1",
            juz: [])
        @Published var surahNames = SurahNames()
    }
}
