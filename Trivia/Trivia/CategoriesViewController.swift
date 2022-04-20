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
    
    private var categories = ["Primer Categoria", "Segunda Categoria"]
    
//    let request=AF.request("https://opentdb.com/api_category.php")
//    request.responseJSON { (data) in
//        do {
//            let categories = try JSONDecoder().decode(Categories.self,
//            from: data.data!)
//            print(categories.trivia_categories)
//            }
//        catch{
//    print(error)
//            }
                                            }
    
    



    
extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


