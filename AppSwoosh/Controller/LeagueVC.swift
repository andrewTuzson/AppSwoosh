//
//  LeagueVC.swift
//  AppSwoosh
//
//  Created by Andrew Tuzson on 2/18/18.
//  Copyright © 2018 Andrew Tuzson. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

    @IBAction func nextbuttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillSegue", sender: nil)
    }
    
}
