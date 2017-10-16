//
//  ProgressBarDraw.swift
//  ProgressBar
//
//  Created by Vladimir Valter on 13/10/2017.
//  Copyright © 2017 RGS DIGITAL. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class ProgressBarDraw : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawProgressBar(frame: CGRect = CGRect(x: 0, y: 1, width: 300, height: 16), progress: CGFloat = 82) {
        //// General Declarations
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }

        //// Color Declarations
        let devSlopesRed = UIColor(red: 0.847, green: 0.278, blue: 0.118, alpha: 1.000)

        //// Progress Border Drawing
        let progressBorderPath = UIBezierPath(roundedRect: CGRect(x: frame.minX + 1, y: frame.minY + 1, width: fastFloor((frame.width - 1) * 0.99666 + 0.5), height: 14), cornerRadius: 5)
        devSlopesRed.setStroke()
        progressBorderPath.lineWidth = 1
        progressBorderPath.stroke()
        progressBorderPath.addClip()


        //// Progress Active Drawing
        let progressActivePath = UIBezierPath(roundedRect: CGRect(x: 1, y: 1, width: progress, height: 14), cornerRadius: 5)
        devSlopesRed.setFill()
        progressActivePath.fill()
    }

}
