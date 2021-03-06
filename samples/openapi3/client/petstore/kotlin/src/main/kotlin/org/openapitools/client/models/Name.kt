/**
* OpenAPI Petstore
* This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
*
* The version of the OpenAPI document: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models


import com.squareup.moshi.Json
/**
 * Model for testing model name same as property name
 * @param name 
 * @param snakeCase 
 * @param property 
 * @param &#x60;123number&#x60; 
 */
data class Name (
    @Json(name = "name")
    val name: kotlin.Int,
    @Json(name = "snake_case")
    val snakeCase: kotlin.Int? = null,
    @Json(name = "property")
    val property: kotlin.String? = null,
    @Json(name = "123Number")
    val `123number`: kotlin.Int? = null
) {

}

