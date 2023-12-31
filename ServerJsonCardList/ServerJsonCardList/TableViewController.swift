//
//  TableViewController.swift
//  ServerJsonCardList
//
//  Created by 이영진 on 2023/02/19.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var jsonImage: UIImageView!
    @IBOutlet weak var jsonCategory: UILabel!
    @IBOutlet weak var jsonHeading: UILabel!
    @IBOutlet weak var jsonAuthor: UILabel!
    @IBOutlet weak var contentViewCell: UIView! // contentView를 연결해야 card형태의 모양 생성이 가능하다
    
    var feedItem: [DBModel] = []
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        // initialization code
        contentViewCell.layer.cornerRadius = 15
        contentViewCell.backgroundColor = .white
        
        self.backgroundColor = .lightGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        let queryModel = QueryModel()
        queryModel.delegate = self
        queryModel.downloadItems()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return feedItem.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.image = feedItem[indexPath.row].dbImage
        content.text = "제목: \(feedItem[indexPath.row].dbCategory)"
        content.secondaryText = "저자:\(feedItem[indexPath.row].dbHeading)"
        cell.contentConfiguration = content

        return cell

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
}

extension TableViewController: QueryModelProtocol{
    func itemDownloaded(items: [DBModel]) {
        feedItem = items
        self.listTableView.reloadData()
    }
    
    
}
