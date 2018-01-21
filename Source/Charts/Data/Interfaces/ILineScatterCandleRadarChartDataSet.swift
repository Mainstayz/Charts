//
//  ILineScatterCandleRadarChartDataSet.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation

@objc
public protocol ILineScatterCandleRadarChartDataSet: IBarLineScatterCandleBubbleChartDataSet
{
    // MARK: - Data functions and accessors
    
    // MARK: - Styling functions and accessors
    
    /// Enables / disables the horizontal highlight-indicator. If disabled, the indicator is not drawn.
    var drawHorizontalHighlightIndicatorEnabled: Bool { get set }
    
    /// Enables / disables the vertical highlight-indicator. If disabled, the indicator is not drawn.
    var drawVerticalHighlightIndicatorEnabled: Bool { get set }
    
    /// - returns: `true` if horizontal highlight indicator lines are enabled (drawn)
    var isHorizontalHighlightIndicatorEnabled: Bool { get }
    
    /// - returns: `true` if vertical highlight indicator lines are enabled (drawn)
    var isVerticalHighlightIndicatorEnabled: Bool { get }
    
    /// Enables / disables both vertical and horizontal highlight-indicators.
    /// :param: enabled
    func setDrawHighlightIndicators(_ enabled: Bool)
    
    /// The radius of the drawn circles.
    var highlightIndicatorsCenterCircleRadius: CGFloat { get set }
    
    var highlightIndicatorsCenterCircleColors: NSUIColor { get set }
    
    /// Sets the one and ONLY color that should be used for this DataSet.
    /// Internally, this recreates the colors array and adds the specified color.
    func setHighlightIndicatorsCenterCircleColor(_ color: NSUIColor)
    
    /// If true, drawing circles is enabled
    var drawHighlightIndicatorsCenterCircleEnabled: Bool { get set }
    
    /// - returns: `true` if drawing circles for this DataSet is enabled, `false` ifnot
    var isDrawHighlightIndicatorsCenterCircleEnabled: Bool { get }
}
