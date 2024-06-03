// Code generated by smithy-swift-codegen. DO NOT EDIT!
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import AWSClientRuntime
import ClientRuntime
import Smithy
import SmithyHTTPAPI
import SmithyJSON
import SmithyReadWrite

extension CloudTrailDataClientTypes.AuditEvent {

    static func write(value: CloudTrailDataClientTypes.AuditEvent?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["eventData"].write(value.eventData)
        try writer["eventDataChecksum"].write(value.eventDataChecksum)
        try writer["id"].write(value.id)
    }
}

extension CloudTrailDataClientTypes {
    /// An event from a source outside of Amazon Web Services that you want CloudTrail to log.
    public struct AuditEvent {
        /// The content of an audit event that comes from the event, such as userIdentity, userAgent, and eventSource.
        /// This member is required.
        public var eventData: Swift.String?
        /// A checksum is a base64-SHA256 algorithm that helps you verify that CloudTrail receives the event that matches with the checksum. Calculate the checksum by running a command like the following: printf %s $eventdata | openssl dgst -binary -sha256 | base64
        public var eventDataChecksum: Swift.String?
        /// The original event ID from the source event.
        /// This member is required.
        public var id: Swift.String?

        public init(
            eventData: Swift.String? = nil,
            eventDataChecksum: Swift.String? = nil,
            id: Swift.String? = nil
        )
        {
            self.eventData = eventData
            self.eventDataChecksum = eventDataChecksum
            self.id = id
        }
    }

}

extension CloudTrailDataClientTypes.AuditEventResultEntry {

    static func read(from reader: SmithyJSON.Reader) throws -> CloudTrailDataClientTypes.AuditEventResultEntry {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = CloudTrailDataClientTypes.AuditEventResultEntry()
        value.id = try reader["id"].readIfPresent()
        value.eventID = try reader["eventID"].readIfPresent()
        return value
    }
}

extension CloudTrailDataClientTypes {
    /// A response that includes successful and failed event results.
    public struct AuditEventResultEntry {
        /// The event ID assigned by CloudTrail.
        /// This member is required.
        public var eventID: Swift.String?
        /// The original event ID from the source event.
        /// This member is required.
        public var id: Swift.String?

        public init(
            eventID: Swift.String? = nil,
            id: Swift.String? = nil
        )
        {
            self.eventID = eventID
            self.id = id
        }
    }

}

extension ChannelInsufficientPermission {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ChannelInsufficientPermission {
        let reader = baseError.errorBodyReader
        var value = ChannelInsufficientPermission()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The caller's account ID must be the same as the channel owner's account ID.
public struct ChannelInsufficientPermission: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ChannelInsufficientPermission" }
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

extension ChannelNotFound {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ChannelNotFound {
        let reader = baseError.errorBodyReader
        var value = ChannelNotFound()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The channel could not be found.
public struct ChannelNotFound: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ChannelNotFound" }
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

extension ChannelUnsupportedSchema {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ChannelUnsupportedSchema {
        let reader = baseError.errorBodyReader
        var value = ChannelUnsupportedSchema()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The schema type of the event is not supported.
public struct ChannelUnsupportedSchema: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ChannelUnsupportedSchema" }
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

public enum CloudTrailDataClientTypes {}

extension DuplicatedAuditEventId {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> DuplicatedAuditEventId {
        let reader = baseError.errorBodyReader
        var value = DuplicatedAuditEventId()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// Two or more entries in the request have the same event ID.
public struct DuplicatedAuditEventId: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "DuplicatedAuditEventId" }
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

extension InvalidChannelARN {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InvalidChannelARN {
        let reader = baseError.errorBodyReader
        var value = InvalidChannelARN()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The specified channel ARN is not a valid channel ARN.
public struct InvalidChannelARN: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidChannelARN" }
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

extension PutAuditEventsInput {

    static func queryItemProvider(_ value: PutAuditEventsInput) throws -> [Smithy.URIQueryItem] {
        var items = [Smithy.URIQueryItem]()
        guard let channelArn = value.channelArn else {
            let message = "Creating a URL Query Item failed. channelArn is required and must not be nil."
            throw Smithy.ClientError.unknownError(message)
        }
        let channelArnQueryItem = Smithy.URIQueryItem(name: "channelArn".urlPercentEncoding(), value: Swift.String(channelArn).urlPercentEncoding())
        items.append(channelArnQueryItem)
        if let externalId = value.externalId {
            let externalIdQueryItem = Smithy.URIQueryItem(name: "externalId".urlPercentEncoding(), value: Swift.String(externalId).urlPercentEncoding())
            items.append(externalIdQueryItem)
        }
        return items
    }
}

extension PutAuditEventsInput {

    static func urlPathProvider(_ value: PutAuditEventsInput) -> Swift.String? {
        return "/PutAuditEvents"
    }
}

extension PutAuditEventsInput {

    static func write(value: PutAuditEventsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["auditEvents"].writeList(value.auditEvents, memberWritingClosure: CloudTrailDataClientTypes.AuditEvent.write(value:to:), memberNodeInfo: "member", isFlattened: false)
    }
}

public struct PutAuditEventsInput {
    /// The JSON payload of events that you want to ingest. You can also point to the JSON event payload in a file.
    /// This member is required.
    public var auditEvents: [CloudTrailDataClientTypes.AuditEvent]?
    /// The ARN or ID (the ARN suffix) of a channel.
    /// This member is required.
    public var channelArn: Swift.String?
    /// A unique identifier that is conditionally required when the channel's resource policy includes an external ID. This value can be any string, such as a passphrase or account number.
    public var externalId: Swift.String?

    public init(
        auditEvents: [CloudTrailDataClientTypes.AuditEvent]? = nil,
        channelArn: Swift.String? = nil,
        externalId: Swift.String? = nil
    )
    {
        self.auditEvents = auditEvents
        self.channelArn = channelArn
        self.externalId = externalId
    }
}

extension PutAuditEventsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> PutAuditEventsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = PutAuditEventsOutput()
        value.failed = try reader["failed"].readListIfPresent(memberReadingClosure: CloudTrailDataClientTypes.ResultErrorEntry.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.successful = try reader["successful"].readListIfPresent(memberReadingClosure: CloudTrailDataClientTypes.AuditEventResultEntry.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

public struct PutAuditEventsOutput {
    /// Lists events in the provided event payload that could not be ingested into CloudTrail, and includes the error code and error message returned for events that could not be ingested.
    /// This member is required.
    public var failed: [CloudTrailDataClientTypes.ResultErrorEntry]?
    /// Lists events in the provided event payload that were successfully ingested into CloudTrail.
    /// This member is required.
    public var successful: [CloudTrailDataClientTypes.AuditEventResultEntry]?

    public init(
        failed: [CloudTrailDataClientTypes.ResultErrorEntry]? = nil,
        successful: [CloudTrailDataClientTypes.AuditEventResultEntry]? = nil
    )
    {
        self.failed = failed
        self.successful = successful
    }
}

enum PutAuditEventsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ChannelInsufficientPermission": return try ChannelInsufficientPermission.makeError(baseError: baseError)
            case "ChannelNotFound": return try ChannelNotFound.makeError(baseError: baseError)
            case "ChannelUnsupportedSchema": return try ChannelUnsupportedSchema.makeError(baseError: baseError)
            case "DuplicatedAuditEventId": return try DuplicatedAuditEventId.makeError(baseError: baseError)
            case "InvalidChannelARN": return try InvalidChannelARN.makeError(baseError: baseError)
            case "UnsupportedOperationException": return try UnsupportedOperationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension CloudTrailDataClientTypes.ResultErrorEntry {

    static func read(from reader: SmithyJSON.Reader) throws -> CloudTrailDataClientTypes.ResultErrorEntry {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = CloudTrailDataClientTypes.ResultErrorEntry()
        value.id = try reader["id"].readIfPresent()
        value.errorCode = try reader["errorCode"].readIfPresent()
        value.errorMessage = try reader["errorMessage"].readIfPresent()
        return value
    }
}

extension CloudTrailDataClientTypes {
    /// Includes the error code and error message for events that could not be ingested by CloudTrail.
    public struct ResultErrorEntry {
        /// The error code for events that could not be ingested by CloudTrail. Possible error codes include: FieldTooLong, FieldNotFound, InvalidChecksum, InvalidData, InvalidRecipient, InvalidEventSource, AccountNotSubscribed, Throttling, and InternalFailure.
        /// This member is required.
        public var errorCode: Swift.String?
        /// The message that describes the error for events that could not be ingested by CloudTrail.
        /// This member is required.
        public var errorMessage: Swift.String?
        /// The original event ID from the source event that could not be ingested by CloudTrail.
        /// This member is required.
        public var id: Swift.String?

        public init(
            errorCode: Swift.String? = nil,
            errorMessage: Swift.String? = nil,
            id: Swift.String? = nil
        )
        {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.id = id
        }
    }

}

extension UnsupportedOperationException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> UnsupportedOperationException {
        let reader = baseError.errorBodyReader
        var value = UnsupportedOperationException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The operation requested is not supported in this region or account.
public struct UnsupportedOperationException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "UnsupportedOperationException" }
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
