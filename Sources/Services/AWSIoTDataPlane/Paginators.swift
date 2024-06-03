// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension IoTDataPlaneClient {
    /// Paginate over `[ListRetainedMessagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRetainedMessagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRetainedMessagesOutput`
    public func listRetainedMessagesPaginated(input: ListRetainedMessagesInput) -> ClientRuntime.PaginatorSequence<ListRetainedMessagesInput, ListRetainedMessagesOutput> {
        return ClientRuntime.PaginatorSequence<ListRetainedMessagesInput, ListRetainedMessagesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRetainedMessages(input:))
    }
}

extension ListRetainedMessagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRetainedMessagesInput {
        return ListRetainedMessagesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListRetainedMessagesInput, OperationStackOutput == ListRetainedMessagesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRetainedMessagesPaginated`
    /// to access the nested member `[IoTDataPlaneClientTypes.RetainedMessageSummary]`
    /// - Returns: `[IoTDataPlaneClientTypes.RetainedMessageSummary]`
    public func retainedTopics() async throws -> [IoTDataPlaneClientTypes.RetainedMessageSummary] {
        return try await self.asyncCompactMap { item in item.retainedTopics }
    }
}
