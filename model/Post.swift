import Foundation



struct Employee: Decodable{
    
    var id: Int?
    var employee_name: String?
    var employee_salary: Int?
    var employee_age: Int?
    var profile_image: String?
    
    init(){
        
    }
    
    init(employee_name: String, employee_salary: Int, employee_age: Int, profile_image: String) {
        self.employee_name = employee_name
        self.employee_salary = employee_salary
        self.employee_age = employee_age
        self.profile_image = profile_image
        self.id = 1
//        var employee_name: String?
//        var employee_salary: Int?
//        var employee_age: Int?
    }

//    "id":1,
//    "employee_name":"Tiger Nixon",
//    "employee_salary":320800,
//    "employee_age":61,
//    "profile_image":""
    
}
//    var profile_image: String?
    
//    "id": "1",
//    "employee_name": "Tiger Nixon",
//    "employee_salary": "320800",
//    "employee_age": "61",
//    "profile_image": ""
    
  

