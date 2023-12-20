// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FinspaceClient {
    /// Paginate over `[ListKxChangesetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKxChangesetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKxChangesetsOutput`
    public func listKxChangesetsPaginated(input: ListKxChangesetsInput) -> ClientRuntime.PaginatorSequence<ListKxChangesetsInput, ListKxChangesetsOutput> {
        return ClientRuntime.PaginatorSequence<ListKxChangesetsInput, ListKxChangesetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listKxChangesets(input:))
    }
}

extension ListKxChangesetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKxChangesetsInput {
        return ListKxChangesetsInput(
            databaseName: self.databaseName,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FinspaceClient {
    /// Paginate over `[ListKxClusterNodesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKxClusterNodesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKxClusterNodesOutput`
    public func listKxClusterNodesPaginated(input: ListKxClusterNodesInput) -> ClientRuntime.PaginatorSequence<ListKxClusterNodesInput, ListKxClusterNodesOutput> {
        return ClientRuntime.PaginatorSequence<ListKxClusterNodesInput, ListKxClusterNodesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listKxClusterNodes(input:))
    }
}

extension ListKxClusterNodesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKxClusterNodesInput {
        return ListKxClusterNodesInput(
            clusterName: self.clusterName,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FinspaceClient {
    /// Paginate over `[ListKxDatabasesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKxDatabasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKxDatabasesOutput`
    public func listKxDatabasesPaginated(input: ListKxDatabasesInput) -> ClientRuntime.PaginatorSequence<ListKxDatabasesInput, ListKxDatabasesOutput> {
        return ClientRuntime.PaginatorSequence<ListKxDatabasesInput, ListKxDatabasesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listKxDatabases(input:))
    }
}

extension ListKxDatabasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKxDatabasesInput {
        return ListKxDatabasesInput(
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FinspaceClient {
    /// Paginate over `[ListKxDataviewsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKxDataviewsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKxDataviewsOutput`
    public func listKxDataviewsPaginated(input: ListKxDataviewsInput) -> ClientRuntime.PaginatorSequence<ListKxDataviewsInput, ListKxDataviewsOutput> {
        return ClientRuntime.PaginatorSequence<ListKxDataviewsInput, ListKxDataviewsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listKxDataviews(input:))
    }
}

extension ListKxDataviewsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKxDataviewsInput {
        return ListKxDataviewsInput(
            databaseName: self.databaseName,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FinspaceClient {
    /// Paginate over `[ListKxEnvironmentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKxEnvironmentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKxEnvironmentsOutput`
    public func listKxEnvironmentsPaginated(input: ListKxEnvironmentsInput) -> ClientRuntime.PaginatorSequence<ListKxEnvironmentsInput, ListKxEnvironmentsOutput> {
        return ClientRuntime.PaginatorSequence<ListKxEnvironmentsInput, ListKxEnvironmentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listKxEnvironments(input:))
    }
}

extension ListKxEnvironmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKxEnvironmentsInput {
        return ListKxEnvironmentsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListKxEnvironmentsInput, OperationStackOutput == ListKxEnvironmentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listKxEnvironmentsPaginated`
    /// to access the nested member `[FinspaceClientTypes.KxEnvironment]`
    /// - Returns: `[FinspaceClientTypes.KxEnvironment]`
    public func environments() async throws -> [FinspaceClientTypes.KxEnvironment] {
        return try await self.asyncCompactMap { item in item.environments }
    }
}
extension FinspaceClient {
    /// Paginate over `[ListKxScalingGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKxScalingGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKxScalingGroupsOutput`
    public func listKxScalingGroupsPaginated(input: ListKxScalingGroupsInput) -> ClientRuntime.PaginatorSequence<ListKxScalingGroupsInput, ListKxScalingGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListKxScalingGroupsInput, ListKxScalingGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listKxScalingGroups(input:))
    }
}

extension ListKxScalingGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKxScalingGroupsInput {
        return ListKxScalingGroupsInput(
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
