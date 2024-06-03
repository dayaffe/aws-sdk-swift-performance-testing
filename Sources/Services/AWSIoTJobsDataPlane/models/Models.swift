// Code generated by smithy-swift-codegen. DO NOT EDIT!
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import AWSClientRuntime
import ClientRuntime
import Foundation
import Smithy
import SmithyHTTPAPI
import SmithyJSON
import SmithyReadWrite

extension CertificateValidationException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> CertificateValidationException {
        let reader = baseError.errorBodyReader
        var value = CertificateValidationException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The certificate is invalid.
public struct CertificateValidationException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// Additional information about the exception.
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "CertificateValidationException" }
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

extension DescribeJobExecutionInput {

    static func queryItemProvider(_ value: DescribeJobExecutionInput) throws -> [Smithy.URIQueryItem] {
        var items = [Smithy.URIQueryItem]()
        if let executionNumber = value.executionNumber {
            let executionNumberQueryItem = Smithy.URIQueryItem(name: "executionNumber".urlPercentEncoding(), value: Swift.String(executionNumber).urlPercentEncoding())
            items.append(executionNumberQueryItem)
        }
        if let includeJobDocument = value.includeJobDocument {
            let includeJobDocumentQueryItem = Smithy.URIQueryItem(name: "includeJobDocument".urlPercentEncoding(), value: Swift.String(includeJobDocument).urlPercentEncoding())
            items.append(includeJobDocumentQueryItem)
        }
        return items
    }
}

extension DescribeJobExecutionInput {

    static func urlPathProvider(_ value: DescribeJobExecutionInput) -> Swift.String? {
        guard let thingName = value.thingName else {
            return nil
        }
        guard let jobId = value.jobId else {
            return nil
        }
        return "/things/\(thingName.urlPercentEncoding())/jobs/\(jobId.urlPercentEncoding())"
    }
}

public struct DescribeJobExecutionInput {
    /// Optional. A number that identifies a particular job execution on a particular device. If not specified, the latest job execution is returned.
    public var executionNumber: Swift.Int?
    /// Optional. When set to true, the response contains the job document. The default is false.
    public var includeJobDocument: Swift.Bool?
    /// The unique identifier assigned to this job when it was created.
    /// This member is required.
    public var jobId: Swift.String?
    /// The thing name associated with the device the job execution is running on.
    /// This member is required.
    public var thingName: Swift.String?

    public init(
        executionNumber: Swift.Int? = nil,
        includeJobDocument: Swift.Bool? = nil,
        jobId: Swift.String? = nil,
        thingName: Swift.String? = nil
    )
    {
        self.executionNumber = executionNumber
        self.includeJobDocument = includeJobDocument
        self.jobId = jobId
        self.thingName = thingName
    }
}

extension DescribeJobExecutionOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> DescribeJobExecutionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = DescribeJobExecutionOutput()
        value.execution = try reader["execution"].readIfPresent(with: IoTJobsDataPlaneClientTypes.JobExecution.read(from:))
        return value
    }
}

public struct DescribeJobExecutionOutput {
    /// Contains data about a job execution.
    public var execution: IoTJobsDataPlaneClientTypes.JobExecution?

    public init(
        execution: IoTJobsDataPlaneClientTypes.JobExecution? = nil
    )
    {
        self.execution = execution
    }
}

enum DescribeJobExecutionOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "CertificateValidationException": return try CertificateValidationException.makeError(baseError: baseError)
            case "InvalidRequestException": return try InvalidRequestException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ServiceUnavailableException": return try ServiceUnavailableException.makeError(baseError: baseError)
            case "TerminalStateException": return try TerminalStateException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension GetPendingJobExecutionsInput {

    static func urlPathProvider(_ value: GetPendingJobExecutionsInput) -> Swift.String? {
        guard let thingName = value.thingName else {
            return nil
        }
        return "/things/\(thingName.urlPercentEncoding())/jobs"
    }
}

public struct GetPendingJobExecutionsInput {
    /// The name of the thing that is executing the job.
    /// This member is required.
    public var thingName: Swift.String?

    public init(
        thingName: Swift.String? = nil
    )
    {
        self.thingName = thingName
    }
}

extension GetPendingJobExecutionsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> GetPendingJobExecutionsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetPendingJobExecutionsOutput()
        value.inProgressJobs = try reader["inProgressJobs"].readListIfPresent(memberReadingClosure: IoTJobsDataPlaneClientTypes.JobExecutionSummary.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.queuedJobs = try reader["queuedJobs"].readListIfPresent(memberReadingClosure: IoTJobsDataPlaneClientTypes.JobExecutionSummary.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

public struct GetPendingJobExecutionsOutput {
    /// A list of JobExecutionSummary objects with status IN_PROGRESS.
    public var inProgressJobs: [IoTJobsDataPlaneClientTypes.JobExecutionSummary]?
    /// A list of JobExecutionSummary objects with status QUEUED.
    public var queuedJobs: [IoTJobsDataPlaneClientTypes.JobExecutionSummary]?

    public init(
        inProgressJobs: [IoTJobsDataPlaneClientTypes.JobExecutionSummary]? = nil,
        queuedJobs: [IoTJobsDataPlaneClientTypes.JobExecutionSummary]? = nil
    )
    {
        self.inProgressJobs = inProgressJobs
        self.queuedJobs = queuedJobs
    }
}

enum GetPendingJobExecutionsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "CertificateValidationException": return try CertificateValidationException.makeError(baseError: baseError)
            case "InvalidRequestException": return try InvalidRequestException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ServiceUnavailableException": return try ServiceUnavailableException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension InvalidRequestException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InvalidRequestException {
        let reader = baseError.errorBodyReader
        var value = InvalidRequestException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
public struct InvalidRequestException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// The message for the exception.
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidRequestException" }
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

extension InvalidStateTransitionException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InvalidStateTransitionException {
        let reader = baseError.errorBodyReader
        var value = InvalidStateTransitionException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// An update attempted to change the job execution to a state that is invalid because of the job execution's current state (for example, an attempt to change a request in state SUCCESS to state IN_PROGRESS). In this case, the body of the error message also contains the executionState field.
public struct InvalidStateTransitionException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidStateTransitionException" }
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

public enum IoTJobsDataPlaneClientTypes {}

extension IoTJobsDataPlaneClientTypes.JobExecution {

    static func read(from reader: SmithyJSON.Reader) throws -> IoTJobsDataPlaneClientTypes.JobExecution {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = IoTJobsDataPlaneClientTypes.JobExecution()
        value.jobId = try reader["jobId"].readIfPresent()
        value.thingName = try reader["thingName"].readIfPresent()
        value.status = try reader["status"].readIfPresent()
        value.statusDetails = try reader["statusDetails"].readMapIfPresent(valueReadingClosure: Swift.String.read(from:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        value.queuedAt = try reader["queuedAt"].readIfPresent() ?? 0
        value.startedAt = try reader["startedAt"].readIfPresent()
        value.lastUpdatedAt = try reader["lastUpdatedAt"].readIfPresent() ?? 0
        value.approximateSecondsBeforeTimedOut = try reader["approximateSecondsBeforeTimedOut"].readIfPresent()
        value.versionNumber = try reader["versionNumber"].readIfPresent() ?? 0
        value.executionNumber = try reader["executionNumber"].readIfPresent()
        value.jobDocument = try reader["jobDocument"].readIfPresent()
        return value
    }
}

extension IoTJobsDataPlaneClientTypes {
    /// Contains data about a job execution.
    public struct JobExecution {
        /// The estimated number of seconds that remain before the job execution status will be changed to TIMED_OUT.
        public var approximateSecondsBeforeTimedOut: Swift.Int?
        /// A number that identifies a particular job execution on a particular device. It can be used later in commands that return or update job execution information.
        public var executionNumber: Swift.Int?
        /// The content of the job document.
        public var jobDocument: Swift.String?
        /// The unique identifier you assigned to this job when it was created.
        public var jobId: Swift.String?
        /// The time, in milliseconds since the epoch, when the job execution was last updated.
        public var lastUpdatedAt: Swift.Int
        /// The time, in milliseconds since the epoch, when the job execution was enqueued.
        public var queuedAt: Swift.Int
        /// The time, in milliseconds since the epoch, when the job execution was started.
        public var startedAt: Swift.Int?
        /// The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
        public var status: IoTJobsDataPlaneClientTypes.JobExecutionStatus?
        /// A collection of name/value pairs that describe the status of the job execution.
        public var statusDetails: [Swift.String:Swift.String]?
        /// The name of the thing that is executing the job.
        public var thingName: Swift.String?
        /// The version of the job execution. Job execution versions are incremented each time they are updated by a device.
        public var versionNumber: Swift.Int

        public init(
            approximateSecondsBeforeTimedOut: Swift.Int? = nil,
            executionNumber: Swift.Int? = nil,
            jobDocument: Swift.String? = nil,
            jobId: Swift.String? = nil,
            lastUpdatedAt: Swift.Int = 0,
            queuedAt: Swift.Int = 0,
            startedAt: Swift.Int? = nil,
            status: IoTJobsDataPlaneClientTypes.JobExecutionStatus? = nil,
            statusDetails: [Swift.String:Swift.String]? = nil,
            thingName: Swift.String? = nil,
            versionNumber: Swift.Int = 0
        )
        {
            self.approximateSecondsBeforeTimedOut = approximateSecondsBeforeTimedOut
            self.executionNumber = executionNumber
            self.jobDocument = jobDocument
            self.jobId = jobId
            self.lastUpdatedAt = lastUpdatedAt
            self.queuedAt = queuedAt
            self.startedAt = startedAt
            self.status = status
            self.statusDetails = statusDetails
            self.thingName = thingName
            self.versionNumber = versionNumber
        }
    }

}

extension IoTJobsDataPlaneClientTypes.JobExecutionState {

    static func read(from reader: SmithyJSON.Reader) throws -> IoTJobsDataPlaneClientTypes.JobExecutionState {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = IoTJobsDataPlaneClientTypes.JobExecutionState()
        value.status = try reader["status"].readIfPresent()
        value.statusDetails = try reader["statusDetails"].readMapIfPresent(valueReadingClosure: Swift.String.read(from:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        value.versionNumber = try reader["versionNumber"].readIfPresent() ?? 0
        return value
    }
}

extension IoTJobsDataPlaneClientTypes {
    /// Contains data about the state of a job execution.
    public struct JobExecutionState {
        /// The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
        public var status: IoTJobsDataPlaneClientTypes.JobExecutionStatus?
        /// A collection of name/value pairs that describe the status of the job execution.
        public var statusDetails: [Swift.String:Swift.String]?
        /// The version of the job execution. Job execution versions are incremented each time they are updated by a device.
        public var versionNumber: Swift.Int

        public init(
            status: IoTJobsDataPlaneClientTypes.JobExecutionStatus? = nil,
            statusDetails: [Swift.String:Swift.String]? = nil,
            versionNumber: Swift.Int = 0
        )
        {
            self.status = status
            self.statusDetails = statusDetails
            self.versionNumber = versionNumber
        }
    }

}

extension IoTJobsDataPlaneClientTypes {

    public enum JobExecutionStatus: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case canceled
        case failed
        case inProgress
        case queued
        case rejected
        case removed
        case succeeded
        case timedOut
        case sdkUnknown(Swift.String)

        public static var allCases: [JobExecutionStatus] {
            return [
                .canceled,
                .failed,
                .inProgress,
                .queued,
                .rejected,
                .removed,
                .succeeded,
                .timedOut
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .canceled: return "CANCELED"
            case .failed: return "FAILED"
            case .inProgress: return "IN_PROGRESS"
            case .queued: return "QUEUED"
            case .rejected: return "REJECTED"
            case .removed: return "REMOVED"
            case .succeeded: return "SUCCEEDED"
            case .timedOut: return "TIMED_OUT"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension IoTJobsDataPlaneClientTypes.JobExecutionSummary {

    static func read(from reader: SmithyJSON.Reader) throws -> IoTJobsDataPlaneClientTypes.JobExecutionSummary {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = IoTJobsDataPlaneClientTypes.JobExecutionSummary()
        value.jobId = try reader["jobId"].readIfPresent()
        value.queuedAt = try reader["queuedAt"].readIfPresent() ?? 0
        value.startedAt = try reader["startedAt"].readIfPresent()
        value.lastUpdatedAt = try reader["lastUpdatedAt"].readIfPresent() ?? 0
        value.versionNumber = try reader["versionNumber"].readIfPresent() ?? 0
        value.executionNumber = try reader["executionNumber"].readIfPresent()
        return value
    }
}

extension IoTJobsDataPlaneClientTypes {
    /// Contains a subset of information about a job execution.
    public struct JobExecutionSummary {
        /// A number that identifies a particular job execution on a particular device.
        public var executionNumber: Swift.Int?
        /// The unique identifier you assigned to this job when it was created.
        public var jobId: Swift.String?
        /// The time, in milliseconds since the epoch, when the job execution was last updated.
        public var lastUpdatedAt: Swift.Int
        /// The time, in milliseconds since the epoch, when the job execution was enqueued.
        public var queuedAt: Swift.Int
        /// The time, in milliseconds since the epoch, when the job execution started.
        public var startedAt: Swift.Int?
        /// The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives an update from a device.
        public var versionNumber: Swift.Int

        public init(
            executionNumber: Swift.Int? = nil,
            jobId: Swift.String? = nil,
            lastUpdatedAt: Swift.Int = 0,
            queuedAt: Swift.Int = 0,
            startedAt: Swift.Int? = nil,
            versionNumber: Swift.Int = 0
        )
        {
            self.executionNumber = executionNumber
            self.jobId = jobId
            self.lastUpdatedAt = lastUpdatedAt
            self.queuedAt = queuedAt
            self.startedAt = startedAt
            self.versionNumber = versionNumber
        }
    }

}

extension ResourceNotFoundException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ResourceNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ResourceNotFoundException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The specified resource does not exist.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// The message for the exception.
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

extension ServiceUnavailableException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ServiceUnavailableException {
        let reader = baseError.errorBodyReader
        var value = ServiceUnavailableException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The service is temporarily unavailable.
public struct ServiceUnavailableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// The message for the exception.
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ServiceUnavailableException" }
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

extension StartNextPendingJobExecutionInput {

    static func urlPathProvider(_ value: StartNextPendingJobExecutionInput) -> Swift.String? {
        guard let thingName = value.thingName else {
            return nil
        }
        return "/things/\(thingName.urlPercentEncoding())/jobs/$next"
    }
}

extension StartNextPendingJobExecutionInput {

    static func write(value: StartNextPendingJobExecutionInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["statusDetails"].writeMap(value.statusDetails, valueWritingClosure: Swift.String.write(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["stepTimeoutInMinutes"].write(value.stepTimeoutInMinutes)
    }
}

public struct StartNextPendingJobExecutionInput {
    /// A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
    public var statusDetails: [Swift.String:Swift.String]?
    /// Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in field stepTimeoutInMinutes) the job execution status will be automatically set to TIMED_OUT. Note that setting this timeout has no effect on that job execution timeout which may have been specified when the job was created (CreateJob using field timeoutConfig).
    public var stepTimeoutInMinutes: Swift.Int?
    /// The name of the thing associated with the device.
    /// This member is required.
    public var thingName: Swift.String?

    public init(
        statusDetails: [Swift.String:Swift.String]? = nil,
        stepTimeoutInMinutes: Swift.Int? = nil,
        thingName: Swift.String? = nil
    )
    {
        self.statusDetails = statusDetails
        self.stepTimeoutInMinutes = stepTimeoutInMinutes
        self.thingName = thingName
    }
}

extension StartNextPendingJobExecutionOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> StartNextPendingJobExecutionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = StartNextPendingJobExecutionOutput()
        value.execution = try reader["execution"].readIfPresent(with: IoTJobsDataPlaneClientTypes.JobExecution.read(from:))
        return value
    }
}

public struct StartNextPendingJobExecutionOutput {
    /// A JobExecution object.
    public var execution: IoTJobsDataPlaneClientTypes.JobExecution?

    public init(
        execution: IoTJobsDataPlaneClientTypes.JobExecution? = nil
    )
    {
        self.execution = execution
    }
}

enum StartNextPendingJobExecutionOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "CertificateValidationException": return try CertificateValidationException.makeError(baseError: baseError)
            case "InvalidRequestException": return try InvalidRequestException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ServiceUnavailableException": return try ServiceUnavailableException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension TerminalStateException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> TerminalStateException {
        let reader = baseError.errorBodyReader
        var value = TerminalStateException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The job is in a terminal state.
public struct TerminalStateException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "TerminalStateException" }
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

extension ThrottlingException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ThrottlingException {
        let reader = baseError.errorBodyReader
        var value = ThrottlingException()
        value.properties.message = try reader["message"].readIfPresent()
        value.properties.payload = try reader["payload"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The rate exceeds the limit.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// The message associated with the exception.
        public internal(set) var message: Swift.String? = nil
        /// The payload associated with the exception.
        public internal(set) var payload: Foundation.Data? = nil
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
        payload: Foundation.Data? = nil
    )
    {
        self.properties.message = message
        self.properties.payload = payload
    }
}

extension UpdateJobExecutionInput {

    static func urlPathProvider(_ value: UpdateJobExecutionInput) -> Swift.String? {
        guard let thingName = value.thingName else {
            return nil
        }
        guard let jobId = value.jobId else {
            return nil
        }
        return "/things/\(thingName.urlPercentEncoding())/jobs/\(jobId.urlPercentEncoding())"
    }
}

extension UpdateJobExecutionInput {

    static func write(value: UpdateJobExecutionInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["executionNumber"].write(value.executionNumber)
        try writer["expectedVersion"].write(value.expectedVersion)
        try writer["includeJobDocument"].write(value.includeJobDocument)
        try writer["includeJobExecutionState"].write(value.includeJobExecutionState)
        try writer["status"].write(value.status)
        try writer["statusDetails"].writeMap(value.statusDetails, valueWritingClosure: Swift.String.write(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["stepTimeoutInMinutes"].write(value.stepTimeoutInMinutes)
    }
}

public struct UpdateJobExecutionInput {
    /// Optional. A number that identifies a particular job execution on a particular device.
    public var executionNumber: Swift.Int?
    /// Optional. The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)
    public var expectedVersion: Swift.Int?
    /// Optional. When set to true, the response contains the job document. The default is false.
    public var includeJobDocument: Swift.Bool?
    /// Optional. When included and set to true, the response contains the JobExecutionState data. The default is false.
    public var includeJobExecutionState: Swift.Bool?
    /// The unique identifier assigned to this job when it was created.
    /// This member is required.
    public var jobId: Swift.String?
    /// The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified on every update.
    /// This member is required.
    public var status: IoTJobsDataPlaneClientTypes.JobExecutionStatus?
    /// Optional. A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
    public var statusDetails: [Swift.String:Swift.String]?
    /// Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by again calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in this field) the job execution status will be automatically set to TIMED_OUT. Note that setting or resetting this timeout has no effect on that job execution timeout which may have been specified when the job was created (CreateJob using field timeoutConfig).
    public var stepTimeoutInMinutes: Swift.Int?
    /// The name of the thing associated with the device.
    /// This member is required.
    public var thingName: Swift.String?

    public init(
        executionNumber: Swift.Int? = nil,
        expectedVersion: Swift.Int? = nil,
        includeJobDocument: Swift.Bool? = nil,
        includeJobExecutionState: Swift.Bool? = nil,
        jobId: Swift.String? = nil,
        status: IoTJobsDataPlaneClientTypes.JobExecutionStatus? = nil,
        statusDetails: [Swift.String:Swift.String]? = nil,
        stepTimeoutInMinutes: Swift.Int? = nil,
        thingName: Swift.String? = nil
    )
    {
        self.executionNumber = executionNumber
        self.expectedVersion = expectedVersion
        self.includeJobDocument = includeJobDocument
        self.includeJobExecutionState = includeJobExecutionState
        self.jobId = jobId
        self.status = status
        self.statusDetails = statusDetails
        self.stepTimeoutInMinutes = stepTimeoutInMinutes
        self.thingName = thingName
    }
}

extension UpdateJobExecutionOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> UpdateJobExecutionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = UpdateJobExecutionOutput()
        value.executionState = try reader["executionState"].readIfPresent(with: IoTJobsDataPlaneClientTypes.JobExecutionState.read(from:))
        value.jobDocument = try reader["jobDocument"].readIfPresent()
        return value
    }
}

public struct UpdateJobExecutionOutput {
    /// A JobExecutionState object.
    public var executionState: IoTJobsDataPlaneClientTypes.JobExecutionState?
    /// The contents of the Job Documents.
    public var jobDocument: Swift.String?

    public init(
        executionState: IoTJobsDataPlaneClientTypes.JobExecutionState? = nil,
        jobDocument: Swift.String? = nil
    )
    {
        self.executionState = executionState
        self.jobDocument = jobDocument
    }
}

enum UpdateJobExecutionOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "CertificateValidationException": return try CertificateValidationException.makeError(baseError: baseError)
            case "InvalidRequestException": return try InvalidRequestException.makeError(baseError: baseError)
            case "InvalidStateTransitionException": return try InvalidStateTransitionException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ServiceUnavailableException": return try ServiceUnavailableException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}
