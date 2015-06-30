//
//  NSMutableArray+BFKit.swift
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import Foundation

public extension NSMutableArray
{
    // MARK: - Instance functions -
    
    public override func reversedArray() -> NSMutableArray
    {
        return super.reversedArray() as! NSMutableArray
    }
    
    // MARK: - Class functions -
    
    public static func sortArrayByKey(key: String, array: NSMutableArray, ascending: Bool) -> NSMutableArray
    {
        var tempArray: NSMutableArray = NSMutableArray()
        tempArray.addObjectsFromArray(array as [AnyObject])
        
        var descriptor: NSSortDescriptor = NSSortDescriptor(key: key, ascending: ascending)
        var sortedArray: NSArray = tempArray.sortedArrayUsingDescriptors([descriptor])
        
        tempArray.removeAllObjects()
        tempArray = NSMutableArray(array: sortedArray)
        
        array.removeAllObjects()
        array.addObjectsFromArray(tempArray as [AnyObject])
        
        return array
    }
}
