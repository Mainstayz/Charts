//
//  LineScatterCandleRadarRenderer.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

@objc(LineScatterCandleRadarChartRenderer)
open class LineScatterCandleRadarRenderer: BarLineScatterCandleBubbleRenderer
{
    public override init(animator: Animator?, viewPortHandler: ViewPortHandler?)
    {
        super.init(animator: animator, viewPortHandler: viewPortHandler)
    }
    
    /// Draws vertical & horizontal highlight-lines if enabled.
    /// :param: context
    /// :param: points
    /// :param: horizontal
    /// :param: vertical
    open func drawHighlightLines(context: CGContext, point: CGPoint, set: ILineScatterCandleRadarChartDataSet)
    {
        guard let
            viewPortHandler = self.viewPortHandler
            else { return }
        
        // draw vertical highlight lines
        if set.isVerticalHighlightIndicatorEnabled
        {
            context.beginPath()
            context.move(to: CGPoint(x: point.x, y: viewPortHandler.contentTop))
            context.addLine(to: CGPoint(x: point.x, y: viewPortHandler.contentBottom))
            context.strokePath()
        }
        
        // draw horizontal highlight lines
        if set.isHorizontalHighlightIndicatorEnabled
        {
            context.beginPath()
            context.move(to: CGPoint(x: viewPortHandler.contentLeft, y: point.y))
            context.addLine(to: CGPoint(x: viewPortHandler.contentRight, y: point.y))
            context.strokePath()
        }
        
        if set.isDrawHighlightIndicatorsCenterCircleEnabled{
            context.beginPath()
            context.addArc(center: point, radius: set.highlightIndicatorsCenterCircleRadius, startAngle: 0, endAngle: CGFloat(2*Double.pi), clockwise: false)
            context.setFillColor(set.highlightIndicatorsCenterCircleColors.cgColor)
            context.drawPath(using: .fill)
            context .strokePath()
        }
    }
}
