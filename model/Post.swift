import Foundation



struct Post: Decodable {

    var status: String?

    var data: [Data]?

}

struct Data: Decodable {

    var employee_age: Int?

    var employee_name: String?

    var employee_salary: Int?

    var id: Int?

    var profile_image: String?

}

//    "id":1,
//    "employee_name":"Tiger Nixon",
//    "employee_salary":320800,
//    "employee_age":61,
//    "profile_image":""
    

//    var profile_image: String?
    
//    "id": "1",
//    "employee_name": "Tiger Nixon",
//    "employee_salary": "320800",
//    "employee_age": "61",
//    "profile_image": ""
    
  

