// Code generated by smithy-swift-codegen. DO NOT EDIT!
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import AWSClientRuntime
import ClientRuntime
import SmithyHTTPAPI
import SmithyJSON
import SmithyReadWrite

extension ClientLimitExceededException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ClientLimitExceededException {
        let reader = baseError.errorBodyReader
        var value = ClientLimitExceededException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// Your request was throttled because you have exceeded the limit of allowed client calls. Try making the call later.
public struct ClientLimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ClientLimitExceededException" }
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

extension GetIceServerConfigInput {

    static func urlPathProvider(_ value: GetIceServerConfigInput) -> Swift.String? {
        return "/v1/get-ice-server-config"
    }
}

extension GetIceServerConfigInput {

    static func write(value: GetIceServerConfigInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["ChannelARN"].write(value.channelARN)
        try writer["ClientId"].write(value.clientId)
        try writer["Service"].write(value.service)
        try writer["Username"].write(value.username)
    }
}

public struct GetIceServerConfigInput {
    /// The ARN of the signaling channel to be used for the peer-to-peer connection between configured peers.
    /// This member is required.
    public var channelARN: Swift.String?
    /// Unique identifier for the viewer. Must be unique within the signaling channel.
    public var clientId: Swift.String?
    /// Specifies the desired service. Currently, TURN is the only valid value.
    public var service: KinesisVideoSignalingClientTypes.Service?
    /// An optional user ID to be associated with the credentials.
    public var username: Swift.String?

    public init(
        channelARN: Swift.String? = nil,
        clientId: Swift.String? = nil,
        service: KinesisVideoSignalingClientTypes.Service? = nil,
        username: Swift.String? = nil
    )
    {
        self.channelARN = channelARN
        self.clientId = clientId
        self.service = service
        self.username = username
    }
}

extension GetIceServerConfigOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> GetIceServerConfigOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetIceServerConfigOutput()
        value.iceServerList = try reader["IceServerList"].readListIfPresent(memberReadingClosure: KinesisVideoSignalingClientTypes.IceServer.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

public struct GetIceServerConfigOutput {
    /// The list of ICE server information objects.
    public var iceServerList: [KinesisVideoSignalingClientTypes.IceServer]?

    public init(
        iceServerList: [KinesisVideoSignalingClientTypes.IceServer]? = nil
    )
    {
        self.iceServerList = iceServerList
    }
}

enum GetIceServerConfigOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ClientLimitExceededException": return try ClientLimitExceededException.makeError(baseError: baseError)
            case "InvalidArgumentException": return try InvalidArgumentException.makeError(baseError: baseError)
            case "InvalidClientException": return try InvalidClientException.makeError(baseError: baseError)
            case "NotAuthorizedException": return try NotAuthorizedException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "SessionExpiredException": return try SessionExpiredException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension KinesisVideoSignalingClientTypes.IceServer {

    static func read(from reader: SmithyJSON.Reader) throws -> KinesisVideoSignalingClientTypes.IceServer {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = KinesisVideoSignalingClientTypes.IceServer()
        value.uris = try reader["Uris"].readListIfPresent(memberReadingClosure: Swift.String.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.username = try reader["Username"].readIfPresent()
        value.password = try reader["Password"].readIfPresent()
        value.ttl = try reader["Ttl"].readIfPresent()
        return value
    }
}

extension KinesisVideoSignalingClientTypes {
    /// A structure for the ICE server connection data.
    public struct IceServer {
        /// A password to login to the ICE server.
        public var password: Swift.String?
        /// The period of time, in seconds, during which the username and password are valid.
        public var ttl: Swift.Int?
        /// An array of URIs, in the form specified in the [I-D.petithuguenin-behave-turn-uris](https://tools.ietf.org/html/draft-petithuguenin-behave-turn-uris-03) spec. These URIs provide the different addresses and/or protocols that can be used to reach the TURN server.
        public var uris: [Swift.String]?
        /// A username to login to the ICE server.
        public var username: Swift.String?

        public init(
            password: Swift.String? = nil,
            ttl: Swift.Int? = nil,
            uris: [Swift.String]? = nil,
            username: Swift.String? = nil
        )
        {
            self.password = password
            self.ttl = ttl
            self.uris = uris
            self.username = username
        }
    }

}

extension InvalidArgumentException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InvalidArgumentException {
        let reader = baseError.errorBodyReader
        var value = InvalidArgumentException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The value for this input parameter is invalid.
public struct InvalidArgumentException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidArgumentException" }
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

extension InvalidClientException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InvalidClientException {
        let reader = baseError.errorBodyReader
        var value = InvalidClientException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The specified client is invalid.
public struct InvalidClientException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidClientException" }
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

public enum KinesisVideoSignalingClientTypes {}

extension NotAuthorizedException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> NotAuthorizedException {
        let reader = baseError.errorBodyReader
        var value = NotAuthorizedException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The caller is not authorized to perform this operation.
public struct NotAuthorizedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "NotAuthorizedException" }
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

extension ResourceNotFoundException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ResourceNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ResourceNotFoundException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The specified resource is not found.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
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
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension SendAlexaOfferToMasterInput {

    static func urlPathProvider(_ value: SendAlexaOfferToMasterInput) -> Swift.String? {
        return "/v1/send-alexa-offer-to-master"
    }
}

extension SendAlexaOfferToMasterInput {

    static func write(value: SendAlexaOfferToMasterInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["ChannelARN"].write(value.channelARN)
        try writer["MessagePayload"].write(value.messagePayload)
        try writer["SenderClientId"].write(value.senderClientId)
    }
}

public struct SendAlexaOfferToMasterInput {
    /// The ARN of the signaling channel by which Alexa and the master peer communicate.
    /// This member is required.
    public var channelARN: Swift.String?
    /// The base64-encoded SDP offer content.
    /// This member is required.
    public var messagePayload: Swift.String?
    /// The unique identifier for the sender client.
    /// This member is required.
    public var senderClientId: Swift.String?

    public init(
        channelARN: Swift.String? = nil,
        messagePayload: Swift.String? = nil,
        senderClientId: Swift.String? = nil
    )
    {
        self.channelARN = channelARN
        self.messagePayload = messagePayload
        self.senderClientId = senderClientId
    }
}

extension SendAlexaOfferToMasterOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> SendAlexaOfferToMasterOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = SendAlexaOfferToMasterOutput()
        value.answer = try reader["Answer"].readIfPresent()
        return value
    }
}

public struct SendAlexaOfferToMasterOutput {
    /// The base64-encoded SDP answer content.
    public var answer: Swift.String?

    public init(
        answer: Swift.String? = nil
    )
    {
        self.answer = answer
    }
}

enum SendAlexaOfferToMasterOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ClientLimitExceededException": return try ClientLimitExceededException.makeError(baseError: baseError)
            case "InvalidArgumentException": return try InvalidArgumentException.makeError(baseError: baseError)
            case "NotAuthorizedException": return try NotAuthorizedException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension KinesisVideoSignalingClientTypes {

    public enum Service: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case turn
        case sdkUnknown(Swift.String)

        public static var allCases: [Service] {
            return [
                .turn
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .turn: return "TURN"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension SessionExpiredException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> SessionExpiredException {
        let reader = baseError.errorBodyReader
        var value = SessionExpiredException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// If the client session is expired. Once the client is connected, the session is valid for 45 minutes. Client should reconnect to the channel to continue sending/receiving messages.
public struct SessionExpiredException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SessionExpiredException" }
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
