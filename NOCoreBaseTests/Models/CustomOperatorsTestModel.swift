//
//  CustomOperatorsModel.swift
//  NOCore
//
//  Created by Dominik Hádl on 04/02/16.
//  Copyright © 2016 Nodes. All rights reserved.
//

import Foundation
import NOCoreBase

struct CustomOperatorsTestModel {
    var string: String = ""
    var secondString = ""
    var nilString: String?
    var otherSerializable: CustomOperatorsTestNestedModel?
}

extension CustomOperatorsTestModel: Serializable {
    init(dictionary: NSDictionary?) {
        string            <== (self, dictionary, "string")
        secondString      <== (self, dictionary, "second_string")
        nilString         <== (self, dictionary, "nil_string")
        otherSerializable <== (self, dictionary, "other_serializable")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "string")        <== string
        (dict, "second_string") <== secondString
        (dict, "nil_string")    <== nilString
        (dict, "other_serializable") <== otherSerializable
        return dict
    }
}

struct CustomOperatorsTestNestedModel {
    var integer: Int = 0
    var optionalInteger: Int?
    var optionalIntegerWithDefaultValue: Int? = 0

    var double: Double = 0.0
    var optionalDouble: Double?
    var optionalDoubleWithDefaultValue: Double? = 0.0

    var string: String = ""
    var optionalString: String?
    var optionalStringWithDefaultValue: String? = ""
}

extension CustomOperatorsTestNestedModel:Serializable {
    init(dictionary: NSDictionary?) {
        integer                         <== (self, dictionary, "integer")
        optionalInteger                 <== (self, dictionary, "optional_integer")
        optionalIntegerWithDefaultValue <== (self, dictionary, "optional_integer_with_default_value")
        double                          <== (self, dictionary, "double")
        optionalDouble                  <== (self, dictionary, "optional_double")
        optionalDoubleWithDefaultValue  <== (self, dictionary, "optional_doubleWithDefaultValue")
        string                          <== (self, dictionary, "string")
        optionalString                  <== (self, dictionary, "optional_string")
        optionalStringWithDefaultValue  <== (self, dictionary, "optional_string_with_default_value")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "integer")                         <== integer
        (dict, "optional_integer")                 <== optionalInteger
        (dict, "optional_integer_with_default_value") <== optionalIntegerWithDefaultValue
        (dict, "double")                          <== double
        (dict, "optional_double")                  <== optionalDouble
        (dict, "optional_doubleWithDefaultValue")  <== optionalDoubleWithDefaultValue
        (dict, "string")                          <== string
        (dict, "optional_string")                  <== optionalString
        (dict, "optional_string_with_default_value")  <== optionalStringWithDefaultValue
        return dict
    }
}
