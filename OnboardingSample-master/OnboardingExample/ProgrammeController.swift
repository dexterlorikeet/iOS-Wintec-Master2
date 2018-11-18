import UIKit

class ProgrammeController: UITableViewController {

    let transportItems = ["Bus","Helicopter","Truck","Boat","Bicycle","Motorcycle","Plane","Train","Car","Scooter","Caravan"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transportItems.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "transportCell", for: indexPath)
        
        cell.textLabel?.text = transportItems[indexPath.row]
        
        /*var imageName = UIImage(named: transportItems[indexPath.row])
        cell.imageView?.image = imageName*/
        
        return cell
    }
 
    
    @IBAction func backBtn(_ sender: UIButton) {
        if let vc = UIStoryboard(name: "ProgrammeController", bundle: nil).instantiateViewController(withIdentifier: "onboarding") as? OnboardingController
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
