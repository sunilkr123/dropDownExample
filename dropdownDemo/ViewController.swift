//
//  ViewController.swift
//  dropdownDemo
//
//  Created by Sunil Kumar on 19/04/22.
//

import UIKit

class ViewController: UIViewController {
    //for party list
    var arrSelectPartyDropDown = Array<DropDownDataModel>()
    let dropDownSelectParty = CustomDropDown()
    @IBOutlet weak var btnDropDown: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDropDownForPartyHead()
    }
    @IBAction func btnOpendropDown(_ sender: Any) {
        dropDownSelectParty.show()
    }
    
    //to set the party list in drop down
    func setDropDownForPartyHead(){
        arrSelectPartyDropDown.removeAll()
        let arrOfPartyHeadList = ["test","test","test","test","test","test","test","test","test","test","test"]
        for str in arrOfPartyHeadList{
            let dataModel = DropDownDataModel()
            dataModel.dataObject = str as AnyObject
            dataModel.item = str
            arrSelectPartyDropDown.append(dataModel) //appending Value in dropDown
        }
        self.setupDropDown(dropDown: dropDownSelectParty)
        dropDownSelectParty.dataSource = self.arrSelectPartyDropDown
    }
    
    //common for all
    func setupDropDown( dropDown:CustomDropDown){
        dropDown.anchorView = btnDropDown
        dropDown.animationduration = 0.1
        dropDown.direction = .bottom
        dropDown.cellHeight = 40
        dropDown.selectionBackgroundColor = .lightGray
        dropDown.textColor = .black
        dropDown.bottomOffset = CGPoint(x:0, y: btnDropDown.bounds.maxY)//
        dropDown.selectionAction = { (index, item) in
            self.btnDropDown.setTitle(item.item ?? "''", for: .normal)
            print("here item \(item)")
        }
    }
}

