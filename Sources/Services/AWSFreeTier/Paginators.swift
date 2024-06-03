// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension FreeTierClient {
    /// Paginate over `[GetFreeTierUsageOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetFreeTierUsageInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetFreeTierUsageOutput`
    public func getFreeTierUsagePaginated(input: GetFreeTierUsageInput) -> ClientRuntime.PaginatorSequence<GetFreeTierUsageInput, GetFreeTierUsageOutput> {
        return ClientRuntime.PaginatorSequence<GetFreeTierUsageInput, GetFreeTierUsageOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getFreeTierUsage(input:))
    }
}

extension GetFreeTierUsageInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetFreeTierUsageInput {
        return GetFreeTierUsageInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetFreeTierUsageInput, OperationStackOutput == GetFreeTierUsageOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getFreeTierUsagePaginated`
    /// to access the nested member `[FreeTierClientTypes.FreeTierUsage]`
    /// - Returns: `[FreeTierClientTypes.FreeTierUsage]`
    public func freeTierUsages() async throws -> [FreeTierClientTypes.FreeTierUsage] {
        return try await self.asyncCompactMap { item in item.freeTierUsages }
    }
}
