//
//  Medals.swift
//  Runner
//
//  Created by apple on 2/2/21.
//

import Foundation

// Designing of the dataset
struct MedalCategory{
    var categoryImageName: String
    var categoryTitle: String
    var categoryDetails: [[String: String]]
}

class MedalsLibrary{
    
    //Class Method 
    class func database() -> [MedalCategory]{
    
        let database = [MedalCategory(categoryImageName: "Personal_records", categoryTitle: "Personal Records",
                                      categoryDetails:
                                        [
                                            ["m_Name" : "Longest run",
                                            "m_ImageName" : "p_longest_run",
                                            "m_Details" : "00:00"],
                                            ["m_Name" : "Highest Evaluation",
                                            "m_ImageName" : "p_highest_elevation",
                                            "m_Details" : "2095 ft"],
                                            ["m_Name" : "Fastest 5K",
                                            "m_ImageName" : "p_fastest_5k",
                                            "m_Details" : "00:00"],
                                            ["m_Name" : "10K",
                                            "m_ImageName" : "p_fastest_10k",
                                            "m_Details" : "00:00:00"],
                                            ["m_Name" : "Half Marathon",
                                            "m_ImageName" : "p_fastest_half_marathon",
                                            "m_Details" : "00:00"],
                                            ["m_Name" : "Marathon",
                                            "m_ImageName" : "p_fastest_marathon",
                                            "m_Details" : "Not Yet"],
                                            
                                    ]
                                ),
                                MedalCategory(categoryImageName: "Virtual_races", categoryTitle: "Virtual races",
                                              categoryDetails:
                                                [
                                                    ["m_Name" : "Virtual Half Marathon Race",
                                                    "m_ImageName" : "v_virtual_half_marathon_race",
                                                    "m_Details" : "00:00"],
                                                    ["m_Name" : "Tokyo Hakone Ekiden 2020",
                                                    "m_ImageName" : "v_tokyo-hakone-ekiden-2020",
                                                    "m_Details" : "00:00:00"],
                                                    ["m_Name" : "Virtual 10K race",
                                                    "m_ImageName" : "v_virtual_10k_race",
                                                    "m_Details" : "00:00:00"],
                                                    ["m_Name" : "Virtual 5K race",
                                                    "m_ImageName" : "v_virtual_5k_race",
                                                    "m_Details" : "23:07"],
                                                    ["m_Name" : "Hakone Ekdien",
                                                    "m_ImageName" : "v_hakone_ekiden",
                                                    "m_Details" : "00:00:00"],
                                                    ["m_Name" : "Mizuno Singapore Ekiden 2015",
                                                    "m_ImageName" : "v_mizuno_singapore_ekiden",
                                                    "m_Details" : "00:00:00"],
                                                    ["m_Name" : "Virtual Marathon Race",
                                                    "m_ImageName" : "v_virtual_marathon_race",
                                                    "m_Details" : "00:00:00"],
                                                    
                                                ]
                                )
        ]
        return database
    }

}
