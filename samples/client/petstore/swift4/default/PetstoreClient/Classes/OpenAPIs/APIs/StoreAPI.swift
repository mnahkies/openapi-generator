//
// StoreAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class StoreAPI {
    
    /**
     Delete purchase order by ID
     
     - parameter orderId: (path) ID of the order that needs to be deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteOrder(orderId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteOrderWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete purchase order by ID
     - DELETE /store/order/{order_id}
     - For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
     - parameter orderId: (path) ID of the order that needs to be deleted 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteOrderWithRequestBuilder(orderId: String) -> RequestBuilder<Void> {
        var path = "/store/order/{order_id}"
        let orderIdPreEscape = "\(orderId)"
        let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    
    /**
     Returns pet inventories by status
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInventory(completion: @escaping ((_ data: [String:Int]?,_ error: Error?) -> Void)) {
        getInventoryWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns pet inventories by status
     - GET /store/inventory
     - Returns a map of status codes to quantities
     - API Key:
       - type: apiKey api_key 
       - name: api_key
     - returns: RequestBuilder<[String:Int]> 
     */
    open class func getInventoryWithRequestBuilder() -> RequestBuilder<[String:Int]> {
        let path = "/store/inventory"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[String:Int]>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    
    /**
     Find purchase order by ID
     
     - parameter orderId: (path) ID of pet that needs to be fetched 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOrderById(orderId: Int64, completion: @escaping ((_ data: Order?,_ error: Error?) -> Void)) {
        getOrderByIdWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Find purchase order by ID
     - GET /store/order/{order_id}
     - For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
     - parameter orderId: (path) ID of pet that needs to be fetched 
     - returns: RequestBuilder<Order> 
     */
    open class func getOrderByIdWithRequestBuilder(orderId: Int64) -> RequestBuilder<Order> {
        var path = "/store/order/{order_id}"
        let orderIdPreEscape = "\(orderId)"
        let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Order>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    
    /**
     Place an order for a pet
     
     - parameter order: (body) order placed for purchasing the pet 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func placeOrder(order: Order, completion: @escaping ((_ data: Order?,_ error: Error?) -> Void)) {
        placeOrderWithRequestBuilder(order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Place an order for a pet
     - POST /store/order
     - parameter order: (body) order placed for purchasing the pet 
     - returns: RequestBuilder<Order> 
     */
    open class func placeOrderWithRequestBuilder(order: Order) -> RequestBuilder<Order> {
        let path = "/store/order"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: order)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Order>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
