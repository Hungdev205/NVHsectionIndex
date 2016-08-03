//
//  Person.swift
//  NVHsectionIndex
//
//  Created by Hùng Nguyễn  on 8/3/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import Foundation

class Person {
    
    // khai bao cac mang String
    static var arrFirstNameMen: [String]!
    static var arrFirstNameWomen: [String]!
    static var arrLastName: [String]!
    static var arrMiddleNameMen: [String]!
    static var arrMiddleNameWomen: [String]!
    static var arrPhoneNumber: [String]!
    
    var fullName: String!
    var lastName: String!
    var firstName: String!
    var middleName: String!
    var phoneNumber: String!
    
    static var isCheck: Bool = true
    
    init() {
        if Person.isCheck == true {
            Person.arrFirstNameMen = ["Hùng","Thượng","Thắng","Thanh","Sơn","Thế","Tú","Đạt","Thành","Hưng","Ngọc","Đức","Cảnh","Hải","Khánh","Mạnh","Cường","Dũng","Xuân","Quốc"]
            Person.arrFirstNameWomen = ["Linh","Hương","Thảo","Hằng","Ngọc","Lan","My","Cúc","Trang","Ly","Dung","Hoa","Nhung","Thuỳ","Huệ","Phượng","Phương","Thắm","Khuê","Uyên"]
            Person.arrMiddleNameMen = ["Văn","Đức","Đăng","Bảo","Bình","Kim","Duy","Mạnh","Công","Xuân","Khắc","Việt","Cao","Lương","Danh"]
            Person.arrMiddleNameWomen = ["Thị","Diệu","Thuỳ","Quỳnh","Khánh","Bích","Trần","Kỳ","Huyền","Vũ"]
            Person.arrLastName = ["Nguyễn","Lê","Trần","Phạm","Đào","Hồ","Vũ","Đinh","Hoàng","Đặng","Đỗ","Trịnh","Lại","Dương","Lý","Bùi"]
            Person.arrPhoneNumber = ["01675267345","01675267390","01685267345","01975267345","01775267123","01234787767","0947868888","0321379999","0989696996","0987654532","0999886688","0132669699"]
            Person.isCheck = false
        }
        let genderIndex = arc4random_uniform(2)
        
        if genderIndex == 0 {
            middleName = Person.arrMiddleNameWomen[Int(arc4random_uniform(UInt32(Person.arrMiddleNameWomen.count)))]
            firstName = Person.arrFirstNameWomen[Int(arc4random_uniform(UInt32(Person.arrFirstNameWomen.count)))]
        } else {
            middleName = Person.arrMiddleNameMen[Int(arc4random_uniform(UInt32(Person.arrMiddleNameMen.count)))]
            firstName = Person.arrFirstNameMen[Int(arc4random_uniform(UInt32(Person.arrFirstNameMen.count)))]
        }
        lastName = Person.arrLastName[Int(arc4random_uniform(UInt32(Person.arrLastName.count)))]
        phoneNumber = Person.arrPhoneNumber[Int(arc4random_uniform(UInt32(Person.arrPhoneNumber.count)))]
        fullName = lastName + " " + middleName + " " + firstName
    }
    
    
}