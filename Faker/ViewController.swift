
import UIKit

class ViewController: UIViewController {

    @IBOutlet var avatarImage: UIImageView!

    @IBOutlet var label: UILabel!


    @IBAction func klik(sender: AnyObject) {

        var fakeGuy = Faker()

        label.text=fakeGuy.fullDescription

        avatarImage.image = UIImage(named:"")




        dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {


            let imgURL = NSURL.URLWithString(fakeGuy.photo);

            var request: NSURLRequest = NSURLRequest(URL: imgURL)

            var urlConnection: NSURLConnection = NSURLConnection(request: request, delegate: self)

            NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: {(response: NSURLResponse!,data: NSData!,error: NSError!) -> Void in
                if !error? {

                    var downloadedImage = UIImage(data: data)

                    self.avatarImage.image = downloadedImage

                }
                else {
                    println("Error: \(error.localizedDescription)")
                }
                })




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

