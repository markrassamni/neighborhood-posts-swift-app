//
//  Post.swift
//  my-hood
//
//  Created by Mark Rassamni on 8/5/16.
//  Copyright © 2016 markrassamni. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imgPath: String!
    private var _title: String!
    private var _postDesc: String!
    
    var imgPath: String{
        return _imgPath
    }
    var title: String{
        return _title
    }
    var postDesc: String{
        return _postDesc
    }
    
    init(imgPath: String, title: String, description: String){
        self._imgPath = imgPath
        self._title = title
        self._postDesc = description
    }
    
    override init() {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imgPath = aDecoder.decodeObjectForKey("imgPath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._postDesc = aDecoder.decodeObjectForKey("description") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(_imgPath, forKey: "imgPath")
        aCoder.encodeObject(_title, forKey: "title")
        aCoder.encodeObject(_postDesc, forKey: "description")
    }
}