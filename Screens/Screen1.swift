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
    
    
    func apiPostSingle(id: Int){
        AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty(),
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
    
    func apiPostUpdate(post: Employee){
        AFHttp.put(url: AFHttp.API_POST_UPDATE + String(post.id!), params: AFHttp.paramsPostCreate(post: post), handler: {
            response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
                
            }
        })
    }
    
    
    func apiPostDelete(post: Employee){
        AFHttp.del(url: AFHttp.API_POST_DELETE + String(post.id!), params: AFHttp.paramsEmpty(), handler:  {
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
//            apiPostList()
//            apiPostSingle(id: 1)
            
            
            let Employee = Employee(employee_name: "Oybek", employee_salary: 6666, employee_age: 18, profile_image: "")
            apiPostCreate(post: Employee)
//            apiPostUpdate(post: Employee)
//            apiPostDelete(post: Employee)
        }
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}
