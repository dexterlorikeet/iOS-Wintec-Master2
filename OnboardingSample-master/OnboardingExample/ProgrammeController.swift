import UIKit

class ProgrammeController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        if let vc = UIStoryboard(name: "Programme", bundle: nil).instantiateViewController(withIdentifier: "onBoarding") as? OnboardingController
        {
            present(vc, animated: true, completion: nil)
        }
        
    }
    
    //let code : String
    //let name : String
    //let description : String
    //let id : Int
    //let listSemester : Array<Semester>
    //
    //init()
    //{
    //    code="";
    //    name="";
    //    id=0;
    //    description="";
    //    listSemester=[];
    //}
    //
    //}
}
