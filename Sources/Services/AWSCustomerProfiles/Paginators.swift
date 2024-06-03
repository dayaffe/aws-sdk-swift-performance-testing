// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension CustomerProfilesClient {
    /// Paginate over `[ListEventStreamsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEventStreamsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEventStreamsOutput`
    public func listEventStreamsPaginated(input: ListEventStreamsInput) -> ClientRuntime.PaginatorSequence<ListEventStreamsInput, ListEventStreamsOutput> {
        return ClientRuntime.PaginatorSequence<ListEventStreamsInput, ListEventStreamsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEventStreams(input:))
    }
}

extension ListEventStreamsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventStreamsInput {
        return ListEventStreamsInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListEventStreamsInput, OperationStackOutput == ListEventStreamsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEventStreamsPaginated`
    /// to access the nested member `[CustomerProfilesClientTypes.EventStreamSummary]`
    /// - Returns: `[CustomerProfilesClientTypes.EventStreamSummary]`
    public func items() async throws -> [CustomerProfilesClientTypes.EventStreamSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
