//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Tyler May on 10/10/23.
//

import UIKit

class AthleteFormViewController: UIViewController {
    @IBOutlet var nameField: UITextField!
    @IBOutlet var ageField: UITextField!
    @IBOutlet var leagueField: UITextField!
    @IBOutlet var teamField: UITextField!
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        super.init(coder: coder)
        self.athlete = athlete
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

    }
    
    func updateView() {
        
    }

    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameField.text,
              let ageString = ageField.text,
              let age = Int(ageString),
              let league = leagueField.text,
              let team = teamField.text else { return }
              athlete = Athlete(name: name, age: String(age), league: league, team: team)
        performSegue(withIdentifier: "athleteDone", sender: self)
    }
    
    
    
}
