//
//  Screen1.swift
//  IOSNetworking
//
//  Created by Oybek To’laboyev on 29/09/21.
//

import SwiftUI
import Alamofire

struct Screen1: View {
    func apiPostList(){
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
                
            }
        })
    }
    
    func apiPostCreate(post: Employee){
        AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsPostCreate(post: post), handler: {
            response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
                
            }
        })
    }
    
    var body: some View {
        
        NavigationView{
        Text("Networking")
                .navigationBarTitle("Post")
        }.onAppear{
            apiPostList()
//            let post = Employee(employee_name: "Oybek", employee_salary: 777, employee_age: 81)
//            apiPostCreate(post: post)
        }
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}
