//
//  ContentView.swift
//  Netflix UI
//
//  Created by Roma Marshall on 22.03.21.
//

import SwiftUI

struct ContentView: View {
    let height: CGFloat = UIScreen.main.bounds.size.width * 1.54
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            VStack {
                Image("main")
                    .resizable()
                    .frame(width: .infinity, height: height)
                    .ignoresSafeArea(.all)
                Spacer()
            }
            
            VStack {
                HStack {
                    NetflixLogoView()
                    Spacer()
                    Image(systemName: "display.2")
                        .foregroundColor(.white)
                        .font(.title2)
                    Image(systemName: "person.crop.circle")
                        .foregroundColor(.white)
                        .font(.title2)
                }
                .padding(.horizontal)
                
                HStack {
                    Spacer()
                    Text("Serien")
                        .foregroundColor(.white)
                        .font(.title3)
                    Spacer()
                    Text("Filme")
                        .foregroundColor(.white)
                        .font(.title3)
                    Spacer()
                    Text("Kategorien")
                        .foregroundColor(.white)
                        .font(.title3)
                    Image(systemName: "arrowtriangle.down.fill")
                        .foregroundColor(.white)
                        .font(.footnote)
                    Spacer()
                }
                
                VStack {
                    Spacer()
                        .frame(height: 260)
                    HStack {
                        NetflixLogoView()
                        Text("FILM")
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.bold)
                            .tracking(7)
                    }
                    Spacer()
                    
                    
                    HStack {
                        Text("Anschwellende Spannung")
                            .foregroundColor(.white)
                            .font(.footnote)
                        Text("•")
                            .foregroundColor(.orange)
                        Text("Brutal")
                            .foregroundColor(.white)
                            .font(.footnote)
                        Text("•")
                            .foregroundColor(.orange)
                        Text("Düster")
                            .foregroundColor(.white)
                            .font(.footnote)
                        Text("•")
                            .foregroundColor(.orange)
                        Text("Thriller")
                            .foregroundColor(.white)
                            .font(.footnote)
                    }
                    .padding(.top, 160)
                    
                    HStack {
                        Spacer()
                        
                        VStack {
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                                .font(.title2)
                            Text("Meine Liste")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "arrowtriangle.right.fill")
                            Text("Abspielen")
                                .fontWeight(.bold)
                                .font(.subheadline)
                        }
                        .padding(8)
                        .background(Color.white)
                        .cornerRadius(3)
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "info.circle")
                                .foregroundColor(.white)
                                .font(.title2)
                            Text("Info")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                    }
                    .padding(.top, 8)
                    
                    HStack {
                        Text("Meine Liste")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.title3)
                        Spacer()
                    }
                    .padding(.top, 8)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1..<7) {index in
                                Image("main")
                                    .resizable()
                                    .frame(width: 105, height: 162)
                                    .cornerRadius(3)
                            }
                        }
                    }
                    
                    HStack {
                        
                        VStack {
                            Image(systemName: "house")
                                .foregroundColor(.white)
                                .font(.title2)
                            Text("Startseite")
                                .foregroundColor(.white)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "play.tv")
                                .foregroundColor(.white)
                                .font(.title2)
                            Text("Demnächst")
                                .foregroundColor(.white)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .font(.title2)
                            Text("Suche")
                                .foregroundColor(.white)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "icloud.and.arrow.down")
                                .foregroundColor(.white)
                                .font(.title2)
                            Text("Downloads")
                                .foregroundColor(.white)
                                .font(.subheadline)
                        }
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct NetflixLogoView: View {
    var body: some View {
        Image("netflix")
            .resizable()
            .frame(width: 22, height: 39)
    }
}
