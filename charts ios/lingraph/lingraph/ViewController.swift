//
//  ViewController.swift
//  lingraph
//
//  Created by Aileen Taboy on 8/28/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate {
    

    @IBOutlet weak var lineChartView: LineChartView!
    let months = ["Jan" , "Feb", "Mar", "Apr", "May", "June", "July", "August", "Sept", "Oct", "Nov", "Dec"]
    let dollars1 = [1453.0,2352,5431,1442,5451,6486,1173,5678,9234,1345,9411,2212]
    
    let dollars2 = [5641.0,2234,8763,4453,4548,6236,7321,3458,2139,399,1311,5612]
    let dollars3 = [6541.0,3456,7843,5678,5877,7323,7111,6456,5143,4562,6311,10412]
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1 
        self.lineChartView.delegate = self
        
        // 2 
        
        self.lineChartView.descriptionText = "Tap node for details"
        
        //3 
        self.lineChartView.descriptionTextColor = UIColor.whiteColor()
        self.lineChartView.gridBackgroundColor = UIColor.darkGrayColor()
        
        
        //4 
        self.lineChartView.noDataText = "No data provided"
        
        
        // 5
        
        setChartData(months)
        
    }
    
    
    func setChartData(months: [String]) {
        //1 - creating an array of data entries 
        var yVals: [ChartDataEntry] = [ChartDataEntry]()
        
        for i in 0 ..< months.count {
            yVals.append(ChartDataEntry(value: dollars1[i], xIndex: i))
        }
        
        //2 - create a data set with our array 
        
        let set1: LineChartDataSet = LineChartDataSet(yVals: yVals, label: "First Set")
        
        set1.setColor(UIColor.redColor().colorWithAlphaComponent(0.5)) // our line's opacity is 50%
        set1.setCircleColor(UIColor.redColor()) // our circle will be dark red
        set1.lineWidth = 2.0
        set1.circleRadius = 6.0 // the radius of the node circle
        set1.fillAlpha = 65 / 255.0
        set1.fillColor = UIColor.redColor()
        set1.highlightColor = UIColor.whiteColor()
        set1.drawCircleHoleEnabled = true
        
        
        var yVals2: [ChartDataEntry] = [ChartDataEntry]()
        
        for i in 0 ..< months.count  {
            
            yVals2.append(ChartDataEntry(value: dollars2[i], xIndex: i))
            
        }
        
        let set2: LineChartDataSet = LineChartDataSet(yVals: yVals2, label: "Second Set")
        set2.axisDependency = .Left // Line will correlate with left axis values
        set2.setColor(UIColor.greenColor().colorWithAlphaComponent(0.5))
        set2.setCircleColor(UIColor.greenColor())
        set2.lineWidth = 2.0
        set2.circleRadius = 6.0
        set2.fillAlpha = 65 / 255.0
        set2.fillColor = UIColor.greenColor()
        set2.highlightColor = UIColor.whiteColor()
        set2.drawCircleHoleEnabled = true
        
        
        
        
        //3 - create an array to store our LineChartDataSets 
        var dataSets : [LineChartDataSet] = [LineChartDataSet]()
        dataSets.append(set1)
        dataSets.append(set2)
        //4 - pass our months in for our x-axis label value along with our dataSets 
        let data: LineChartData = LineChartData(xVals: months, dataSets: dataSets)
        data.setValueTextColor(UIColor.whiteColor())

        
        //5 - finally set our data 
        self.lineChartView.data = data
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

