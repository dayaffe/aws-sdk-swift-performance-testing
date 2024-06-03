// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension SsmSapClient {
    /// Paginate over `[ListApplicationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationsOutput`
    public func listApplicationsPaginated(input: ListApplicationsInput) -> ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput> {
        return ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listApplications(input:))
    }
}

extension ListApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationsInput {
        return ListApplicationsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListApplicationsInput, OperationStackOutput == ListApplicationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listApplicationsPaginated`
    /// to access the nested member `[SsmSapClientTypes.ApplicationSummary]`
    /// - Returns: `[SsmSapClientTypes.ApplicationSummary]`
    public func applications() async throws -> [SsmSapClientTypes.ApplicationSummary] {
        return try await self.asyncCompactMap { item in item.applications }
    }
}
extension SsmSapClient {
    /// Paginate over `[ListComponentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListComponentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListComponentsOutput`
    public func listComponentsPaginated(input: ListComponentsInput) -> ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutput> {
        return ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listComponents(input:))
    }
}

extension ListComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComponentsInput {
        return ListComponentsInput(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListComponentsInput, OperationStackOutput == ListComponentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listComponentsPaginated`
    /// to access the nested member `[SsmSapClientTypes.ComponentSummary]`
    /// - Returns: `[SsmSapClientTypes.ComponentSummary]`
    public func components() async throws -> [SsmSapClientTypes.ComponentSummary] {
        return try await self.asyncCompactMap { item in item.components }
    }
}
extension SsmSapClient {
    /// Paginate over `[ListDatabasesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatabasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatabasesOutput`
    public func listDatabasesPaginated(input: ListDatabasesInput) -> ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutput> {
        return ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatabases(input:))
    }
}

extension ListDatabasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatabasesInput {
        return ListDatabasesInput(
            applicationId: self.applicationId,
            componentId: self.componentId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDatabasesInput, OperationStackOutput == ListDatabasesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDatabasesPaginated`
    /// to access the nested member `[SsmSapClientTypes.DatabaseSummary]`
    /// - Returns: `[SsmSapClientTypes.DatabaseSummary]`
    public func databases() async throws -> [SsmSapClientTypes.DatabaseSummary] {
        return try await self.asyncCompactMap { item in item.databases }
    }
}
extension SsmSapClient {
    /// Paginate over `[ListOperationEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOperationEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOperationEventsOutput`
    public func listOperationEventsPaginated(input: ListOperationEventsInput) -> ClientRuntime.PaginatorSequence<ListOperationEventsInput, ListOperationEventsOutput> {
        return ClientRuntime.PaginatorSequence<ListOperationEventsInput, ListOperationEventsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listOperationEvents(input:))
    }
}

extension ListOperationEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOperationEventsInput {
        return ListOperationEventsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            operationId: self.operationId
        )}
}

extension PaginatorSequence where OperationStackInput == ListOperationEventsInput, OperationStackOutput == ListOperationEventsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listOperationEventsPaginated`
    /// to access the nested member `[SsmSapClientTypes.OperationEvent]`
    /// - Returns: `[SsmSapClientTypes.OperationEvent]`
    public func operationEvents() async throws -> [SsmSapClientTypes.OperationEvent] {
        return try await self.asyncCompactMap { item in item.operationEvents }
    }
}
extension SsmSapClient {
    /// Paginate over `[ListOperationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOperationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOperationsOutput`
    public func listOperationsPaginated(input: ListOperationsInput) -> ClientRuntime.PaginatorSequence<ListOperationsInput, ListOperationsOutput> {
        return ClientRuntime.PaginatorSequence<ListOperationsInput, ListOperationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listOperations(input:))
    }
}

extension ListOperationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOperationsInput {
        return ListOperationsInput(
            applicationId: self.applicationId,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListOperationsInput, OperationStackOutput == ListOperationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listOperationsPaginated`
    /// to access the nested member `[SsmSapClientTypes.Operation]`
    /// - Returns: `[SsmSapClientTypes.Operation]`
    public func operations() async throws -> [SsmSapClientTypes.Operation] {
        return try await self.asyncCompactMap { item in item.operations }
    }
}
