//
//  CustomCollectionViewCell.swift
//  Test
//
//  Created by jiad abdul on 17/12/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import UIKit


class ItemsTableViewController: UITableViewController,
UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var imageShow: UIImageView!
    let categories : [Category] = [.MANGA, .BD, .Litterature, .POESIE]
    let cate = ["manga", "bd", "poesie"]
    let imageURL = [String]()
    var postCount: Int = 0
    var arrImg = [String]()
  //  var dico: [String:Any] = [:]
    var dataBase: [Category : [Item]] = [:]
    
    
    
    
    func loadData() {
        let items = allItems
            dataBase[.MANGA] = items.filter({ item in item.category == .MANGA })
            
            dataBase[.BD] = items.filter({ item in item.category == .BD })
            
            dataBase[.POESIE] = items.filter({ item in item.category == .POESIE })
            
            dataBase[.Litterature] = items.filter({ item in item.category == .Litterature })
            print(items)

    }
    
	// MARK: - Table View Controller

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}


	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count - 1
	}


	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
		let cell = tableView.dequeueReusableCell(withIdentifier: "Categoy", for: indexPath) as! CategoryTableViewCell
        let category = self.categories[indexPath.row]
        cell.category = category
        cell.categoryLabel.text = category.rawValue
        cell.itemCollection.items = dataBase[category] ?? []
		return cell
	}

	// MARK: - Navigation


	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		switch segue.identifier {
		case "ShowItem":
			// TRanfers les donné
			print("Nothing")
        case "showDetail":
            print("izi")
		default:
			// Error
			print("Error")
		}
	}

	// MARK: - Collection View Datasource & Delegate
    
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("post coun is \(postCount) : \(CGFloat(postCount)) ----- \(section)")
        return (collectionView as! ItemCollectionView).items.count
    }

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Item", for: indexPath) as! CustomCollectionViewCell
        
        let item = (collectionView as! ItemCollectionView).items[indexPath.row]
        //cell.collectionView.tag =  UIImage(named: "jiad.jpg")
       //  let img : UIImage = UIImage(named:"jiad")!
        // cell.imageShow.contentMode = .scaleAspectFill
        // cell.imageShow.image = img
        setJsonImage(from: item.picture , imageView: cell.imageShow)
		cell.layer.cornerRadius = 10
		return cell
	}

    

     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
       //  jsonLoad(fileName: "objectNotation")
        //print(ResponseData.self)
        loadData()
     }
//
//     func jsonLoad(fileName: String) {
//          let url = Bundle.main.url(forResource: "objectNotation", withExtension: "json")!
//          print(url)
//          let data = try! Data(contentsOf: url)
//          print(data.count)
//          do{
//             print("---------")
//              let output = try JSONDecoder().decode(ResponseData.self, from: data)
//            postCount = output.donee.count
//            print(output.donee.count)
//            for i in output.donee {
//                arrImg.append(i.picture)
//            }
//          }catch{
//              print("error ===== :::: ===== \(error)")
//          }
//        print(" ::::::::::::::::::::::: \(ResponseData.self)")
//         }

}
