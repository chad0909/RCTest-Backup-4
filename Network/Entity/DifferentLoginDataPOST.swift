//import Foundation
//import Alamofire
//
//class DifferentLoginDataPOST{
//    func getRestaurantData(_ DiffLoginInputDataViewController : DiffLoginInputDataViewController){
//        let url = "https://bungaejangteo.shop/app/sms"
////        let params :Parameters = [
////            "page" : 1,
////            "perPage" : 20,
////            "serviceKey" : "AEB5bdtnqyEhcORKkdYqwSkIhY3sQ2H1XBw98Xx7iUo%2FjN8rRaXyOC3sHT7p1F4gkGvLSOqIih1gLhLRHDevWg%3D%3D"
////        ]
//
//        //HTTP Method GET
//        AF.request(url,
//                   method: .post,
//                   parameters: nil,
//                   headers: nil)
//        .responseDecodable(of: Restaurant.self) {response in
//            switch response.result{
//
//            case .success(let response):
//                print("DEBUG>> API Response \(response)")
//                Tab1ViewController.didSuccess(response)
//
//            case .failure(let error):
//                print("DEBUG>> API Get Error : \(error)")
//            }
//        }
//
//
//    }
//}
