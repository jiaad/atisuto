//
//  File.swift
//  Test
//
//  Created by jiad abdul on 17/12/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation
import UIKit

func setJsonImage(from url: URL, imageView: UIImageView){
    URLSession.shared.dataTask(with: url) { ( data, response,error ) in
        if let data = data , error == nil {
            let code = (response as! HTTPURLResponse).statusCode
            switch code {
            case 200..<300:
                DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    imageView.image = image
                }
            default:
                print("unkonow status code :: \(code)")
            }
        } else {
            print(error.debugDescription)
        }
    }.resume()
}
