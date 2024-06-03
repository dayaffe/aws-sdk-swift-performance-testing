// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension IoT1ClickProjectsClient {
    /// Paginate over `[ListPlacementsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPlacementsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPlacementsOutput`
    public func listPlacementsPaginated(input: ListPlacementsInput) -> ClientRuntime.PaginatorSequence<ListPlacementsInput, ListPlacementsOutput> {
        return ClientRuntime.PaginatorSequence<ListPlacementsInput, ListPlacementsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPlacements(input:))
    }
}

extension ListPlacementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlacementsInput {
        return ListPlacementsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

extension PaginatorSequence where OperationStackInput == ListPlacementsInput, OperationStackOutput == ListPlacementsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPlacementsPaginated`
    /// to access the nested member `[IoT1ClickProjectsClientTypes.PlacementSummary]`
    /// - Returns: `[IoT1ClickProjectsClientTypes.PlacementSummary]`
    public func placements() async throws -> [IoT1ClickProjectsClientTypes.PlacementSummary] {
        return try await self.asyncCompactMap { item in item.placements }
    }
}
extension IoT1ClickProjectsClient {
    /// Paginate over `[ListProjectsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutput`
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListProjectsInput, OperationStackOutput == ListProjectsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectsPaginated`
    /// to access the nested member `[IoT1ClickProjectsClientTypes.ProjectSummary]`
    /// - Returns: `[IoT1ClickProjectsClientTypes.ProjectSummary]`
    public func projects() async throws -> [IoT1ClickProjectsClientTypes.ProjectSummary] {
        return try await self.asyncCompactMap { item in item.projects }
    }
}
