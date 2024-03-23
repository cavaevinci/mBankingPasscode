//
//  PasscodeView.swift
//  mBankingPasscode
//
//  Created by Nino on 23.03.2024..
//

import SwiftUI

struct PasscodeView: View {
    
    @State private var passcode = ""
    
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 24) {
                Text("Enter Passcode")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text("Please enter your 4-digit pin")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.top)
            
            Spacer()
            
            NumberPadView()
        }
        
    }
}

#Preview {
    PasscodeView()
}
