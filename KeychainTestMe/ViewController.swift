//
//  ViewController.swift
//  KeychainTestMe
//
//  Created by Tomato on 2021/01/08.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Variables
    
    
    // MARK: IBOutlet
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    
    // MARK: IBAction
    @IBAction func saveTapped(_ sender: UIButton) {
		let login = loginField.text!
        let pass = passField.text!
        SecureChains.save(string: login, forKey: "Value0")
		SecureChains.save(string: pass, forKey: "Value1")
    }
    
    @IBAction func loadTapped(_ sender: UIButton) {
        //let login = loginField.text!
		if let value0 = SecureChains.load(withKey: "Value0") {
			print("Value0: \(value0)")
		} else {
			print("Error!!!")
		}
        if let value1 = SecureChains.load(withKey: "Value1") {
            print("Value1: \(value1)")
		} else {
			print("Error!!!")
		}
		if let value2 = SecureChains.load(withKey: "Value2") {
			print("Value2: \(value2)")
		} else {
			print("Error!!!")
		}
		if let value3 = SecureChains.load(withKey: "Value3") {
			print("Value3: \(value3)")
		} else {
			print("Error!!!")
		}
		if let value4 = SecureChains.load(withKey: "Value4") {
			print("Value4: \(value4)")
		} else {
			print("Error!!!")
		}
		if let value5 = SecureChains.load(withKey: "Value5") {
			print("Value5: \(value5)")
		} else {
			print("Error!!!")
		}
		if let value6 = SecureChains.load(withKey: "Value6") {
			print("Value6: \(value6)")
		} else {
			print("Error!!!")
		}
		if let value7 = SecureChains.load(withKey: "Value7") {
			print("Value7: \(value7)")
		} else {
			print("Error!!!")
		}
		if let value8 = SecureChains.load(withKey: "Value8") {
			print("Value8: \(value8)")
		} else {
			print("Error!!!")
		}
		if let value9 = SecureChains.load(withKey: "Value9") {
			print("Value9: \(value9)")
		} else {
			print("Error!!!")
		}
		if let value10 = SecureChains.load(withKey: "Value10") {
			print("Value10: \(value10)")
		} else {
			print("Error!!!")
		}
		if let value11 = SecureChains.load(withKey: "Value11") {
			print("Value11: \(value11)")
		} else {
			print("Error!!!")
		}
		if let value12 = SecureChains.load(withKey: "Value12") {
			print("Value12: \(value12)")
		} else {
			print("Error!!!")
		}
		if let value13 = SecureChains.load(withKey: "Value13") {
			print("Value13: \(value13)")
		} else {
			print("Error!!!")
		}
		if let value14 = SecureChains.load(withKey: "Value14") {
			print("Value14: \(value14)")
		} else {
			print("Error!!!")
		}
		if let value15 = SecureChains.load(withKey: "Value15") {
			print("Value15: \(value15)")
		} else {
			print("Error!!!")
		}
		if let value16 = SecureChains.load(withKey: "Value16") {
			print("Value16: \(value16)")
		} else {
			print("Error!!!")
		}
		if let value17 = SecureChains.load(withKey: "Value17") {
			print("Value17: \(value17)")
		} else {
			print("Error!!!")
		}
		if let value18 = SecureChains.load(withKey: "Value18") {
			print("Value18: \(value18)")
		} else {
			print("Error!!!")
		}
		if let value19 = SecureChains.load(withKey: "Value19") {
			print("Value19: \(value19)")
		} else {
			print("Error!!!")
		}
    }
    
    @IBAction func updateTapped(_ sender: UIButton) {
        /*
		let login = loginField.text!
        if let _ = SecureChains.load(withKey: login) {
            SecureChains.update(string: "123456789", forKey: login)
        }
		*/
    }
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
		
		makeSecureChains()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
	
	
	// MARK: SecureChains
	private func makeSecureChains() {
		if let _ = SecureChains.load(withKey: "Value0") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value0")
		}
		if let _ = SecureChains.load(withKey: "Value1") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value1")
		}
		if let _ = SecureChains.load(withKey: "Value2") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value2")
		}
		if let _ = SecureChains.load(withKey: "Value3") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value3")
		}
		if let _ = SecureChains.load(withKey: "Value4") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value4")
		}
		if let _ = SecureChains.load(withKey: "Value5") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value5")
		}
		if let _ = SecureChains.load(withKey: "Value6") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value6")
		}
		if let _ = SecureChains.load(withKey: "Value7") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value7")
		}
		if let _ = SecureChains.load(withKey: "Value8") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value8")
		}
		if let _ = SecureChains.load(withKey: "Value9") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value9")
		}
		if let _ = SecureChains.load(withKey: "Value10") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value10")
		}
		if let _ = SecureChains.load(withKey: "Value11") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value11")
		}
		if let _ = SecureChains.load(withKey: "Value12") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value12")
		}
		if let _ = SecureChains.load(withKey: "Value13") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value13")
		}
		if let _ = SecureChains.load(withKey: "Value14") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value14")
		}
		if let _ = SecureChains.load(withKey: "Value15") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value15")
		}
		if let _ = SecureChains.load(withKey: "Value16") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value16")
		}
		if let _ = SecureChains.load(withKey: "Value17") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value17")
		}
		if let _ = SecureChains.load(withKey: "Value18") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value18")
		}
		if let _ = SecureChains.load(withKey: "Value19") {
			
		} else {
			SecureChains.save(string: "0", forKey: "Value19")
		}
	}
}

