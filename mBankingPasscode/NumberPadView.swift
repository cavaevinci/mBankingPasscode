//
//  NumberPadView.swift
//  mBankingPasscode
//
//  Created by Nino on 23.03.2024..
//

import SwiftUI

struct NumberPadView: View {
    
    @Binding var passcode: String
    
    private let shuffledNumpadKeys = (1...9).shuffled()
    
    private let columns: [GridItem] = [
        .init(),
        .init(),
        .init()
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(shuffledNumpadKeys, id: \.self) { index in
                Button {
                    addValue(index)
                } label: {
                    Text("\(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .contentShape(.rect)
                }
            }
            
            Button {
                removeValue()
            } label: {
                Image(systemName: "delete.backward")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .contentShape(.rect)
            }
            
            Button {
                addValue(0)
            } label: {
                Text("0")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .contentShape(.rect)
            }
        }
        .foregroundStyle(.primary)
    }
    
    private func addValue(_ value: Int) {
        if passcode.count < 4 {
            passcode += "\(value)"
        }
    }
    
    private func removeValue() {
        if !passcode.isEmpty {
            passcode.removeLast()
        }
    }
}

#Preview {
    NumberPadView(passcode: .constant("12"))
}
