//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Brian Ortiz on 2023-05-26.
//

import SwiftUI

struct CalculatorView: View {
    
    @StateObject var viewModel = CalculatorViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            
            Text(viewModel.labelValue)
                .foregroundColor(.white)
                .font(Font.system(size: 70))
                .frame(height: 100)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.top, 80)
                .padding(.trailing, 10)
            HStack(spacing: 10) {
                Button {
                    viewModel.calcPressed(symbol: "AC")
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color("LightGray"))
                        Text("AC")
                            .foregroundColor(.black)
                            .font(Font.system(size: 25))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.calcPressed(symbol: "+/-")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("LightGray"))
                        Text("+/-")
                            .foregroundColor(.black)
                            .font(Font.system(size: 25))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.calcPressed(symbol: "%")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("LightGray"))
                        Text("%")
                            .foregroundColor(.black)
                            .font(Font.system(size: 25))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.calcPressed(symbol: "÷")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("Orange"))
                        Text("÷")
                            .foregroundColor(.white)
                            .font(Font.system(size: 45))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(maxHeight: .infinity)
            
            HStack(spacing: 10) {
                Button {
                    viewModel.numberPressed(number: "7")
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("7")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.numberPressed(number: "8")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("8")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.numberPressed(number: "9")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("9")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.calcPressed(symbol: "×")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("Orange"))
                        Text("×")
                            .foregroundColor(.white)
                            .font(Font.system(size: 45))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(maxHeight: .infinity)
            
            HStack(spacing: 10) {
                Button {
                    viewModel.numberPressed(number: "4")
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("4")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.numberPressed(number: "5")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("5")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.numberPressed(number: "6")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("6")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.calcPressed(symbol: "-")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("Orange"))
                        Text("-")
                            .foregroundColor(.white)
                            .font(Font.system(size: 45))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(maxHeight: .infinity)
            
            HStack(spacing: 10) {
                Button {
                    viewModel.numberPressed(number: "1")
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("1")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.numberPressed(number: "2")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("2")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.numberPressed(number: "3")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("DarkGray"))
                        Text("3")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button {
                    viewModel.calcPressed(symbol: "+")
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(Color("Orange"))
                        Text("+")
                            .foregroundColor(.white)
                            .font(Font.system(size: 45))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(maxHeight: .infinity)
            
            HStack(spacing: 10) {
                Button {
                    viewModel.numberPressed(number: "0")
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(Color("DarkGray"))
                            .cornerRadius(100)
                        Text("0")
                            .foregroundColor(.white)
                            .font(Font.system(size: 40))
                    }
                    .frame(maxHeight: .infinity)
                }.padding(.vertical, 15)
                
                HStack(spacing: 10) {
                    Button {
                        viewModel.numberPressed(number: ".")
                    } label: {
                        
                        ZStack {
                            Circle()
                                .fill(Color("DarkGray"))
                            Text(".")
                                .foregroundColor(.white)
                                .font(Font.system(size: 35))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    Button {
                        viewModel.calcPressed(symbol: "=")
                    } label: {
                        
                        ZStack {
                            Circle()
                                .fill(Color("Orange"))
                            Text("=")
                                .foregroundColor(.white)
                                .font(Font.system(size: 45))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                
                
                
                
            }
            
            Spacer()
            
            
        }
        .padding(.horizontal, 10)
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
