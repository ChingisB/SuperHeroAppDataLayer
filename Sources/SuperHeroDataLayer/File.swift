//
//  File.swift
//  
//
//  Created by Чингис Богдатов on 28.11.2024.
//

import Foundation
import Alamofire


protocol SuperHeroServiceDelegate{
    
    func onRequestComplete(hero: SuperHero)
    func onRequestError(errorMessage: String?)
}


struct SuperHeroService{
    
    var delegate: SuperHeroServiceDelegate? = nil
    private let baseUrl = "https://akabab.github.io/superhero-api/api/all.json"
    
    func fechHeroes(){
        AF.request(baseUrl).responseDecodable(of: [SuperHero].self) { response in
            switch response.result {
            case .success(let heroes):
                let randomHero = heroes.randomElement()!
                delegate?.onRequestComplete(hero: randomHero)
            case .failure(let error):
                delegate?.onRequestError(errorMessage: error.localizedDescription)
            }
        }
    }
}
