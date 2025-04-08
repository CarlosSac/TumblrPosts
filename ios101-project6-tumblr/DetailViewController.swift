//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Carlos Sac on 4/7/25.
//

import UIKit

import Nuke

class DetailViewController: UIViewController {
    
    var post : Post!

    @IBOutlet weak var captionTextView: UITextView!
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        captionTextView.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: photoImageView)
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

}
