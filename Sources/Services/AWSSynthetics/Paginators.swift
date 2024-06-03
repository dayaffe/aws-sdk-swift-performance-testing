// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension SyntheticsClient {
    /// Paginate over `[DescribeCanariesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCanariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCanariesOutput`
    public func describeCanariesPaginated(input: DescribeCanariesInput) -> ClientRuntime.PaginatorSequence<DescribeCanariesInput, DescribeCanariesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeCanariesInput, DescribeCanariesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeCanaries(input:))
    }
}

extension DescribeCanariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCanariesInput {
        return DescribeCanariesInput(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token
        )}
}
extension SyntheticsClient {
    /// Paginate over `[DescribeCanariesLastRunOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCanariesLastRunInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCanariesLastRunOutput`
    public func describeCanariesLastRunPaginated(input: DescribeCanariesLastRunInput) -> ClientRuntime.PaginatorSequence<DescribeCanariesLastRunInput, DescribeCanariesLastRunOutput> {
        return ClientRuntime.PaginatorSequence<DescribeCanariesLastRunInput, DescribeCanariesLastRunOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeCanariesLastRun(input:))
    }
}

extension DescribeCanariesLastRunInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCanariesLastRunInput {
        return DescribeCanariesLastRunInput(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token
        )}
}
extension SyntheticsClient {
    /// Paginate over `[DescribeRuntimeVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeRuntimeVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeRuntimeVersionsOutput`
    public func describeRuntimeVersionsPaginated(input: DescribeRuntimeVersionsInput) -> ClientRuntime.PaginatorSequence<DescribeRuntimeVersionsInput, DescribeRuntimeVersionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeRuntimeVersionsInput, DescribeRuntimeVersionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeRuntimeVersions(input:))
    }
}

extension DescribeRuntimeVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRuntimeVersionsInput {
        return DescribeRuntimeVersionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension SyntheticsClient {
    /// Paginate over `[GetCanaryRunsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetCanaryRunsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetCanaryRunsOutput`
    public func getCanaryRunsPaginated(input: GetCanaryRunsInput) -> ClientRuntime.PaginatorSequence<GetCanaryRunsInput, GetCanaryRunsOutput> {
        return ClientRuntime.PaginatorSequence<GetCanaryRunsInput, GetCanaryRunsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getCanaryRuns(input:))
    }
}

extension GetCanaryRunsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCanaryRunsInput {
        return GetCanaryRunsInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}
extension SyntheticsClient {
    /// Paginate over `[ListAssociatedGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAssociatedGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAssociatedGroupsOutput`
    public func listAssociatedGroupsPaginated(input: ListAssociatedGroupsInput) -> ClientRuntime.PaginatorSequence<ListAssociatedGroupsInput, ListAssociatedGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListAssociatedGroupsInput, ListAssociatedGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAssociatedGroups(input:))
    }
}

extension ListAssociatedGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAssociatedGroupsInput {
        return ListAssociatedGroupsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}
extension SyntheticsClient {
    /// Paginate over `[ListGroupResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupResourcesOutput`
    public func listGroupResourcesPaginated(input: ListGroupResourcesInput) -> ClientRuntime.PaginatorSequence<ListGroupResourcesInput, ListGroupResourcesOutput> {
        return ClientRuntime.PaginatorSequence<ListGroupResourcesInput, ListGroupResourcesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listGroupResources(input:))
    }
}

extension ListGroupResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupResourcesInput {
        return ListGroupResourcesInput(
            groupIdentifier: self.groupIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension SyntheticsClient {
    /// Paginate over `[ListGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupsOutput`
    public func listGroupsPaginated(input: ListGroupsInput) -> ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listGroups(input:))
    }
}

extension ListGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupsInput {
        return ListGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
