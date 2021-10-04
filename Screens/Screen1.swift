
import SwiftUI
import Alamofire

struct Screen1: View {
   @ObservedObject var ViewModel = EmployeeViewModel()

    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                List(self.ViewModel.posts, id: \.id){post in
                    
                    VStack{
                        Text(post.employee_name!.uppercased()).fontWeight(.bold)
                    Text(String(post.employee_salary!)).padding(.top,5)
                        Text(String(post.employee_age!)).padding(.top,5)
                        Image(post.profile_image!)

                    }
                }
            }
                .navigationBarTitle("Employees' list")
        }.onAppear{
            self.ViewModel.apiPostList()
//            apiPostSingle(id: 1)

//            let Employee = Employee(employee_name: "Oybek", employee_salary: 6666, employee_age: 18, profile_image: "")
//            apiPostCreate(post: Employee)
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
