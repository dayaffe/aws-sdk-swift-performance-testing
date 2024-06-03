// Code generated by smithy-swift-codegen. DO NOT EDIT!
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import AWSClientRuntime
import ClientRuntime
import Foundation
import Smithy
import SmithyHTTPAPI
import SmithyJSON
import SmithyReadWrite

extension AccessDeniedException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> AccessDeniedException {
        let reader = baseError.errorBodyReader
        var value = AccessDeniedException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// You do not have sufficient access to perform this action.
public struct AccessDeniedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
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

extension ControlCatalogClientTypes.AssociatedDomainSummary {

    static func read(from reader: SmithyJSON.Reader) throws -> ControlCatalogClientTypes.AssociatedDomainSummary {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ControlCatalogClientTypes.AssociatedDomainSummary()
        value.arn = try reader["Arn"].readIfPresent()
        value.name = try reader["Name"].readIfPresent()
        return value
    }
}

extension ControlCatalogClientTypes {
    /// A summary of the domain that a common control or an objective belongs to.
    public struct AssociatedDomainSummary {
        /// The Amazon Resource Name (ARN) of the related domain.
        public var arn: Swift.String?
        /// The name of the related domain.
        public var name: Swift.String?

        public init(
            arn: Swift.String? = nil,
            name: Swift.String? = nil
        )
        {
            self.arn = arn
            self.name = name
        }
    }

}

extension ControlCatalogClientTypes.AssociatedObjectiveSummary {

    static func read(from reader: SmithyJSON.Reader) throws -> ControlCatalogClientTypes.AssociatedObjectiveSummary {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ControlCatalogClientTypes.AssociatedObjectiveSummary()
        value.arn = try reader["Arn"].readIfPresent()
        value.name = try reader["Name"].readIfPresent()
        return value
    }
}

extension ControlCatalogClientTypes {
    /// A summary of the objective that a common control supports.
    public struct AssociatedObjectiveSummary {
        /// The Amazon Resource Name (ARN) of the related objective.
        public var arn: Swift.String?
        /// The name of the related objective.
        public var name: Swift.String?

        public init(
            arn: Swift.String? = nil,
            name: Swift.String? = nil
        )
        {
            self.arn = arn
            self.name = name
        }
    }

}

extension ControlCatalogClientTypes.CommonControlFilter {

    static func write(value: ControlCatalogClientTypes.CommonControlFilter?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["Objectives"].writeList(value.objectives, memberWritingClosure: ControlCatalogClientTypes.ObjectiveResourceFilter.write(value:to:), memberNodeInfo: "member", isFlattened: false)
    }
}

extension ControlCatalogClientTypes {
    /// An optional filter that narrows the results to a specific objective.
    public struct CommonControlFilter {
        /// The objective that's used as filter criteria. You can use this parameter to specify one objective ARN at a time. Passing multiple ARNs in the CommonControlFilter isn’t currently supported.
        public var objectives: [ControlCatalogClientTypes.ObjectiveResourceFilter]?

        public init(
            objectives: [ControlCatalogClientTypes.ObjectiveResourceFilter]? = nil
        )
        {
            self.objectives = objectives
        }
    }

}

extension ControlCatalogClientTypes.CommonControlSummary {

    static func read(from reader: SmithyJSON.Reader) throws -> ControlCatalogClientTypes.CommonControlSummary {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ControlCatalogClientTypes.CommonControlSummary()
        value.arn = try reader["Arn"].readIfPresent()
        value.name = try reader["Name"].readIfPresent()
        value.description = try reader["Description"].readIfPresent()
        value.domain = try reader["Domain"].readIfPresent(with: ControlCatalogClientTypes.AssociatedDomainSummary.read(from:))
        value.objective = try reader["Objective"].readIfPresent(with: ControlCatalogClientTypes.AssociatedObjectiveSummary.read(from:))
        value.createTime = try reader["CreateTime"].readTimestampIfPresent(format: .epochSeconds)
        value.lastUpdateTime = try reader["LastUpdateTime"].readTimestampIfPresent(format: .epochSeconds)
        return value
    }
}

extension ControlCatalogClientTypes {
    /// A summary of metadata for a common control.
    public struct CommonControlSummary {
        /// The Amazon Resource Name (ARN) that identifies the common control.
        /// This member is required.
        public var arn: Swift.String?
        /// The time when the common control was created.
        /// This member is required.
        public var createTime: Foundation.Date?
        /// The description of the common control.
        /// This member is required.
        public var description: Swift.String?
        /// The domain that the common control belongs to.
        /// This member is required.
        public var domain: ControlCatalogClientTypes.AssociatedDomainSummary?
        /// The time when the common control was most recently updated.
        /// This member is required.
        public var lastUpdateTime: Foundation.Date?
        /// The name of the common control.
        /// This member is required.
        public var name: Swift.String?
        /// The objective that the common control belongs to.
        /// This member is required.
        public var objective: ControlCatalogClientTypes.AssociatedObjectiveSummary?

        public init(
            arn: Swift.String? = nil,
            createTime: Foundation.Date? = nil,
            description: Swift.String? = nil,
            domain: ControlCatalogClientTypes.AssociatedDomainSummary? = nil,
            lastUpdateTime: Foundation.Date? = nil,
            name: Swift.String? = nil,
            objective: ControlCatalogClientTypes.AssociatedObjectiveSummary? = nil
        )
        {
            self.arn = arn
            self.createTime = createTime
            self.description = description
            self.domain = domain
            self.lastUpdateTime = lastUpdateTime
            self.name = name
            self.objective = objective
        }
    }

}

public enum ControlCatalogClientTypes {}

extension ControlCatalogClientTypes.DomainResourceFilter {

    static func write(value: ControlCatalogClientTypes.DomainResourceFilter?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["Arn"].write(value.arn)
    }
}

extension ControlCatalogClientTypes {
    /// The domain resource that's being used as a filter.
    public struct DomainResourceFilter {
        /// The Amazon Resource Name (ARN) of the domain.
        public var arn: Swift.String?

        public init(
            arn: Swift.String? = nil
        )
        {
            self.arn = arn
        }
    }

}

extension ControlCatalogClientTypes.DomainSummary {

    static func read(from reader: SmithyJSON.Reader) throws -> ControlCatalogClientTypes.DomainSummary {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ControlCatalogClientTypes.DomainSummary()
        value.arn = try reader["Arn"].readIfPresent()
        value.name = try reader["Name"].readIfPresent()
        value.description = try reader["Description"].readIfPresent()
        value.createTime = try reader["CreateTime"].readTimestampIfPresent(format: .epochSeconds)
        value.lastUpdateTime = try reader["LastUpdateTime"].readTimestampIfPresent(format: .epochSeconds)
        return value
    }
}

extension ControlCatalogClientTypes {
    /// A summary of metadata for a domain.
    public struct DomainSummary {
        /// The Amazon Resource Name (ARN) that identifies the domain.
        /// This member is required.
        public var arn: Swift.String?
        /// The time when the domain was created.
        /// This member is required.
        public var createTime: Foundation.Date?
        /// The description of the domain.
        /// This member is required.
        public var description: Swift.String?
        /// The time when the domain was most recently updated.
        /// This member is required.
        public var lastUpdateTime: Foundation.Date?
        /// The name of the domain.
        /// This member is required.
        public var name: Swift.String?

        public init(
            arn: Swift.String? = nil,
            createTime: Foundation.Date? = nil,
            description: Swift.String? = nil,
            lastUpdateTime: Foundation.Date? = nil,
            name: Swift.String? = nil
        )
        {
            self.arn = arn
            self.createTime = createTime
            self.description = description
            self.lastUpdateTime = lastUpdateTime
            self.name = name
        }
    }

}

extension InternalServerException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InternalServerException {
        let reader = baseError.errorBodyReader
        var value = InternalServerException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// An internal service error occurred during the processing of your request. Try again later.
public struct InternalServerException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { true }
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

extension ListCommonControlsInput {

    static func queryItemProvider(_ value: ListCommonControlsInput) throws -> [Smithy.URIQueryItem] {
        var items = [Smithy.URIQueryItem]()
        if let nextToken = value.nextToken {
            let nextTokenQueryItem = Smithy.URIQueryItem(name: "nextToken".urlPercentEncoding(), value: Swift.String(nextToken).urlPercentEncoding())
            items.append(nextTokenQueryItem)
        }
        if let maxResults = value.maxResults {
            let maxResultsQueryItem = Smithy.URIQueryItem(name: "maxResults".urlPercentEncoding(), value: Swift.String(maxResults).urlPercentEncoding())
            items.append(maxResultsQueryItem)
        }
        return items
    }
}

extension ListCommonControlsInput {

    static func urlPathProvider(_ value: ListCommonControlsInput) -> Swift.String? {
        return "/common-controls"
    }
}

extension ListCommonControlsInput {

    static func write(value: ListCommonControlsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["CommonControlFilter"].write(value.commonControlFilter, with: ControlCatalogClientTypes.CommonControlFilter.write(value:to:))
    }
}

public struct ListCommonControlsInput {
    /// An optional filter that narrows the results to a specific objective. This filter allows you to specify one objective ARN at a time. Passing multiple ARNs in the CommonControlFilter isn’t currently supported.
    public var commonControlFilter: ControlCatalogClientTypes.CommonControlFilter?
    /// The maximum number of results on a page or for an API request call.
    public var maxResults: Swift.Int?
    /// The pagination token that's used to fetch the next set of results.
    public var nextToken: Swift.String?

    public init(
        commonControlFilter: ControlCatalogClientTypes.CommonControlFilter? = nil,
        maxResults: Swift.Int? = nil,
        nextToken: Swift.String? = nil
    )
    {
        self.commonControlFilter = commonControlFilter
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListCommonControlsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> ListCommonControlsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = ListCommonControlsOutput()
        value.commonControls = try reader["CommonControls"].readListIfPresent(memberReadingClosure: ControlCatalogClientTypes.CommonControlSummary.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.nextToken = try reader["NextToken"].readIfPresent()
        return value
    }
}

public struct ListCommonControlsOutput {
    /// The list of common controls that the ListCommonControls API returns.
    /// This member is required.
    public var commonControls: [ControlCatalogClientTypes.CommonControlSummary]?
    /// The pagination token that's used to fetch the next set of results.
    public var nextToken: Swift.String?

    public init(
        commonControls: [ControlCatalogClientTypes.CommonControlSummary]? = nil,
        nextToken: Swift.String? = nil
    )
    {
        self.commonControls = commonControls
        self.nextToken = nextToken
    }
}

enum ListCommonControlsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ListDomainsInput {

    static func queryItemProvider(_ value: ListDomainsInput) throws -> [Smithy.URIQueryItem] {
        var items = [Smithy.URIQueryItem]()
        if let nextToken = value.nextToken {
            let nextTokenQueryItem = Smithy.URIQueryItem(name: "nextToken".urlPercentEncoding(), value: Swift.String(nextToken).urlPercentEncoding())
            items.append(nextTokenQueryItem)
        }
        if let maxResults = value.maxResults {
            let maxResultsQueryItem = Smithy.URIQueryItem(name: "maxResults".urlPercentEncoding(), value: Swift.String(maxResults).urlPercentEncoding())
            items.append(maxResultsQueryItem)
        }
        return items
    }
}

extension ListDomainsInput {

    static func urlPathProvider(_ value: ListDomainsInput) -> Swift.String? {
        return "/domains"
    }
}

public struct ListDomainsInput {
    /// The maximum number of results on a page or for an API request call.
    public var maxResults: Swift.Int?
    /// The pagination token that's used to fetch the next set of results.
    public var nextToken: Swift.String?

    public init(
        maxResults: Swift.Int? = nil,
        nextToken: Swift.String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListDomainsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> ListDomainsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = ListDomainsOutput()
        value.domains = try reader["Domains"].readListIfPresent(memberReadingClosure: ControlCatalogClientTypes.DomainSummary.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.nextToken = try reader["NextToken"].readIfPresent()
        return value
    }
}

public struct ListDomainsOutput {
    /// The list of domains that the ListDomains API returns.
    /// This member is required.
    public var domains: [ControlCatalogClientTypes.DomainSummary]?
    /// The pagination token that's used to fetch the next set of results.
    public var nextToken: Swift.String?

    public init(
        domains: [ControlCatalogClientTypes.DomainSummary]? = nil,
        nextToken: Swift.String? = nil
    )
    {
        self.domains = domains
        self.nextToken = nextToken
    }
}

enum ListDomainsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ListObjectivesInput {

    static func queryItemProvider(_ value: ListObjectivesInput) throws -> [Smithy.URIQueryItem] {
        var items = [Smithy.URIQueryItem]()
        if let nextToken = value.nextToken {
            let nextTokenQueryItem = Smithy.URIQueryItem(name: "nextToken".urlPercentEncoding(), value: Swift.String(nextToken).urlPercentEncoding())
            items.append(nextTokenQueryItem)
        }
        if let maxResults = value.maxResults {
            let maxResultsQueryItem = Smithy.URIQueryItem(name: "maxResults".urlPercentEncoding(), value: Swift.String(maxResults).urlPercentEncoding())
            items.append(maxResultsQueryItem)
        }
        return items
    }
}

extension ListObjectivesInput {

    static func urlPathProvider(_ value: ListObjectivesInput) -> Swift.String? {
        return "/objectives"
    }
}

extension ListObjectivesInput {

    static func write(value: ListObjectivesInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["ObjectiveFilter"].write(value.objectiveFilter, with: ControlCatalogClientTypes.ObjectiveFilter.write(value:to:))
    }
}

public struct ListObjectivesInput {
    /// The maximum number of results on a page or for an API request call.
    public var maxResults: Swift.Int?
    /// The pagination token that's used to fetch the next set of results.
    public var nextToken: Swift.String?
    /// An optional filter that narrows the results to a specific domain. This filter allows you to specify one domain ARN at a time. Passing multiple ARNs in the ObjectiveFilter isn’t currently supported.
    public var objectiveFilter: ControlCatalogClientTypes.ObjectiveFilter?

    public init(
        maxResults: Swift.Int? = nil,
        nextToken: Swift.String? = nil,
        objectiveFilter: ControlCatalogClientTypes.ObjectiveFilter? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.objectiveFilter = objectiveFilter
    }
}

extension ListObjectivesOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> ListObjectivesOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = ListObjectivesOutput()
        value.nextToken = try reader["NextToken"].readIfPresent()
        value.objectives = try reader["Objectives"].readListIfPresent(memberReadingClosure: ControlCatalogClientTypes.ObjectiveSummary.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

public struct ListObjectivesOutput {
    /// The pagination token that's used to fetch the next set of results.
    public var nextToken: Swift.String?
    /// The list of objectives that the ListObjectives API returns.
    /// This member is required.
    public var objectives: [ControlCatalogClientTypes.ObjectiveSummary]?

    public init(
        nextToken: Swift.String? = nil,
        objectives: [ControlCatalogClientTypes.ObjectiveSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.objectives = objectives
    }
}

enum ListObjectivesOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ControlCatalogClientTypes.ObjectiveFilter {

    static func write(value: ControlCatalogClientTypes.ObjectiveFilter?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["Domains"].writeList(value.domains, memberWritingClosure: ControlCatalogClientTypes.DomainResourceFilter.write(value:to:), memberNodeInfo: "member", isFlattened: false)
    }
}

extension ControlCatalogClientTypes {
    /// An optional filter that narrows the list of objectives to a specific domain.
    public struct ObjectiveFilter {
        /// The domain that's used as filter criteria. You can use this parameter to specify one domain ARN at a time. Passing multiple ARNs in the ObjectiveFilter isn’t currently supported.
        public var domains: [ControlCatalogClientTypes.DomainResourceFilter]?

        public init(
            domains: [ControlCatalogClientTypes.DomainResourceFilter]? = nil
        )
        {
            self.domains = domains
        }
    }

}

extension ControlCatalogClientTypes.ObjectiveResourceFilter {

    static func write(value: ControlCatalogClientTypes.ObjectiveResourceFilter?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["Arn"].write(value.arn)
    }
}

extension ControlCatalogClientTypes {
    /// The objective resource that's being used as a filter.
    public struct ObjectiveResourceFilter {
        /// The Amazon Resource Name (ARN) of the objective.
        public var arn: Swift.String?

        public init(
            arn: Swift.String? = nil
        )
        {
            self.arn = arn
        }
    }

}

extension ControlCatalogClientTypes.ObjectiveSummary {

    static func read(from reader: SmithyJSON.Reader) throws -> ControlCatalogClientTypes.ObjectiveSummary {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ControlCatalogClientTypes.ObjectiveSummary()
        value.arn = try reader["Arn"].readIfPresent()
        value.name = try reader["Name"].readIfPresent()
        value.description = try reader["Description"].readIfPresent()
        value.domain = try reader["Domain"].readIfPresent(with: ControlCatalogClientTypes.AssociatedDomainSummary.read(from:))
        value.createTime = try reader["CreateTime"].readTimestampIfPresent(format: .epochSeconds)
        value.lastUpdateTime = try reader["LastUpdateTime"].readTimestampIfPresent(format: .epochSeconds)
        return value
    }
}

extension ControlCatalogClientTypes {
    /// A summary of metadata for an objective.
    public struct ObjectiveSummary {
        /// The Amazon Resource Name (ARN) that identifies the objective.
        /// This member is required.
        public var arn: Swift.String?
        /// The time when the objective was created.
        /// This member is required.
        public var createTime: Foundation.Date?
        /// The description of the objective.
        /// This member is required.
        public var description: Swift.String?
        /// The domain that the objective belongs to.
        /// This member is required.
        public var domain: ControlCatalogClientTypes.AssociatedDomainSummary?
        /// The time when the objective was most recently updated.
        /// This member is required.
        public var lastUpdateTime: Foundation.Date?
        /// The name of the objective.
        /// This member is required.
        public var name: Swift.String?

        public init(
            arn: Swift.String? = nil,
            createTime: Foundation.Date? = nil,
            description: Swift.String? = nil,
            domain: ControlCatalogClientTypes.AssociatedDomainSummary? = nil,
            lastUpdateTime: Foundation.Date? = nil,
            name: Swift.String? = nil
        )
        {
            self.arn = arn
            self.createTime = createTime
            self.description = description
            self.domain = domain
            self.lastUpdateTime = lastUpdateTime
            self.name = name
        }
    }

}

extension ThrottlingException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ThrottlingException {
        let reader = baseError.errorBodyReader
        var value = ThrottlingException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The request was denied due to request throttling.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ThrottlingException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { true }
    public static var isThrottling: Swift.Bool { true }
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

extension ValidationException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ValidationException {
        let reader = baseError.errorBodyReader
        var value = ValidationException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The request has invalid or missing parameters.
public struct ValidationException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
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
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}
