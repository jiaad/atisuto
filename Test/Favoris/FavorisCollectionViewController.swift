//
//  FavorisCollectionViewController.swift
//  Test
//
//  Created by jiad abdul on 17/12/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FavorisCollectionViewController: UICollectionViewController {

    var items = [Item]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        items = allItems.filter{ item -> Bool in
            return item.isFavoris
        }
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
//
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favPhoto", for: indexPath) as! FavorisCollectionViewCell
        let item = items[indexPath.row]

        cell.namaLabel.text = item.title.capitalized
        cell.descLabel.text = item.author.capitalized
        
//        cell.layer.border = 1
//        cell.layer.borderColor = UIColor.blue.cgColor
        setJsonImage(from: item.picture, imageView: cell.imageShow)

       return cell
    }

        
//        Je me rend compte que je vous ai pas mis le compte rendu :/
//        - Pour la review finale, il va falloir rajouter les écrans qui sont dans le marvel dans le prototype final, quitte à faire du “fake”
//        - L’écran de Feed correspond au design prévu, mais le reste est encore incomplet : il manque l’écran de détail d’une oeuvre, et le profil.
//        - Je propose que vous fassiez l’écran de profil en pur storyboard, sans data derrière, pour avoir quelque chose de visuellement sympa lors du jury. Si vous pouvez avoir l’affichage du détail d’une oeuvre, en tappant sur un élément de la collectionView ça serait top !
//
        
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
