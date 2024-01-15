//
//  ContentView.swift
//  AyaAffirmations
//
//  Created by James Muldrow on 1/14/24.
//

import SwiftUI
import AudioToolbox


struct MainView: View {
    let affirmations: [String] = [
        "You're the champ of your own story, ya digg?",
        "Hey, you're tougher than a New York bagel on a Sunday mornin'!",
        "You're more brilliant than Times Square at midnight!",
        "Remember, you're as unstoppable as a New York taxi in rush hour!",
        "You're the king of the concrete jungle, baby!",
        "Your potential is higher than the Empire State!",
        "You got more skills than a Broadway star on opening night!",
        "You're sharper than a New York pizza slice!",
        "You're more resilient than the Brooklyn Bridge!",
        "Keep pushin', you're more determined than a Wall Street broker!",
        "Your kindness spreads like the morning sunrise over the Harlem River!",
        "You're as refreshing as a breeze off the Hudson!",
        "Your wisdom is as deep as the stacks at the New York Public Library!",
        "You're as reliable as the Staten Island Ferry!",
        "Your courage is as grand as Grand Central Terminal!",
        "You're as enchanting as a snowfall over Central Park!",
        "Your tenacity is as tough as a NYPD detective!",
        "You're as delightful as a spring day in Bryant Park!",
        "Your imagination soars like the view from Top of the Rock!",
        "You're as surprising as an unexpected find in a Chelsea gallery!",
        "Like the best New York slice, you're simply irresistible!",
        "Your strength is as mighty as the waves in the Atlantic!",
        "You're as enduring as the timeless tales of old New York!",
        "Your spirit dances like the lights of the Freedom Tower!",
        "Your optimism shines brighter than a sunny day in Queens!",
        "You're as steadfast as the Guardians of Traffic on the Brooklyn Bridge!",
        "Your resilience outlasts even the toughest NY winters!",
        "You're as charming as a jazz tune in Harlem!",
        "Your wit is as quick as a New Yorker's comeback!",
        "Your laughter is as infectious as the buzz in Times Square!",
        "You're as awe-inspiring as the view from the Edge observation deck!",
        "Like a New Yorker, you never give up!",
        "Your vibe is as lively as a night in Times Square!",
        "You're as unstoppable as the A train on a clear track!",
        "Your ambition shines like the crown of the Statue of Liberty!",
        "Your wit is as sharp as a New Yorker's humor!",
        "You're as invigorating as a morning jog in Central Park!",
        "Your confidence is as towering as the skyscrapers in Midtown!",
        "You're as enduring as the legacy of Ellis Island!",
        "Your enthusiasm is as infectious as the buzz in Grand Central!",
        "You're as captivating as a stroll down Broadway!",
        "Your potential is as vast as the view from the Liberty Island!",
        "You're as reliable as the MTA during rush hour!",
        "Your creativity is as diverse as the streets of Queens!",
        "You're as sturdy as the steel of the Verrazzano Bridge!",
        "Your charm is as appealing as a weekend in the Hamptons!",
        "You're as enthusiastic as fans at a Mets game!",
        "Your tenacity is as pronounced as the accents in Brooklyn!",
        "You're as memorable as a classic New York deli!",
        "Your insight is as deep as the Hudson River!",
        "You're as passionate as an artist in a SoHo gallery!",
        "Your kindness is as comforting as a bagel with creamcheese!",
        "You're as lively as the nightlife in the Meatpacking District!",
        "Your ambition is as grand as the views from the Top of the Rock!",
        "You're as enduring as the memory of the Twin Towers!",
        "Your style is as iconic as the fashion on 5th Avenue!",
        "You're as daring as a cyclist in Manhattan traffic!",
        "Your spirit is as indomitable as a New York marathoner!",
        "You're as resourceful as a street vendor in Midtown!",
        "Your optimism is as bright as a sunny day on Coney Island!",
        "You're as impactful as a headline in the New York Times!",
        "Your presence is as commanding as a judge in a Manhattan courthouse!",
        "You're as exciting as a surprise show in Central Park!",
        "Your resilience is as strong as the foundations of the Freedom Tower!",
        "Like a New Yorker, you make every moment count!",
        "Your energy is as dynamic as a live show at Madison Square Garden!",
        "You're as reliable as the Staten Island Ferry on a foggy morning!",
        "Your determination is as strong as the endurance of a Broadway actor!",
        "You're as charming as a jazz club on a Saturday night in Harlem!",
        "Your creativity is as boundless as the imagination of a street artist in Bushwick!",
        "You're as vibrant as the neon lights in Times Square!",
        "Your spirit is as enduring as the legacy of the Apollo Theater!",
        "You're as steady as the beat of a drummer in Washington Square Park!",
        "Your grace is as refined as the galleries in the Museum Mile!",
        "You're as thrilling as a helicopter tour over Manhattan!",
        "Your resilience is as unbreakable as the spirit of New Yorkers after a snowstorm!",
        "You're as iconic as the view from the Brooklyn Heights Promenade!",
        "Your warmth is as comforting as a hot dog from a street vendor on a cold day!",
        "You're as invincible as a seasoned New York City bouncer!",
        "Your tenacity is as remarkable as the construction of the Subway system!",
        "You're as exciting as a ride on the Cyclone roller coaster at Coney Island!",
        "Your potential is as limitless as the stars over the Hudson River!",
        "You're as innovative as the latest exhibit at the MoMA!",
        "Your charisma is as captivating as a Broadway star's performance!",
        "You're as solid as the cobblestones in the Meatpacking District!",
        "Your optimism is as bright as the sunrise over the East River!",
        "You're as daring as a graffiti artist in the Lower East Side!",
        "Your strength is as resilient as the walls of the Metropolitan Museum of Art!",
        "You're as unique as a hidden speakeasy in the West Village!",
        "Your spirit is as lively as a salsa night in Spanish Harlem!",
        "You're as resourceful as a New York City taxi driver navigating rush hour!",
        "Your confidence is as towering as the skyscrapers in the Financial District!",
        "You're as impactful as the roar of the crowd at Yankee Stadium!",
        "Your passion is as fiery as the best New York-style pizza oven!",
        "You're as steadfast as the anchor of the USS Intrepid!",
        "Your intelligence is as sharp as the minds at Columbia University!",
        "You're as enchanting as a carriage ride through Central Park in the snow!",
        "Your creativity is as diverse as the languages spoken in Queens!",
        "You're as impressive as the architecture of the Guggenheim Museum!",
        "Your resilience is as strong as the comeback of New York City resident!"
    ]
      
    @State private var currentAffirmation = ""
    @State private var currentSound: SystemSoundID = 0000
    @State private var clickCount: Int = 0
    @State private var currentBkgd = "Bkgd2"
   
    
   
    var systemSoundID: [SystemSoundID] = [1321, 1028]
    

       
    func generateRandomAffirmation(){
        currentAffirmation = affirmations.randomElement() ?? ""
    }
    
    func generateRandomSound() -> SystemSoundID {
        currentSound = systemSoundID.randomElement() ?? 1335
        
        return currentSound
    }
    
    
    var body: some View {
        VStack {

            if (currentAffirmation.isEmpty){
                
            } else {
                
                Text(currentAffirmation)
                    .padding()
                    .font(.largeTitle.bold())
                    .background(Color(red: 239.0/255.0, green: 198.0/255.0, blue: 178/255.0).opacity(0.75))
                    .foregroundColor(Color(red: 34.0/255.0 , green: 71.0 / 255.0, blue: 75.0 / 255.0))
                    .multilineTextAlignment(.center)
            }
            
                        
            Button(action: {
                clickCount += 1
                generateRandomAffirmation()
                if (clickCount == 10){
                    currentBkgd = "Bkgd3"
                    clickCount = 0
                    AudioServicesPlaySystemSound(generateRandomSound())
                } else {
                    AudioServicesPlaySystemSound(1103)
                    currentBkgd = "Bkgd2"
                }
                
               
                
            }){
                Text("Get Affirmation")
                    .padding()
                    .font(.largeTitle)
                    .background(Color(red: 50/255.0, green: 70/255.0, blue: 47/255.0))
                    .foregroundColor(Color(red: 239.0/255.0, green: 198.0/255.0, blue: 178/255.0))
                    .cornerRadius(25)
                    
            }
            
            
        }
        .padding()
        .background(Image(currentBkgd))
    }
}

#Preview {
    MainView()
}
