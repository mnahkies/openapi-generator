//
// FakeClassnameTags123API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire
import PromiseKit



open class FakeClassnameTags123API {
    
    /**
     To test class name in snake case
     
     - parameter client: (body) client model 
     - returns: Promise<Client>
     */
    open class func testClassname( client: Client) -> Promise<Client> {
        let deferred = Promise<Client>.pending()
        testClassnameWithRequestBuilder(client: client).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else if let response = response {
                deferred.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     To test class name in snake case
     - PATCH /fake_classname_test
     - To test class name in snake case
     - API Key:
       - type: apiKey api_key_query (QUERY)
       - name: api_key_query
     - parameter client: (body) client model 
     - returns: RequestBuilder<Client> 
     */
    open class func testClassnameWithRequestBuilder(client: Client) -> RequestBuilder<Client> {
        let path = "/fake_classname_test"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: client)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
