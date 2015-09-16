//
//  DetailViewController.swift
//  ios_master_detail_custom
//
//  Created by Keita Mohri on 2015/09/10.
//  Copyright (c) 2015年 Keita Mohri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var sampleButton: UIButton!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            let timestamp = detail.valueForKey("timeStamp")!.description
            if let label = self.detailDescriptionLabel {
                label.text = timestamp
            }
            self.detailDescriptionLabel.text = timestamp
            self.sampleButton.enabled = true
            self.view.userInteractionEnabled  = true
            self.navigationItem.title = timestamp
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.view.userInteractionEnabled  = false
        self.navigationItem.title = "選択されていません"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

