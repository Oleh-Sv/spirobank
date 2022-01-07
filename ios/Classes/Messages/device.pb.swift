// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: device.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Device {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var deviceStatus: DeviceStatus {
    get {return _storage._deviceStatus ?? DeviceStatus()}
    set {_uniqueStorage()._deviceStatus = newValue}
  }
  /// Returns true if `deviceStatus` has been explicitly set.
  var hasDeviceStatus: Bool {return _storage._deviceStatus != nil}
  /// Clears the value of `deviceStatus`. Subsequent reads from it will return its default value.
  mutating func clearDeviceStatus() {_uniqueStorage()._deviceStatus = nil}

  var deviceInfo: DeviceInfo {
    get {return _storage._deviceInfo ?? DeviceInfo()}
    set {_uniqueStorage()._deviceInfo = newValue}
  }
  /// Returns true if `deviceInfo` has been explicitly set.
  var hasDeviceInfo: Bool {return _storage._deviceInfo != nil}
  /// Clears the value of `deviceInfo`. Subsequent reads from it will return its default value.
  mutating func clearDeviceInfo() {_uniqueStorage()._deviceInfo = nil}

  var batteryLevel: Int32 {
    get {return _storage._batteryLevel}
    set {_uniqueStorage()._batteryLevel = newValue}
  }

  var volumeStep: Int32 {
    get {return _storage._volumeStep}
    set {_uniqueStorage()._volumeStep = newValue}
  }

  var softwareVersion: String {
    get {return _storage._softwareVersion}
    set {_uniqueStorage()._softwareVersion = newValue}
  }

  var bluetoothVersion: String {
    get {return _storage._bluetoothVersion}
    set {_uniqueStorage()._bluetoothVersion = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Device: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Device"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "deviceStatus"),
    2: .same(proto: "deviceInfo"),
    3: .same(proto: "batteryLevel"),
    4: .same(proto: "volumeStep"),
    5: .same(proto: "softwareVersion"),
    6: .same(proto: "bluetoothVersion"),
  ]

  fileprivate class _StorageClass {
    var _deviceStatus: DeviceStatus? = nil
    var _deviceInfo: DeviceInfo? = nil
    var _batteryLevel: Int32 = 0
    var _volumeStep: Int32 = 0
    var _softwareVersion: String = String()
    var _bluetoothVersion: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _deviceStatus = source._deviceStatus
      _deviceInfo = source._deviceInfo
      _batteryLevel = source._batteryLevel
      _volumeStep = source._volumeStep
      _softwareVersion = source._softwareVersion
      _bluetoothVersion = source._bluetoothVersion
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._deviceStatus) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._deviceInfo) }()
        case 3: try { try decoder.decodeSingularInt32Field(value: &_storage._batteryLevel) }()
        case 4: try { try decoder.decodeSingularInt32Field(value: &_storage._volumeStep) }()
        case 5: try { try decoder.decodeSingularStringField(value: &_storage._softwareVersion) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._bluetoothVersion) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._deviceStatus {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._deviceInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      if _storage._batteryLevel != 0 {
        try visitor.visitSingularInt32Field(value: _storage._batteryLevel, fieldNumber: 3)
      }
      if _storage._volumeStep != 0 {
        try visitor.visitSingularInt32Field(value: _storage._volumeStep, fieldNumber: 4)
      }
      if !_storage._softwareVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._softwareVersion, fieldNumber: 5)
      }
      if !_storage._bluetoothVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._bluetoothVersion, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Device, rhs: Device) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._deviceStatus != rhs_storage._deviceStatus {return false}
        if _storage._deviceInfo != rhs_storage._deviceInfo {return false}
        if _storage._batteryLevel != rhs_storage._batteryLevel {return false}
        if _storage._volumeStep != rhs_storage._volumeStep {return false}
        if _storage._softwareVersion != rhs_storage._softwareVersion {return false}
        if _storage._bluetoothVersion != rhs_storage._bluetoothVersion {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
