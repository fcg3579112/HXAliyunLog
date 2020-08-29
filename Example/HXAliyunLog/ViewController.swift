//
//  ViewController.swift
//  HXAliyunLog
//
//  Created by 冯传高 on 08/29/2020.
//  Copyright (c) 2020 冯传高. All rights reserved.
//

import UIKit
import HXAliyunLog
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myClient = try! LOGClient(endPoint: "",
                                      accessKeyID: "",
                                      accessKeySecret: "",
                                      projectName:"")
                
        /* 创建logGroup */
        let logGroup = try! LogGroup(topic: "mTopic",source: "mSource")
                
           /* 存入一条log */
            let log1 = Log()
                 try! log1.PutContent("K11", value: "V11")
                 try! log1.PutContent("K12", value: "V12")
                 try! log1.PutContent("K13", value: "V13")
            logGroup.PutLog(log1)
                
           /* 存入一条log */
            let log2 = Log()
                 try! log2.PutContent("K21", value: "V21")
                 try! log2.PutContent("K22", value: "V22")
                 try! log2.PutContent("K23", value: "V23")
            logGroup.PutLog(log2)
        
        
        myClient.PostLog(logGroup,logStoreName: ""){ response, error in

            // handle response however you want

            if error?.domain == NSURLErrorDomain && error?.code == NSURLErrorTimedOut {
                print("timed out") // note, `response` is likely `nil` if it timed out
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

