// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension LicenseManagerLinuxSubscriptionsClient {
    /// Paginate over `[ListLinuxSubscriptionInstancesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLinuxSubscriptionInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLinuxSubscriptionInstancesOutput`
    public func listLinuxSubscriptionInstancesPaginated(input: ListLinuxSubscriptionInstancesInput) -> ClientRuntime.PaginatorSequence<ListLinuxSubscriptionInstancesInput, ListLinuxSubscriptionInstancesOutput> {
        return ClientRuntime.PaginatorSequence<ListLinuxSubscriptionInstancesInput, ListLinuxSubscriptionInstancesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listLinuxSubscriptionInstances(input:))
    }
}

extension ListLinuxSubscriptionInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLinuxSubscriptionInstancesInput {
        return ListLinuxSubscriptionInstancesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListLinuxSubscriptionInstancesInput, OperationStackOutput == ListLinuxSubscriptionInstancesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listLinuxSubscriptionInstancesPaginated`
    /// to access the nested member `[LicenseManagerLinuxSubscriptionsClientTypes.Instance]`
    /// - Returns: `[LicenseManagerLinuxSubscriptionsClientTypes.Instance]`
    public func instances() async throws -> [LicenseManagerLinuxSubscriptionsClientTypes.Instance] {
        return try await self.asyncCompactMap { item in item.instances }
    }
}
extension LicenseManagerLinuxSubscriptionsClient {
    /// Paginate over `[ListLinuxSubscriptionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLinuxSubscriptionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLinuxSubscriptionsOutput`
    public func listLinuxSubscriptionsPaginated(input: ListLinuxSubscriptionsInput) -> ClientRuntime.PaginatorSequence<ListLinuxSubscriptionsInput, ListLinuxSubscriptionsOutput> {
        return ClientRuntime.PaginatorSequence<ListLinuxSubscriptionsInput, ListLinuxSubscriptionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listLinuxSubscriptions(input:))
    }
}

extension ListLinuxSubscriptionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLinuxSubscriptionsInput {
        return ListLinuxSubscriptionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListLinuxSubscriptionsInput, OperationStackOutput == ListLinuxSubscriptionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listLinuxSubscriptionsPaginated`
    /// to access the nested member `[LicenseManagerLinuxSubscriptionsClientTypes.Subscription]`
    /// - Returns: `[LicenseManagerLinuxSubscriptionsClientTypes.Subscription]`
    public func subscriptions() async throws -> [LicenseManagerLinuxSubscriptionsClientTypes.Subscription] {
        return try await self.asyncCompactMap { item in item.subscriptions }
    }
}
