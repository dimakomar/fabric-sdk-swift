/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: peer/chaincodeevent.proto
 *
 */

///  
///  Copyright IBM Corp. 2016 All Rights Reserved.
///  
///  Licensed under the Apache License, Version 2.0 (the "License");
///  you may not use this file except in compliance with the License.
///  You may obtain a copy of the License at
///  
///  http://www.apache.org/licenses/LICENSE-2.0
///  
///  Unless required by applicable law or agreed to in writing, software
///  distributed under the License is distributed on an "AS IS" BASIS,
///  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
///  See the License for the specific language governing permissions and
///  limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

///  ChaincodeEvent is used for events and registrations that are specific to chaincode
///  string type - "chaincode"
struct Protos_ChaincodeEvent: SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ChaincodeEvent"
  static let protoPackageName: String = "protos"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "chaincode_id", json: "chaincodeId"),
    2: .unique(proto: "tx_id", json: "txId"),
    3: .unique(proto: "event_name", json: "eventName"),
    4: .same(proto: "payload"),
  ]

  var chaincodeId: String = ""

  var txId: String = ""

  var eventName: String = ""

  var payload: Data = Data()

  init() {}

  mutating func _protobuf_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protobuf_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1: try decoder.decodeSingularStringField(value: &chaincodeId)
    case 2: try decoder.decodeSingularStringField(value: &txId)
    case 3: try decoder.decodeSingularStringField(value: &eventName)
    case 4: try decoder.decodeSingularBytesField(value: &payload)
    default: break
    }
  }

  func _protobuf_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !chaincodeId.isEmpty {
      try visitor.visitSingularStringField(value: chaincodeId, fieldNumber: 1)
    }
    if !txId.isEmpty {
      try visitor.visitSingularStringField(value: txId, fieldNumber: 2)
    }
    if !eventName.isEmpty {
      try visitor.visitSingularStringField(value: eventName, fieldNumber: 3)
    }
    if !payload.isEmpty {
      try visitor.visitSingularBytesField(value: payload, fieldNumber: 4)
    }
  }

  func _protobuf_generated_isEqualTo(other: Protos_ChaincodeEvent) -> Bool {
    if chaincodeId != other.chaincodeId {return false}
    if txId != other.txId {return false}
    if eventName != other.eventName {return false}
    if payload != other.payload {return false}
    return true
  }
}
