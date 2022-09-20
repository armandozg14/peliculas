//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 9/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var peliculas : [Pelicula] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
    //Numero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        celda?.lblTitulo.text = peliculas[indexPath.row].titulo
        celda?.lblDirector.text = peliculas[indexPath.row].director
        celda?.lblAño.text = peliculas[indexPath.row].año
        return celda!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    peliculas.append(Pelicula (titulo: "Titanic", año: "1997", director: "James Cameron", genero : "Drama"))
    peliculas.append(Pelicula (titulo: "Chabelo y Pepito contra los monstruos", año: "1973", director: "Jose Estraxa", genero : "Comedia"))
    peliculas.append(Pelicula (titulo: "Avatar", año: "2009", director: "James Cameron", genero : "Ciencia Ficcion"))
    }

}

