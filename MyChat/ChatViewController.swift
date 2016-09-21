//
//  ChatViewController.swift
//  MyChat
//
//  Created by KurtHo on 2016/9/16.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!

    @IBOutlet weak var chatView: UIView!
    @IBOutlet weak var myTextView: UITextView!
    var chatName = "Kurt"
    var chatContent = ["Hi", "Hello", "How are you","yoyo","make a row"]
    var youChatContent = [String]()
    let conQueue = DispatchQueue(label: "queuename", attributes: .concurrent)

    @IBAction func newContent(_ sender: AnyObject) {
        self.youChatContent.append("1234")
        myTableView.reloadData()
        self.moveToLastMessage()

    }
    
    @IBAction func sendText(_ sender: AnyObject) {

        self.chatContent.append(self.myTextView.text)
        self.myTextView.text = ""
        print("chat content~~\(self.chatContent.count)")
        myTableView.reloadData()
        self.moveToLastMessage()


//        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.estimatedRowHeight = 65
        myTableView.rowHeight = UITableViewAutomaticDimension

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return chatContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell") as! ChatTableViewCell
        cell.chatview.layer.cornerRadius = 8
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.name.text = chatName
        cell.content.text = chatContent[indexPath.row]
    

        
        
        return cell
    }
    
    
    
    
    func moveToLastMessage() {
        let move = NSIndexPath(row: chatContent.count - 1, section: 0)
        self.myTableView.scrollToRow(at: move as IndexPath, at: .bottom, animated: true)
        // Animate on the next pass through the runloop.
        print("move to last msm~\(chatContent.count)")
    }
    
    
}


extension ChatViewController: UITextViewDelegate {
 
    

    
    func textViewDidEndEditing(_ textView: UITextView) {
        chatContent.append(myTextView.text)
        myTableView.reloadData()
    }
    
}
