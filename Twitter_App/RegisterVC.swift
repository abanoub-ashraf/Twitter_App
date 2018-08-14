import UIKit

class RegisterVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //TODO: register new user
    @IBAction func register_click(_ sender: Any) {
        // validation for the user inputs
        // if any of the fields is left empty
        if userName.text!.isEmpty || password.text!.isEmpty || email.text!.isEmpty || firstName.text!.isEmpty || lastName.text!.isEmpty {
            
            //change the color of the text
            userName.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            password.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            email.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            firstName.attributedPlaceholder = NSAttributedString(string: "firstName", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            lastName.attributedPlaceholder = NSAttributedString(string: "lastName", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            
        } else {
            // if the fields are filled, create a new user in MySQL
        }
    }
    
}
