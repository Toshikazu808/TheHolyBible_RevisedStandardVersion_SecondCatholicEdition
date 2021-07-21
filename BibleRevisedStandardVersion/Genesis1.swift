//
//  ViewController.swift
//  BibleRevisedStandardVersion
//
//  Created by Ryan Kanno on 7/20/21.
//

import UIKit

class Genesis1: UIViewController {
   @IBOutlet var verses: [UILabel]!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      verses.forEach { verse in
         verse.isUserInteractionEnabled = true
         verse.addGestureRecognizer(setGesture())
      }
   }
   
   private func setGesture() -> UITapGestureRecognizer {
      let tapped = UITapGestureRecognizer(target: self, action: #selector(verseTapped(_:)))
      tapped.numberOfTapsRequired = 1
      return tapped
   }

   @objc func verseTapped(_ sender: UIGestureRecognizer) {
      guard let view = sender.view else { return }
      print("Label \(view.tag) was tapped")
   }

}

