//
//  protocols.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation

protocol UserDelegate {
    func sendSocketNickname(user: User)
}