//
//  CategoriesViewController.swift
//  Trivia
//
//  Created by Alejandro Martinez on 19/04/22.
//

import UIKit

import Alamofire





class CategoriesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var categories = ["Primer Categoria", "Segunda Categoria", "Tercera Categoria"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell");getCategories()

    }
    
    func getCategories(){
        self.tableView.reloadData()
    }
    
}


extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate{
    
    //Cuantas filas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }
    
    //cuantas Celdas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
        
        
//        struct Categories: Codable{
//            let trivia_categories:[Category]
//        }
//
//
//        let request = AF.request("https://opentdb.com/api_category.php")
//        request.responseJSON { (data) in
//            do {
//                let categories = try JSONDecoder().decode(Categories.self, from: data.data!)
//                print (categories.trivia_categories)
//            }catch{
//                print ([])
            }
        }
            
        
        

    
    
    
    


