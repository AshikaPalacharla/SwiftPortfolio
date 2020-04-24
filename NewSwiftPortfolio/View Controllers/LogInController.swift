//
//  LogInController.swift
//  NewSwiftPortfolio
//
//  Created by ashi on 4/22/20.
//  Copyright © 2020 Ashika Palacharla. All rights reserved.
//

import UIKit
import CoreData

class LogInController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()


        let appDelegate =  UIApplication.shared.delegate as! AppDelegate

        let context = appDelegate.persistentContainer.viewContext

        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)


        do {
            try context.save()
            print("saved")


        } catch {

            print ( "Some Error has been Detected")
        }


        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")

        request.returnsObjectsAsFaults = false
        do {
            let reusutls = try context.fetch(request)
            if reusutls.count > 0 {

                for r in reusutls as! [NSManagedObject]
                {

                    if let username  = r.value(forKey: "username") as? String
                    {print(username)}

                }

            }
            else {print("Cannot fetch results")

            }
        }
        catch {

            print("error")

        }
    }
    @IBOutlet weak var usrName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var showList: UILabel!
    @IBOutlet weak var errorText: UILabel!
    @IBAction func tryLogin(_ sender: UIButton) {
        let x = usrName.text
        let y = passWord.text
        if (x! == "" || y! == "")
        {
            print ("I am here")

            errorText.text = "user name or password empty "
        }
        let appDelegate =  UIApplication.shared.delegate as! AppDelegate

        let context = appDelegate.persistentContainer.viewContext

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")

        request.predicate = NSPredicate(format: "username = %@", usrName.text!)
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)

            for data in result as! [NSManagedObject] {

                let passwordFromData = data.value(forKey: "password") as! String
                if y! == passwordFromData
                {
                errorText.text = " You have been Granted Access!"
            }
        }
        }catch {

            print("Failed")
        }
    }

    @IBAction func ShowData(_ sender: UIButton) {
        var listTprint = ""
        let appDelegate =  UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        do {
            let reusutls = try context.fetch(request)
            if reusutls.count > 0 {
                for r in reusutls as! [NSManagedObject]
                {

                    if let username  = r.value(forKey: "username") as? String
                    {listTprint.append(username)
                        listTprint.append("   ")

                    let password = r.value(forKey: "password") as? String
                        listTprint.append(password!)
                        listTprint.append("   ")
                    }
                }
            }
            else
            {print("Cannot fetch results")}
        }
        catch {

            print("Error")
        }
       showList.text! = listTprint
    }
}
