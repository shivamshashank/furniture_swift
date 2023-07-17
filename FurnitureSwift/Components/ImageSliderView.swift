//
//  ImageSliderView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var sliderImagesList: [String] = ["furniture_1", "furniture_2", "furniture_3", "furniture_4", "furniture_5",]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(sliderImagesList[currentIndex])
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 180)
                .cornerRadius(12)
            HStack {
                ForEach(0..<sliderImagesList.count, id: \.self) { index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }.padding()
        }.onAppear {
            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
                if (currentIndex + 1 == sliderImagesList.count) {
                    currentIndex = 0
                } else {
                    currentIndex += 1
                }
            }
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
