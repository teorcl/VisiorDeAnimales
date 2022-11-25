//
//  ViewController.swift
//  VisiorDeAnimales
//
//  Created by TEO on 24/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    private struct Const{
        static let animals: [String] = ["paloma","perro","gato","caballo"]
    }
    
    // MARK: -Outlets
    @IBOutlet weak var animalTextField: UITextField!
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func searchButtonPressed(_ sender: Any) {
        searchAnimal()
    }
    
    private func searchAnimal(){
        let wantedAnimal = animalTextField.text ?? ""
        uploadAnimalImage(isAnimal: isAnimal(wantedAnimal: wantedAnimal), nameAnimal: wantedAnimal)
    }
    
    private func uploadAnimalImage(isAnimal: Bool, nameAnimal: String){
        animalImageView.image = isAnimal ? UIImage(named: nameAnimal) : UIImage(named: "default")
    }
    
    private func isAnimal(wantedAnimal: String) -> Bool {
        return Const.animals.contains(wantedAnimal)
    }
}

