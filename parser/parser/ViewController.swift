//
//  ViewController.swift
//  parser
//
//  Created by Artem Pavlov on 03.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var users = [UserData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON {
            print("successful")
        }
        // Do any additional setup after loading the view.
    }

    func downloadJSON(completed: @escaping () -> ()) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error  == nil {
                do {
                    self.users = try JSONDecoder().decode([UserData].self, from: data!)
                    //reload tableview
                    DispatchQueue.main.async {
                        completed()
                    }
                } catch {
                    print("JSON error")
                }
            }
        }.resume()
    }

}

