

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var profilepicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        profilepicture.layer.cornerRadius = profilepicture.frame.size.width / 2
        profilepicture.clipsToBounds = true
        
     
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

