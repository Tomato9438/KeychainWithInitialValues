//
//  SecureChains.swift
//  KeychainTestMe
//
//  Created by Tomato on 2021/01/08.
//

import Foundation
import Security

class SecureChains: NSObject {
    static func keychainQuery(withKey key: String) -> NSMutableDictionary {
        let result = NSMutableDictionary()
        result.setValue(kSecClassGenericPassword, forKey: kSecClass as String)
        result.setValue(key, forKey: kSecAttrService as String)
        result.setValue(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, forKey: kSecAttrAccessible as String)
        return result
    }
    
    static func save(string: String?, forKey key: String) {
        let query = keychainQuery(withKey: key)
        let objectData: Data? = string?.data(using: .utf8, allowLossyConversion: false)
        if SecItemCopyMatching(query, nil) == noErr {
            if let dictData = objectData {
                let status = SecItemUpdate(query, NSDictionary(dictionary: [kSecValueData: dictData]))
                print("Update status: ", status)
            } else {
                let status = SecItemDelete(query)
                print("Delete status: ", status)
            }
        } else {
            if let dictData = objectData {
                query.setValue(dictData, forKey: kSecValueData as String)
                let status = SecItemAdd(query, nil)
                print("Update status (addition): ", status) // 0 is good
            }
        }
    }
    
    static func delete(string: String?, forKey key: String) {
        let query = keychainQuery(withKey: key)
        let status = SecItemDelete(query)
        print("Delete status: ", status) // 0 is good
    }
    
    static func load(withKey key: String) -> String? {
        let query = keychainQuery(withKey: key)
        query.setValue(kCFBooleanTrue, forKey: kSecReturnData as String)
        query.setValue(kCFBooleanTrue, forKey: kSecReturnAttributes as String)
        var result: CFTypeRef?
        let status = SecItemCopyMatching(query, &result)
        guard
            let resultsDict = result as? NSDictionary,
            let resultsData = resultsDict.value(forKey: kSecValueData as String) as? Data,
            status == noErr
            else {
                //print("Load status: ", status)
                return nil
        }
        return String(data: resultsData, encoding: .utf8)
    }
    
    static func update(string: String?, forKey key: String) {
        let query = keychainQuery(withKey: key)
        let objectData: Data? = string?.data(using: .utf8, allowLossyConversion: false)
        if SecItemCopyMatching(query, nil) == noErr {
            if let dictData = objectData {
                let status = SecItemUpdate(query, NSDictionary(dictionary: [kSecValueData: dictData]))
                print("Update status: ", status)
            }
        }
    }
}

