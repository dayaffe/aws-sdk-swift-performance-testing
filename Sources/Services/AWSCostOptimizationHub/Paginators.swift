// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension CostOptimizationHubClient {
    /// Paginate over `[ListEnrollmentStatusesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEnrollmentStatusesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEnrollmentStatusesOutput`
    public func listEnrollmentStatusesPaginated(input: ListEnrollmentStatusesInput) -> ClientRuntime.PaginatorSequence<ListEnrollmentStatusesInput, ListEnrollmentStatusesOutput> {
        return ClientRuntime.PaginatorSequence<ListEnrollmentStatusesInput, ListEnrollmentStatusesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEnrollmentStatuses(input:))
    }
}

extension ListEnrollmentStatusesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnrollmentStatusesInput {
        return ListEnrollmentStatusesInput(
            accountId: self.accountId,
            includeOrganizationInfo: self.includeOrganizationInfo,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListEnrollmentStatusesInput, OperationStackOutput == ListEnrollmentStatusesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEnrollmentStatusesPaginated`
    /// to access the nested member `[CostOptimizationHubClientTypes.AccountEnrollmentStatus]`
    /// - Returns: `[CostOptimizationHubClientTypes.AccountEnrollmentStatus]`
    public func items() async throws -> [CostOptimizationHubClientTypes.AccountEnrollmentStatus] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension CostOptimizationHubClient {
    /// Paginate over `[ListRecommendationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecommendationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecommendationsOutput`
    public func listRecommendationsPaginated(input: ListRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutput> {
        return ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRecommendations(input:))
    }
}

extension ListRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendationsInput {
        return ListRecommendationsInput(
            filter: self.filter,
            includeAllRecommendations: self.includeAllRecommendations,
            maxResults: self.maxResults,
            nextToken: token,
            orderBy: self.orderBy
        )}
}

extension PaginatorSequence where OperationStackInput == ListRecommendationsInput, OperationStackOutput == ListRecommendationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRecommendationsPaginated`
    /// to access the nested member `[CostOptimizationHubClientTypes.Recommendation]`
    /// - Returns: `[CostOptimizationHubClientTypes.Recommendation]`
    public func items() async throws -> [CostOptimizationHubClientTypes.Recommendation] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension CostOptimizationHubClient {
    /// Paginate over `[ListRecommendationSummariesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecommendationSummariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecommendationSummariesOutput`
    public func listRecommendationSummariesPaginated(input: ListRecommendationSummariesInput) -> ClientRuntime.PaginatorSequence<ListRecommendationSummariesInput, ListRecommendationSummariesOutput> {
        return ClientRuntime.PaginatorSequence<ListRecommendationSummariesInput, ListRecommendationSummariesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRecommendationSummaries(input:))
    }
}

extension ListRecommendationSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendationSummariesInput {
        return ListRecommendationSummariesInput(
            filter: self.filter,
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListRecommendationSummariesInput, OperationStackOutput == ListRecommendationSummariesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRecommendationSummariesPaginated`
    /// to access the nested member `[CostOptimizationHubClientTypes.RecommendationSummary]`
    /// - Returns: `[CostOptimizationHubClientTypes.RecommendationSummary]`
    public func items() async throws -> [CostOptimizationHubClientTypes.RecommendationSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
