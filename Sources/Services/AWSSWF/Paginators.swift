// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SWFClient {
    /// Paginate over `[GetWorkflowExecutionHistoryOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetWorkflowExecutionHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetWorkflowExecutionHistoryOutputResponse`
    public func getWorkflowExecutionHistoryPaginated(input: GetWorkflowExecutionHistoryInput) -> ClientRuntime.PaginatorSequence<GetWorkflowExecutionHistoryInput, GetWorkflowExecutionHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetWorkflowExecutionHistoryInput, GetWorkflowExecutionHistoryOutputResponse>(input: input, inputKey: \GetWorkflowExecutionHistoryInput.nextPageToken, outputKey: \GetWorkflowExecutionHistoryOutputResponse.nextPageToken, paginationFunction: self.getWorkflowExecutionHistory(input:))
    }
}

extension GetWorkflowExecutionHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetWorkflowExecutionHistoryInput {
        return GetWorkflowExecutionHistoryInput(
            domain: self.domain,
            execution: self.execution,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder
        )}
}

extension PaginatorSequence where Input == GetWorkflowExecutionHistoryInput, Output == GetWorkflowExecutionHistoryOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `getWorkflowExecutionHistoryPaginated`
    /// to access the nested member `[SWFClientTypes.HistoryEvent]`
    /// - Returns: `[SWFClientTypes.HistoryEvent]`
    public func events() async throws -> [SWFClientTypes.HistoryEvent] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
extension SWFClient {
    /// Paginate over `[ListActivityTypesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListActivityTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListActivityTypesOutputResponse`
    public func listActivityTypesPaginated(input: ListActivityTypesInput) -> ClientRuntime.PaginatorSequence<ListActivityTypesInput, ListActivityTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListActivityTypesInput, ListActivityTypesOutputResponse>(input: input, inputKey: \ListActivityTypesInput.nextPageToken, outputKey: \ListActivityTypesOutputResponse.nextPageToken, paginationFunction: self.listActivityTypes(input:))
    }
}

extension ListActivityTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListActivityTypesInput {
        return ListActivityTypesInput(
            domain: self.domain,
            maximumPageSize: self.maximumPageSize,
            name: self.name,
            nextPageToken: token,
            registrationStatus: self.registrationStatus,
            reverseOrder: self.reverseOrder
        )}
}

extension PaginatorSequence where Input == ListActivityTypesInput, Output == ListActivityTypesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listActivityTypesPaginated`
    /// to access the nested member `[SWFClientTypes.ActivityTypeInfo]`
    /// - Returns: `[SWFClientTypes.ActivityTypeInfo]`
    public func typeInfos() async throws -> [SWFClientTypes.ActivityTypeInfo] {
        return try await self.asyncCompactMap { item in item.typeInfos }
    }
}
extension SWFClient {
    /// Paginate over `[ListClosedWorkflowExecutionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListClosedWorkflowExecutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListClosedWorkflowExecutionsOutputResponse`
    public func listClosedWorkflowExecutionsPaginated(input: ListClosedWorkflowExecutionsInput) -> ClientRuntime.PaginatorSequence<ListClosedWorkflowExecutionsInput, ListClosedWorkflowExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListClosedWorkflowExecutionsInput, ListClosedWorkflowExecutionsOutputResponse>(input: input, inputKey: \ListClosedWorkflowExecutionsInput.nextPageToken, outputKey: \ListClosedWorkflowExecutionsOutputResponse.nextPageToken, paginationFunction: self.listClosedWorkflowExecutions(input:))
    }
}

extension ListClosedWorkflowExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClosedWorkflowExecutionsInput {
        return ListClosedWorkflowExecutionsInput(
            closeStatusFilter: self.closeStatusFilter,
            closeTimeFilter: self.closeTimeFilter,
            domain: self.domain,
            executionFilter: self.executionFilter,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder,
            startTimeFilter: self.startTimeFilter,
            tagFilter: self.tagFilter,
            typeFilter: self.typeFilter
        )}
}

extension PaginatorSequence where Input == ListClosedWorkflowExecutionsInput, Output == ListClosedWorkflowExecutionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listClosedWorkflowExecutionsPaginated`
    /// to access the nested member `[SWFClientTypes.WorkflowExecutionInfo]`
    /// - Returns: `[SWFClientTypes.WorkflowExecutionInfo]`
    public func executionInfos() async throws -> [SWFClientTypes.WorkflowExecutionInfo] {
        return try await self.asyncCompactMap { item in item.executionInfos }
    }
}
extension SWFClient {
    /// Paginate over `[ListDomainsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsOutputResponse`
    public func listDomainsPaginated(input: ListDomainsInput) -> ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse>(input: input, inputKey: \ListDomainsInput.nextPageToken, outputKey: \ListDomainsOutputResponse.nextPageToken, paginationFunction: self.listDomains(input:))
    }
}

extension ListDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsInput {
        return ListDomainsInput(
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            registrationStatus: self.registrationStatus,
            reverseOrder: self.reverseOrder
        )}
}

extension PaginatorSequence where Input == ListDomainsInput, Output == ListDomainsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listDomainsPaginated`
    /// to access the nested member `[SWFClientTypes.DomainInfo]`
    /// - Returns: `[SWFClientTypes.DomainInfo]`
    public func domainInfos() async throws -> [SWFClientTypes.DomainInfo] {
        return try await self.asyncCompactMap { item in item.domainInfos }
    }
}
extension SWFClient {
    /// Paginate over `[ListOpenWorkflowExecutionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOpenWorkflowExecutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOpenWorkflowExecutionsOutputResponse`
    public func listOpenWorkflowExecutionsPaginated(input: ListOpenWorkflowExecutionsInput) -> ClientRuntime.PaginatorSequence<ListOpenWorkflowExecutionsInput, ListOpenWorkflowExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOpenWorkflowExecutionsInput, ListOpenWorkflowExecutionsOutputResponse>(input: input, inputKey: \ListOpenWorkflowExecutionsInput.nextPageToken, outputKey: \ListOpenWorkflowExecutionsOutputResponse.nextPageToken, paginationFunction: self.listOpenWorkflowExecutions(input:))
    }
}

extension ListOpenWorkflowExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOpenWorkflowExecutionsInput {
        return ListOpenWorkflowExecutionsInput(
            domain: self.domain,
            executionFilter: self.executionFilter,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder,
            startTimeFilter: self.startTimeFilter,
            tagFilter: self.tagFilter,
            typeFilter: self.typeFilter
        )}
}

extension PaginatorSequence where Input == ListOpenWorkflowExecutionsInput, Output == ListOpenWorkflowExecutionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listOpenWorkflowExecutionsPaginated`
    /// to access the nested member `[SWFClientTypes.WorkflowExecutionInfo]`
    /// - Returns: `[SWFClientTypes.WorkflowExecutionInfo]`
    public func executionInfos() async throws -> [SWFClientTypes.WorkflowExecutionInfo] {
        return try await self.asyncCompactMap { item in item.executionInfos }
    }
}
extension SWFClient {
    /// Paginate over `[ListWorkflowTypesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWorkflowTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWorkflowTypesOutputResponse`
    public func listWorkflowTypesPaginated(input: ListWorkflowTypesInput) -> ClientRuntime.PaginatorSequence<ListWorkflowTypesInput, ListWorkflowTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWorkflowTypesInput, ListWorkflowTypesOutputResponse>(input: input, inputKey: \ListWorkflowTypesInput.nextPageToken, outputKey: \ListWorkflowTypesOutputResponse.nextPageToken, paginationFunction: self.listWorkflowTypes(input:))
    }
}

extension ListWorkflowTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorkflowTypesInput {
        return ListWorkflowTypesInput(
            domain: self.domain,
            maximumPageSize: self.maximumPageSize,
            name: self.name,
            nextPageToken: token,
            registrationStatus: self.registrationStatus,
            reverseOrder: self.reverseOrder
        )}
}

extension PaginatorSequence where Input == ListWorkflowTypesInput, Output == ListWorkflowTypesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listWorkflowTypesPaginated`
    /// to access the nested member `[SWFClientTypes.WorkflowTypeInfo]`
    /// - Returns: `[SWFClientTypes.WorkflowTypeInfo]`
    public func typeInfos() async throws -> [SWFClientTypes.WorkflowTypeInfo] {
        return try await self.asyncCompactMap { item in item.typeInfos }
    }
}
extension SWFClient {
    /// Paginate over `[PollForDecisionTaskOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[PollForDecisionTaskInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `PollForDecisionTaskOutputResponse`
    public func pollForDecisionTaskPaginated(input: PollForDecisionTaskInput) -> ClientRuntime.PaginatorSequence<PollForDecisionTaskInput, PollForDecisionTaskOutputResponse> {
        return ClientRuntime.PaginatorSequence<PollForDecisionTaskInput, PollForDecisionTaskOutputResponse>(input: input, inputKey: \PollForDecisionTaskInput.nextPageToken, outputKey: \PollForDecisionTaskOutputResponse.nextPageToken, paginationFunction: self.pollForDecisionTask(input:))
    }
}

extension PollForDecisionTaskInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> PollForDecisionTaskInput {
        return PollForDecisionTaskInput(
            domain: self.domain,
            identity: self.identity,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder,
            startAtPreviousStartedEvent: self.startAtPreviousStartedEvent,
            taskList: self.taskList
        )}
}

extension PaginatorSequence where Input == PollForDecisionTaskInput, Output == PollForDecisionTaskOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `pollForDecisionTaskPaginated`
    /// to access the nested member `[SWFClientTypes.HistoryEvent]`
    /// - Returns: `[SWFClientTypes.HistoryEvent]`
    public func events() async throws -> [SWFClientTypes.HistoryEvent] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
