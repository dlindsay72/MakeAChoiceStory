//
//  Page.swift
//  MakeAChoiceStory
//
//  Created by Dan Lindsay on 2017-02-02.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class Page {
    let story: Story
    
    typealias Choice = (title: String, page: Page)
    
    var firstChoice: Choice?
    var secondChoice: Choice?
    
    init(story: Story) {
        self.story = story
    }
}

extension Page {
    
    func addChoiceWith(title: String, story: Story) -> Page {
        let page = Page(story: story)
        return addChoiceWith(title: title, page: page)
    }
    
    
    func addChoiceWith(title: String, page: Page) -> Page {
        
        switch(firstChoice, secondChoice) {
        case (.some, .some):
            return self
        case (.none, .none), (.none, .some):
            firstChoice = (title, page)
        case (.some, .none):
            secondChoice = (title, page)
        }
        
        return page
    }
}


