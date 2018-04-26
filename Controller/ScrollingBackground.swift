//
//  ScrollingBackground.swift
//  ColorGame
//
//  Created by Brian Advent on 06.08.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import SpriteKit

class ScrollingBackground: SKSpriteNode {

    var scrollingSpeed:CGFloat = 0
    
    static func scrollingNodeWithImage (imageName image:String, containerHeight height:CGFloat) -> ScrollingBackground {
        let bgImage = UIImage(named: image)!
        
        let scrollNode = ScrollingBackground(color: UIColor.clear, size: CGSize(width: bgImage.size.width, height: height))
        
        scrollNode.scrollingSpeed = 1
        
        var totalHeightNeeded:CGFloat = 0
        
        while totalHeightNeeded < height + bgImage.size.width {
            let child = SKSpriteNode(imageNamed: image)
            child.anchorPoint = CGPoint.zero
            child.position = CGPoint(x: 0, y: totalHeightNeeded)
            scrollNode.addChild(child)
            totalHeightNeeded += child.size.height
        }
        
        return scrollNode
        
    }
    
    func update (currentTime:TimeInterval) {
        for child in self.children {
            // child.position = CGPoint(x: child.position.x - self.scrollingSpeed, y: child.position.y)
            child.position = CGPoint(x: child.position.x, y: child.position.y - self.scrollingSpeed)
            
            if child.position.y <= -child.frame.size.height {
                let delta = child.position.y + child.frame.size.height
                child.position = CGPoint(x: child.frame.size.width * CGFloat(self.children.count - 1) + delta, y: child.position.y)
                child.position = CGPoint(x: child.position.x, y: child.frame.size.height * CGFloat(self.children.count - 1) + delta)
            }
            
        }
    }
    
    
}
