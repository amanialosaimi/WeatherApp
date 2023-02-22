//
//  ContentView.swift
//  WeatherApp
//
//  Created by Amani Al Osaimi on 01/08/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var isDark = false

    var body: some View {
        
        ZStack {
        
            BackroundView(topColor: isDark ? .black : .blue, bottomColor: isDark ? .gray : Color("lightblue"))
          
            
            VStack{
                
                VStack{
                    cityName(city: "Riyadh")
                    weatherStatus(tempr: 21, image: "wind.snow")
                   
                    

                }
            
                HStack{
                    
                    OtherDays(dayName: "TUE", imageName: "cloud.fill", temp: 23)
                    OtherDays(dayName: "WED", imageName: "sunset.fill", temp: 22)
                    OtherDays(dayName: "SUN", imageName: "sun.max.fill", temp: 21)
                    OtherDays(dayName: "THU", imageName: "wind.snow", temp: 20)
                    OtherDays(dayName: "FRI", imageName: "snow", temp: 19)
                    OtherDays(dayName: "FRI", imageName: "cloud.sun.fill", temp: 23)
                   
                
                }
                
                Spacer()
              
                Button{
                    isDark.toggle()
                }label: {
                    Text("Dark Mode")
                        .frame(width: 280,height: 50)
                        .background(.white)
                        .font(.system(size: 20,weight: .bold, design: .default))
                        .cornerRadius(50)

                }

                Spacer()


            }
   

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct OtherDays: View {
    var dayName : String
    var imageName : String
    var temp : Int
    
    var body: some View {
       
        VStack{
            Text(dayName)
                .font(.system(size: 16))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 40,height: 40)
            Text("\(temp)")
                .font(.system(size: 16))
                .foregroundColor(.white)
        }
    }
}

struct BackroundView: View {
    var topColor : Color
    var bottomColor :Color
    var body: some View {
        LinearGradient(colors: [topColor,bottomColor],
                       startPoint: .topLeading,
                       endPoint: .bottomLeading)
        .edgesIgnoringSafeArea(.all)
    }
    
}
struct cityName: View {
        var city :String
        var body: some View {
            
            Text(city)
                .font(.system(size: 32,weight: .medium))
                .foregroundColor(.white)
                .frame(width: 100,height: 90)
            
        }}
struct weatherStatus: View {
        var tempr :Int
        var image : String
        var body: some View {
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 180,height: 100)
            
            Text("\(tempr)")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
                .frame(width: 100,height: 100)
            
        }}

