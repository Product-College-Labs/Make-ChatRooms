//
//  ChatRoomViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 2/3/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class ChatRoomViewController: UIViewController {
    let tableView = UITableView()
    let chatRoom = ChatRoom()
//    var messageSender = true

    // Instantiate the message input view that adds itself as a subview
    let messageInputBar = MessageInputView()
    
    var messages = [Message]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        chatRoom.delegate = self
    }
    
}



//MARK - Message Input Bar
extension ChatRoomViewController: MessageInputDelegate {
    func sendWasTapped(message: String) {
        print("Sent Message \(message)")
        let messageObject = Message(messageContent: message, senderUsername: "Test Username", messageSender: true)
        chatRoom.sendMessage(message: messageObject)
//        messageSender = true
        insertNewMessageCell(messageObject)
       
    }
}

extension ChatRoomViewController: ChatRoomDelegate {
    func recievedMessage(message: Message) {
//        messageSender = false
        insertNewMessageCell(message)
    }
    

   
}
