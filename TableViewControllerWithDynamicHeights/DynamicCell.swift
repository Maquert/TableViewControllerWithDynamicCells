import UIKit



class DynamicCell: UITableViewCell
{
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    
    
    static let kReuseIdentifier = "DynamicCell"
    static let estimatedHeight: CGFloat = 50
    
    class func nib() -> UINib { return UINib(nibName: "DynamicCell", bundle: nil) }
    
    

    
    // MARK:  View Data
    struct ViewData
    {
        let image: UIImage
        let text: String
    }
    
    var viewData: ViewData? {
        didSet {
            self.contentLabel.text = viewData!.text
            self.contentLabel.sizeToFit()
            self.picture?.image = viewData!.image
        }
    }
}




extension DynamicCell.ViewData
{
    init (picture: UIImage, someText: String)
    {
        self.image = picture
        self.text = someText
    }
}