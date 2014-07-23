
import UIKit

class ViewController: UIViewController {

    @IBOutlet var avatarImage: UIImageView
    
    @IBOutlet var label: UILabel
    
    @IBAction func klik(sender: AnyObject) {
        
        var fakeGuy = Faker()
        
        label.text=fakeGuy.fullDescription
    
        avatarImage.image = UIImage(named:"")
    
        dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            var downloadedImage =  UIImage(data: NSData(contentsOfURL: NSURL(string:fakeGuy.photo)))
            
            self.avatarImage.image = downloadedImage
 
        })
        
        
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

