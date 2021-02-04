//
//  MedalShowcaseViewController.swift
//  Runner
//
//  Created by apple on 2/3/21.
//

import UIKit

class MedalShowcaseViewController: UIViewController{
    
    @IBOutlet weak var MedalCollectionView: UICollectionView!
    var medalDatabase = [MedalCategory]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.MedalCollectionView.delegate = self
        self.MedalCollectionView.dataSource = self
        // Initialize the datasets
        medalDatabase = MedalsLibrary.database()
    }
    
   
}
extension MedalShowcaseViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    // Number of sections in the collection view
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return medalDatabase.count
    }
    
    // Number of Items per section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return medalDatabase[section].categoryDetails.count
    }
    
    // Section Header and its layout
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SectionHeaderViewCell", for: indexPath) as! SectionHeaderView
        sectionHeader.categoryTitleLabel.text = "\(medalDatabase[indexPath.section].categoryTitle)"
        sectionHeader.PagesLabel.text = "\((indexPath.section)+1) of \(medalDatabase.count)"
        return sectionHeader
    }
    
    // Layout and details of the each item in the collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = MedalCollectionView.dequeueReusableCell(withReuseIdentifier: "medalCell", for: indexPath) as! CustomMedalCollectionCell
        //check for the condition about event status and manage the opectity
        if medalDatabase[indexPath.section].categoryDetails[indexPath.item]["m_Details"] == "Not Yet"{
            cell.alpha=0.5
            cell.contentView.alpha = 0.5
        }
        cell.medalTitleLabel.text = "\(medalDatabase[indexPath.section].categoryDetails[indexPath.item]["m_Name"] ?? "NO RACE")"
        cell.medalImageView.image = UIImage(named: "\(medalDatabase[indexPath.section].categoryDetails[indexPath.item]["m_ImageName"] ?? "p_longest_run")")
        cell.medalTimeLabel.text = "\(medalDatabase[indexPath.section].categoryDetails[indexPath.item]["m_Details"] ?? "00:00")"
        cell.layer.masksToBounds = true
        
        return cell
    }
}
