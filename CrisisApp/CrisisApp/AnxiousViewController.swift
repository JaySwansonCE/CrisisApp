
import Foundation
import UIKit
import MessageUI

class AnxiousViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Anxious")
    }
    
    
    @IBAction func callContact1(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://8149336540")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func callContact2(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://7087109980")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func callContact3(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://8013006230")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    
    
}
