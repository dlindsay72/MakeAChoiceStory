//
//  MainVC.swift
//  MakeAChoiceStory
//
//  Created by Dan Lindsay on 2017-02-02.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let story = Page(story: .touchDown)
        story.firstChoice = (title: "someTitle", page: Page(story: .droid))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startAdventure" {
            guard let pageController = segue.destination as? PageController else {
                return
            }
            pageController.page = Adventure.story
        }
    }


}

