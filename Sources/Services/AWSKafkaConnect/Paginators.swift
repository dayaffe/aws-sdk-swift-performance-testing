// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension KafkaConnectClient {
    /// Paginate over `[ListConnectorsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListConnectorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListConnectorsOutput`
    public func listConnectorsPaginated(input: ListConnectorsInput) -> ClientRuntime.PaginatorSequence<ListConnectorsInput, ListConnectorsOutput> {
        return ClientRuntime.PaginatorSequence<ListConnectorsInput, ListConnectorsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listConnectors(input:))
    }
}

extension ListConnectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConnectorsInput {
        return ListConnectorsInput(
            connectorNamePrefix: self.connectorNamePrefix,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListConnectorsInput, OperationStackOutput == ListConnectorsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listConnectorsPaginated`
    /// to access the nested member `[KafkaConnectClientTypes.ConnectorSummary]`
    /// - Returns: `[KafkaConnectClientTypes.ConnectorSummary]`
    public func connectors() async throws -> [KafkaConnectClientTypes.ConnectorSummary] {
        return try await self.asyncCompactMap { item in item.connectors }
    }
}
extension KafkaConnectClient {
    /// Paginate over `[ListCustomPluginsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomPluginsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomPluginsOutput`
    public func listCustomPluginsPaginated(input: ListCustomPluginsInput) -> ClientRuntime.PaginatorSequence<ListCustomPluginsInput, ListCustomPluginsOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomPluginsInput, ListCustomPluginsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomPlugins(input:))
    }
}

extension ListCustomPluginsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomPluginsInput {
        return ListCustomPluginsInput(
            maxResults: self.maxResults,
            namePrefix: self.namePrefix,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCustomPluginsInput, OperationStackOutput == ListCustomPluginsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomPluginsPaginated`
    /// to access the nested member `[KafkaConnectClientTypes.CustomPluginSummary]`
    /// - Returns: `[KafkaConnectClientTypes.CustomPluginSummary]`
    public func customPlugins() async throws -> [KafkaConnectClientTypes.CustomPluginSummary] {
        return try await self.asyncCompactMap { item in item.customPlugins }
    }
}
extension KafkaConnectClient {
    /// Paginate over `[ListWorkerConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWorkerConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWorkerConfigurationsOutput`
    public func listWorkerConfigurationsPaginated(input: ListWorkerConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListWorkerConfigurationsInput, ListWorkerConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListWorkerConfigurationsInput, ListWorkerConfigurationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listWorkerConfigurations(input:))
    }
}

extension ListWorkerConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorkerConfigurationsInput {
        return ListWorkerConfigurationsInput(
            maxResults: self.maxResults,
            namePrefix: self.namePrefix,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListWorkerConfigurationsInput, OperationStackOutput == ListWorkerConfigurationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listWorkerConfigurationsPaginated`
    /// to access the nested member `[KafkaConnectClientTypes.WorkerConfigurationSummary]`
    /// - Returns: `[KafkaConnectClientTypes.WorkerConfigurationSummary]`
    public func workerConfigurations() async throws -> [KafkaConnectClientTypes.WorkerConfigurationSummary] {
        return try await self.asyncCompactMap { item in item.workerConfigurations }
    }
}
