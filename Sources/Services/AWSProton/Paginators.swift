// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ProtonClient {
    /// Paginate over `[ListRepositorySyncDefinitionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRepositorySyncDefinitionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRepositorySyncDefinitionsOutputResponse`
    public func listRepositorySyncDefinitionsPaginated(input: ListRepositorySyncDefinitionsInput) -> ClientRuntime.PaginatorSequence<ListRepositorySyncDefinitionsInput, ListRepositorySyncDefinitionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRepositorySyncDefinitionsInput, ListRepositorySyncDefinitionsOutputResponse>(input: input, inputKey: \ListRepositorySyncDefinitionsInput.nextToken, outputKey: \ListRepositorySyncDefinitionsOutputResponse.nextToken, paginationFunction: self.listRepositorySyncDefinitions(input:))
    }
}

extension ListRepositorySyncDefinitionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositorySyncDefinitionsInput {
        return ListRepositorySyncDefinitionsInput(
            nextToken: token,
            repositoryName: self.repositoryName,
            repositoryProvider: self.repositoryProvider,
            syncType: self.syncType
        )}
}

extension PaginatorSequence where Input == ListRepositorySyncDefinitionsInput, Output == ListRepositorySyncDefinitionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listRepositorySyncDefinitionsPaginated`
    /// to access the nested member `[ProtonClientTypes.RepositorySyncDefinition]`
    /// - Returns: `[ProtonClientTypes.RepositorySyncDefinition]`
    public func syncDefinitions() async throws -> [ProtonClientTypes.RepositorySyncDefinition] {
        return try await self.asyncCompactMap { item in item.syncDefinitions }
    }
}
extension ProtonClient {
    /// Paginate over `[ListTagsForResourceOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[ProtonClientTypes.Tag]`
    /// - Returns: `[ProtonClientTypes.Tag]`
    public func tags() async throws -> [ProtonClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}