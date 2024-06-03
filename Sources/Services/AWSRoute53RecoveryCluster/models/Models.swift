// Code generated by smithy-swift-codegen. DO NOT EDIT!
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import AWSClientRuntime
import ClientRuntime
import SmithyHTTPAPI
import SmithyJSON
import SmithyReadWrite

extension AccessDeniedException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> AccessDeniedException {
        let reader = baseError.errorBodyReader
        var value = AccessDeniedException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// You don't have sufficient permissions to perform this action.
public struct AccessDeniedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "AccessDeniedException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension ConflictException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ConflictException {
        let reader = baseError.errorBodyReader
        var value = ConflictException()
        value.properties.message = try reader["message"].readIfPresent()
        value.properties.resourceId = try reader["resourceId"].readIfPresent()
        value.properties.resourceType = try reader["resourceType"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// There was a conflict with this request. Try again.
public struct ConflictException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// Description of the ConflictException error
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// Identifier of the resource in use
        /// This member is required.
        public internal(set) var resourceId: Swift.String? = nil
        /// Type of the resource in use
        /// This member is required.
        public internal(set) var resourceType: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ConflictException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        resourceId: Swift.String? = nil,
        resourceType: Swift.String? = nil
    )
    {
        self.properties.message = message
        self.properties.resourceId = resourceId
        self.properties.resourceType = resourceType
    }
}

extension EndpointTemporarilyUnavailableException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> EndpointTemporarilyUnavailableException {
        let reader = baseError.errorBodyReader
        var value = EndpointTemporarilyUnavailableException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The cluster endpoint isn't available. Try another cluster endpoint.
public struct EndpointTemporarilyUnavailableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EndpointTemporarilyUnavailableException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension GetRoutingControlStateInput {

    static func urlPathProvider(_ value: GetRoutingControlStateInput) -> Swift.String? {
        return "/"
    }
}

extension GetRoutingControlStateInput {

    static func write(value: GetRoutingControlStateInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["RoutingControlArn"].write(value.routingControlArn)
    }
}

public struct GetRoutingControlStateInput {
    /// The Amazon Resource Name (ARN) for the routing control that you want to get the state for.
    /// This member is required.
    public var routingControlArn: Swift.String?

    public init(
        routingControlArn: Swift.String? = nil
    )
    {
        self.routingControlArn = routingControlArn
    }
}

extension GetRoutingControlStateOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> GetRoutingControlStateOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetRoutingControlStateOutput()
        value.routingControlArn = try reader["RoutingControlArn"].readIfPresent()
        value.routingControlName = try reader["RoutingControlName"].readIfPresent()
        value.routingControlState = try reader["RoutingControlState"].readIfPresent()
        return value
    }
}

public struct GetRoutingControlStateOutput {
    /// The Amazon Resource Name (ARN) of the response.
    /// This member is required.
    public var routingControlArn: Swift.String?
    /// The routing control name.
    public var routingControlName: Swift.String?
    /// The state of the routing control.
    /// This member is required.
    public var routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState?

    public init(
        routingControlArn: Swift.String? = nil,
        routingControlName: Swift.String? = nil,
        routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState? = nil
    )
    {
        self.routingControlArn = routingControlArn
        self.routingControlName = routingControlName
        self.routingControlState = routingControlState
    }
}

enum GetRoutingControlStateOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "EndpointTemporarilyUnavailableException": return try EndpointTemporarilyUnavailableException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension InternalServerException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> InternalServerException {
        let reader = baseError.errorBodyReader
        let httpResponse = baseError.httpResponse
        var value = InternalServerException()
        if let retryAfterSecondsHeaderValue = httpResponse.headers.value(for: "Retry-After") {
            value.properties.retryAfterSeconds = Swift.Int(retryAfterSecondsHeaderValue) ?? 0
        }
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// There was an unexpected error during processing of the request.
public struct InternalServerException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// Advice to clients on when the call can be safely retried
        public internal(set) var retryAfterSeconds: Swift.Int = 0
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        retryAfterSeconds: Swift.Int = 0
    )
    {
        self.properties.message = message
        self.properties.retryAfterSeconds = retryAfterSeconds
    }
}

extension ListRoutingControlsInput {

    static func urlPathProvider(_ value: ListRoutingControlsInput) -> Swift.String? {
        return "/"
    }
}

extension ListRoutingControlsInput {

    static func write(value: ListRoutingControlsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["ControlPanelArn"].write(value.controlPanelArn)
        try writer["MaxResults"].write(value.maxResults)
        try writer["NextToken"].write(value.nextToken)
    }
}

public struct ListRoutingControlsInput {
    /// The Amazon Resource Name (ARN) of the control panel of the routing controls to list.
    public var controlPanelArn: Swift.String?
    /// The number of routing controls objects that you want to return with this call. The default value is 500.
    public var maxResults: Swift.Int?
    /// The token for the next set of results. You receive this token from a previous call.
    public var nextToken: Swift.String?

    public init(
        controlPanelArn: Swift.String? = nil,
        maxResults: Swift.Int? = nil,
        nextToken: Swift.String? = nil
    )
    {
        self.controlPanelArn = controlPanelArn
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListRoutingControlsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> ListRoutingControlsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = ListRoutingControlsOutput()
        value.nextToken = try reader["NextToken"].readIfPresent()
        value.routingControls = try reader["RoutingControls"].readListIfPresent(memberReadingClosure: Route53RecoveryClusterClientTypes.RoutingControl.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

public struct ListRoutingControlsOutput {
    /// The token for the next set of results. You receive this token from a previous call.
    public var nextToken: Swift.String?
    /// The list of routing controls.
    /// This member is required.
    public var routingControls: [Route53RecoveryClusterClientTypes.RoutingControl]?

    public init(
        nextToken: Swift.String? = nil,
        routingControls: [Route53RecoveryClusterClientTypes.RoutingControl]? = nil
    )
    {
        self.nextToken = nextToken
        self.routingControls = routingControls
    }
}

enum ListRoutingControlsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "EndpointTemporarilyUnavailableException": return try EndpointTemporarilyUnavailableException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ResourceNotFoundException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ResourceNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ResourceNotFoundException()
        value.properties.message = try reader["message"].readIfPresent()
        value.properties.resourceId = try reader["resourceId"].readIfPresent()
        value.properties.resourceType = try reader["resourceType"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The request references a routing control or control panel that was not found.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// Hypothetical resource identifier that was not found
        /// This member is required.
        public internal(set) var resourceId: Swift.String? = nil
        /// Hypothetical resource type that was not found
        /// This member is required.
        public internal(set) var resourceType: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        resourceId: Swift.String? = nil,
        resourceType: Swift.String? = nil
    )
    {
        self.properties.message = message
        self.properties.resourceId = resourceId
        self.properties.resourceType = resourceType
    }
}

public enum Route53RecoveryClusterClientTypes {}

extension Route53RecoveryClusterClientTypes.RoutingControl {

    static func read(from reader: SmithyJSON.Reader) throws -> Route53RecoveryClusterClientTypes.RoutingControl {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = Route53RecoveryClusterClientTypes.RoutingControl()
        value.controlPanelArn = try reader["ControlPanelArn"].readIfPresent()
        value.controlPanelName = try reader["ControlPanelName"].readIfPresent()
        value.routingControlArn = try reader["RoutingControlArn"].readIfPresent()
        value.routingControlName = try reader["RoutingControlName"].readIfPresent()
        value.routingControlState = try reader["RoutingControlState"].readIfPresent()
        value.owner = try reader["Owner"].readIfPresent()
        return value
    }
}

extension Route53RecoveryClusterClientTypes {
    /// A routing control, which is a simple on/off switch that you can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When the state is set to OFF, traffic does not flow.
    public struct RoutingControl {
        /// The Amazon Resource Name (ARN) of the control panel where the routing control is located.
        public var controlPanelArn: Swift.String?
        /// The name of the control panel where the routing control is located. Only ASCII characters are supported for control panel names.
        public var controlPanelName: Swift.String?
        /// The Amazon Web Services account ID of the routing control owner.
        public var owner: Swift.String?
        /// The Amazon Resource Name (ARN) of the routing control.
        public var routingControlArn: Swift.String?
        /// The name of the routing control.
        public var routingControlName: Swift.String?
        /// The current state of the routing control. When a routing control state is set to ON, traffic flows to a cell. When the state is set to OFF, traffic does not flow.
        public var routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState?

        public init(
            controlPanelArn: Swift.String? = nil,
            controlPanelName: Swift.String? = nil,
            owner: Swift.String? = nil,
            routingControlArn: Swift.String? = nil,
            routingControlName: Swift.String? = nil,
            routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState? = nil
        )
        {
            self.controlPanelArn = controlPanelArn
            self.controlPanelName = controlPanelName
            self.owner = owner
            self.routingControlArn = routingControlArn
            self.routingControlName = routingControlName
            self.routingControlState = routingControlState
        }
    }

}

extension Route53RecoveryClusterClientTypes {

    public enum RoutingControlState: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case off
        case on
        case sdkUnknown(Swift.String)

        public static var allCases: [RoutingControlState] {
            return [
                .off,
                .on
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .off: return "Off"
            case .on: return "On"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension ServiceLimitExceededException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ServiceLimitExceededException {
        let reader = baseError.errorBodyReader
        var value = ServiceLimitExceededException()
        value.properties.limitCode = try reader["limitCode"].readIfPresent()
        value.properties.message = try reader["message"].readIfPresent()
        value.properties.resourceId = try reader["resourceId"].readIfPresent()
        value.properties.resourceType = try reader["resourceType"].readIfPresent()
        value.properties.serviceCode = try reader["serviceCode"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The request can't update that many routing control states at the same time. Try again with fewer routing control states.
public struct ServiceLimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// The code of the limit that was exceeded.
        /// This member is required.
        public internal(set) var limitCode: Swift.String? = nil
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// The resource identifier of the limit that was exceeded.
        public internal(set) var resourceId: Swift.String? = nil
        /// The resource type of the limit that was exceeded.
        public internal(set) var resourceType: Swift.String? = nil
        /// The service code of the limit that was exceeded.
        /// This member is required.
        public internal(set) var serviceCode: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ServiceLimitExceededException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        limitCode: Swift.String? = nil,
        message: Swift.String? = nil,
        resourceId: Swift.String? = nil,
        resourceType: Swift.String? = nil,
        serviceCode: Swift.String? = nil
    )
    {
        self.properties.limitCode = limitCode
        self.properties.message = message
        self.properties.resourceId = resourceId
        self.properties.resourceType = resourceType
        self.properties.serviceCode = serviceCode
    }
}

extension ThrottlingException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ThrottlingException {
        let reader = baseError.errorBodyReader
        let httpResponse = baseError.httpResponse
        var value = ThrottlingException()
        if let retryAfterSecondsHeaderValue = httpResponse.headers.value(for: "Retry-After") {
            value.properties.retryAfterSeconds = Swift.Int(retryAfterSecondsHeaderValue) ?? 0
        }
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The request was denied because of request throttling.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// Advice to clients on when the call can be safely retried
        public internal(set) var retryAfterSeconds: Swift.Int = 0
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ThrottlingException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        retryAfterSeconds: Swift.Int = 0
    )
    {
        self.properties.message = message
        self.properties.retryAfterSeconds = retryAfterSeconds
    }
}

extension Route53RecoveryClusterClientTypes.UpdateRoutingControlStateEntry {

    static func write(value: Route53RecoveryClusterClientTypes.UpdateRoutingControlStateEntry?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["RoutingControlArn"].write(value.routingControlArn)
        try writer["RoutingControlState"].write(value.routingControlState)
    }
}

extension Route53RecoveryClusterClientTypes {
    /// A routing control state entry.
    public struct UpdateRoutingControlStateEntry {
        /// The Amazon Resource Name (ARN) for a routing control state entry.
        /// This member is required.
        public var routingControlArn: Swift.String?
        /// The routing control state in a set of routing control state entries.
        /// This member is required.
        public var routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState?

        public init(
            routingControlArn: Swift.String? = nil,
            routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState? = nil
        )
        {
            self.routingControlArn = routingControlArn
            self.routingControlState = routingControlState
        }
    }

}

extension UpdateRoutingControlStateInput {

    static func urlPathProvider(_ value: UpdateRoutingControlStateInput) -> Swift.String? {
        return "/"
    }
}

extension UpdateRoutingControlStateInput {

    static func write(value: UpdateRoutingControlStateInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["RoutingControlArn"].write(value.routingControlArn)
        try writer["RoutingControlState"].write(value.routingControlState)
        try writer["SafetyRulesToOverride"].writeList(value.safetyRulesToOverride, memberWritingClosure: Swift.String.write(value:to:), memberNodeInfo: "member", isFlattened: false)
    }
}

public struct UpdateRoutingControlStateInput {
    /// The Amazon Resource Name (ARN) for the routing control that you want to update the state for.
    /// This member is required.
    public var routingControlArn: Swift.String?
    /// The state of the routing control. You can set the value to ON or OFF.
    /// This member is required.
    public var routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState?
    /// The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating the state of a routing control. You can override one safety rule or multiple safety rules by including one or more ARNs, separated by commas. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    public var safetyRulesToOverride: [Swift.String]?

    public init(
        routingControlArn: Swift.String? = nil,
        routingControlState: Route53RecoveryClusterClientTypes.RoutingControlState? = nil,
        safetyRulesToOverride: [Swift.String]? = nil
    )
    {
        self.routingControlArn = routingControlArn
        self.routingControlState = routingControlState
        self.safetyRulesToOverride = safetyRulesToOverride
    }
}

extension UpdateRoutingControlStateOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> UpdateRoutingControlStateOutput {
        return UpdateRoutingControlStateOutput()
    }
}

public struct UpdateRoutingControlStateOutput {

    public init() { }
}

enum UpdateRoutingControlStateOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "ConflictException": return try ConflictException.makeError(baseError: baseError)
            case "EndpointTemporarilyUnavailableException": return try EndpointTemporarilyUnavailableException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension UpdateRoutingControlStatesInput {

    static func urlPathProvider(_ value: UpdateRoutingControlStatesInput) -> Swift.String? {
        return "/"
    }
}

extension UpdateRoutingControlStatesInput {

    static func write(value: UpdateRoutingControlStatesInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["SafetyRulesToOverride"].writeList(value.safetyRulesToOverride, memberWritingClosure: Swift.String.write(value:to:), memberNodeInfo: "member", isFlattened: false)
        try writer["UpdateRoutingControlStateEntries"].writeList(value.updateRoutingControlStateEntries, memberWritingClosure: Route53RecoveryClusterClientTypes.UpdateRoutingControlStateEntry.write(value:to:), memberNodeInfo: "member", isFlattened: false)
    }
}

public struct UpdateRoutingControlStatesInput {
    /// The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating routing control states. You can override one safety rule or multiple safety rules by including one or more ARNs, separated by commas. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    public var safetyRulesToOverride: [Swift.String]?
    /// A set of routing control entries that you want to update.
    /// This member is required.
    public var updateRoutingControlStateEntries: [Route53RecoveryClusterClientTypes.UpdateRoutingControlStateEntry]?

    public init(
        safetyRulesToOverride: [Swift.String]? = nil,
        updateRoutingControlStateEntries: [Route53RecoveryClusterClientTypes.UpdateRoutingControlStateEntry]? = nil
    )
    {
        self.safetyRulesToOverride = safetyRulesToOverride
        self.updateRoutingControlStateEntries = updateRoutingControlStateEntries
    }
}

extension UpdateRoutingControlStatesOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> UpdateRoutingControlStatesOutput {
        return UpdateRoutingControlStatesOutput()
    }
}

public struct UpdateRoutingControlStatesOutput {

    public init() { }
}

enum UpdateRoutingControlStatesOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "ConflictException": return try ConflictException.makeError(baseError: baseError)
            case "EndpointTemporarilyUnavailableException": return try EndpointTemporarilyUnavailableException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ServiceLimitExceededException": return try ServiceLimitExceededException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ValidationException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ValidationException {
        let reader = baseError.errorBodyReader
        var value = ValidationException()
        value.properties.fields = try reader["fields"].readListIfPresent(memberReadingClosure: Route53RecoveryClusterClientTypes.ValidationExceptionField.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.properties.message = try reader["message"].readIfPresent()
        value.properties.reason = try reader["reason"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// There was a validation error on the request.
public struct ValidationException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// The fields that caused the error, if applicable
        public internal(set) var fields: [Route53RecoveryClusterClientTypes.ValidationExceptionField]? = nil
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// Reason the request failed validation
        public internal(set) var reason: Route53RecoveryClusterClientTypes.ValidationExceptionReason? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ValidationException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        fields: [Route53RecoveryClusterClientTypes.ValidationExceptionField]? = nil,
        message: Swift.String? = nil,
        reason: Route53RecoveryClusterClientTypes.ValidationExceptionReason? = nil
    )
    {
        self.properties.fields = fields
        self.properties.message = message
        self.properties.reason = reason
    }
}

extension Route53RecoveryClusterClientTypes.ValidationExceptionField {

    static func read(from reader: SmithyJSON.Reader) throws -> Route53RecoveryClusterClientTypes.ValidationExceptionField {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = Route53RecoveryClusterClientTypes.ValidationExceptionField()
        value.name = try reader["name"].readIfPresent()
        value.message = try reader["message"].readIfPresent()
        return value
    }
}

extension Route53RecoveryClusterClientTypes {
    /// There was a validation error on the request.
    public struct ValidationExceptionField {
        /// Information about the validation exception.
        /// This member is required.
        public var message: Swift.String?
        /// The field that had the validation exception.
        /// This member is required.
        public var name: Swift.String?

        public init(
            message: Swift.String? = nil,
            name: Swift.String? = nil
        )
        {
            self.message = message
            self.name = name
        }
    }

}

extension Route53RecoveryClusterClientTypes {

    /// Reason the request failed validation
    public enum ValidationExceptionReason: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case cannotParse
        case fieldValidationFailed
        case other
        case unknownOperation
        case sdkUnknown(Swift.String)

        public static var allCases: [ValidationExceptionReason] {
            return [
                .cannotParse,
                .fieldValidationFailed,
                .other,
                .unknownOperation
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .cannotParse: return "cannotParse"
            case .fieldValidationFailed: return "fieldValidationFailed"
            case .other: return "other"
            case .unknownOperation: return "unknownOperation"
            case let .sdkUnknown(s): return s
            }
        }
    }
}
