//
//  UITextField+BFKit.swift
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
import UIKit

public extension UITextField
{
    // MARK: - Init functions -
    
    public convenience init(frame: CGRect, placeholder: String, font: FontName, size: CGFloat, color: UIColor, returnType: UIReturnKeyType, keyboardType: UIKeyboardType, secure: Bool, borderStyle: UITextBorderStyle, autoCapitalization: UITextAutocapitalizationType, keyboardAppearance: UIKeyboardAppearance, enablesReturnKeyAutomatically: Bool, clearButtonMode: UITextFieldViewMode, autoCorrectionType: UITextAutocorrectionType, delegate: UITextFieldDelegate)
    {
        self.init(frame: frame)
        self.borderStyle = borderStyle
        self.autocorrectionType = autoCorrectionType
        self.clearButtonMode = clearButtonMode
        self.keyboardType = keyboardType
        self.autocapitalizationType = autoCapitalization
        self.placeholder = placeholder
        self.textColor = color
        self.returnKeyType = returnType
        self.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
        self.secureTextEntry = secure
        self.keyboardAppearance = keyboardAppearance
        self.font = UIFont(fontName: font, size: size)
        self.delegate = delegate
    }
}
