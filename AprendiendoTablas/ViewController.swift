//
//  ViewController.swift
//  AprendiendoTablas
//
//  Created by Miguel Eduardo  Valdez Tellez  on 21/07/20.
//  Copyright © 2020 Miguel Eduardo  Valdez Tellez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Referencia tabla
    
    @IBOutlet weak var tableView: UITableView!
    
    //implementar data source
    override func viewDidLoad() {
        super.viewDidLoad()

        //Declarar configuracion
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TweetTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "TweetTableViewCell")
        //interactuar con los click, Delegate
        tableView.delegate = self
    }

}
//Implementar metodo deleate
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda #\(indexPath.row) fue seleccionada")
    }
}

//metodo para creacion de filas
extension ViewController: UITableViewDataSource{
    //implementar numero de filas que tendra una tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    //Metodo para saber que celda debe de mostrarse
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetTableViewCell", for: indexPath)
        
        if let newCell = cell as? TweetTableViewCell{
            newCell.setupCell(username: "@usuario\(indexPath.row)",
                message: "Soy un Tweet")
        }
        return cell
    }
}
