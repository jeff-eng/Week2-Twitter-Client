//
//  API.swift
//  TwitterApp
//
//  Created by Jeffrey Eng on 6/14/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//


//Importing the frameworks to be accessed
import Foundation
import Accounts
import Social

//Defining our API class
class API {
    static let shared = API()
    
    var account: ACAccount?
    
    private func login(completion: (account: ACAccount?) -> ())
    {
        //Set up Account store
        let accountStore = ACAccountStore()
        
        //Provide Account Store an account type (Twitter, in this case)
        let accountType = accountStore.accountTypeWithAccountTypeIdentifier(ACAccountTypeIdentifierTwitter)
        
        accountStore.requestAccessToAccountsWithType(accountType, options: nil, completion: { (granted, error) -> Void in
            
            if let _ = error {
                print("ERROR: Request for access to accounts returned an error.")
                completion(account: nil)
                return
            }
            
            if granted {
                if let account = accountStore.accountsWithAccountType(accountType).first as? ACAccount {
                    completion(account: account)
                    return
                }
                
                // If no account was found.
                print("ERROR: No twitter accounts were found on this device.")
                completion(account: nil)
            }
            
            // If user didn't grant access to the Account Store for Twitter accounts.
            print("Error: This app requires access to the Twitter Accounts.")
            completion(account: nil)
            return
        })
    }

    private func GETOAuthUser(completion: (user: User?) -> ()) {
        
        let request = SLRequest
        
        
        
        
    }
    
    
}










