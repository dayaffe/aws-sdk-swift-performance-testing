// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension KinesisVideoClient {
    /// Paginate over `[DescribeMappedResourceConfigurationOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeMappedResourceConfigurationInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeMappedResourceConfigurationOutput`
    public func describeMappedResourceConfigurationPaginated(input: DescribeMappedResourceConfigurationInput) -> ClientRuntime.PaginatorSequence<DescribeMappedResourceConfigurationInput, DescribeMappedResourceConfigurationOutput> {
        return ClientRuntime.PaginatorSequence<DescribeMappedResourceConfigurationInput, DescribeMappedResourceConfigurationOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeMappedResourceConfiguration(input:))
    }
}

extension DescribeMappedResourceConfigurationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeMappedResourceConfigurationInput {
        return DescribeMappedResourceConfigurationInput(
            maxResults: self.maxResults,
            nextToken: token,
            streamARN: self.streamARN,
            streamName: self.streamName
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeMappedResourceConfigurationInput, OperationStackOutput == DescribeMappedResourceConfigurationOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeMappedResourceConfigurationPaginated`
    /// to access the nested member `[KinesisVideoClientTypes.MappedResourceConfigurationListItem]`
    /// - Returns: `[KinesisVideoClientTypes.MappedResourceConfigurationListItem]`
    public func mappedResourceConfigurationList() async throws -> [KinesisVideoClientTypes.MappedResourceConfigurationListItem] {
        return try await self.asyncCompactMap { item in item.mappedResourceConfigurationList }
    }
}
extension KinesisVideoClient {
    /// Paginate over `[ListEdgeAgentConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEdgeAgentConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEdgeAgentConfigurationsOutput`
    public func listEdgeAgentConfigurationsPaginated(input: ListEdgeAgentConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListEdgeAgentConfigurationsInput, ListEdgeAgentConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListEdgeAgentConfigurationsInput, ListEdgeAgentConfigurationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEdgeAgentConfigurations(input:))
    }
}

extension ListEdgeAgentConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEdgeAgentConfigurationsInput {
        return ListEdgeAgentConfigurationsInput(
            hubDeviceArn: self.hubDeviceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListEdgeAgentConfigurationsInput, OperationStackOutput == ListEdgeAgentConfigurationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEdgeAgentConfigurationsPaginated`
    /// to access the nested member `[KinesisVideoClientTypes.ListEdgeAgentConfigurationsEdgeConfig]`
    /// - Returns: `[KinesisVideoClientTypes.ListEdgeAgentConfigurationsEdgeConfig]`
    public func edgeConfigs() async throws -> [KinesisVideoClientTypes.ListEdgeAgentConfigurationsEdgeConfig] {
        return try await self.asyncCompactMap { item in item.edgeConfigs }
    }
}
extension KinesisVideoClient {
    /// Paginate over `[ListSignalingChannelsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSignalingChannelsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSignalingChannelsOutput`
    public func listSignalingChannelsPaginated(input: ListSignalingChannelsInput) -> ClientRuntime.PaginatorSequence<ListSignalingChannelsInput, ListSignalingChannelsOutput> {
        return ClientRuntime.PaginatorSequence<ListSignalingChannelsInput, ListSignalingChannelsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSignalingChannels(input:))
    }
}

extension ListSignalingChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSignalingChannelsInput {
        return ListSignalingChannelsInput(
            channelNameCondition: self.channelNameCondition,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSignalingChannelsInput, OperationStackOutput == ListSignalingChannelsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSignalingChannelsPaginated`
    /// to access the nested member `[KinesisVideoClientTypes.ChannelInfo]`
    /// - Returns: `[KinesisVideoClientTypes.ChannelInfo]`
    public func channelInfoList() async throws -> [KinesisVideoClientTypes.ChannelInfo] {
        return try await self.asyncCompactMap { item in item.channelInfoList }
    }
}
extension KinesisVideoClient {
    /// Paginate over `[ListStreamsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStreamsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStreamsOutput`
    public func listStreamsPaginated(input: ListStreamsInput) -> ClientRuntime.PaginatorSequence<ListStreamsInput, ListStreamsOutput> {
        return ClientRuntime.PaginatorSequence<ListStreamsInput, ListStreamsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listStreams(input:))
    }
}

extension ListStreamsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStreamsInput {
        return ListStreamsInput(
            maxResults: self.maxResults,
            nextToken: token,
            streamNameCondition: self.streamNameCondition
        )}
}

extension PaginatorSequence where OperationStackInput == ListStreamsInput, OperationStackOutput == ListStreamsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStreamsPaginated`
    /// to access the nested member `[KinesisVideoClientTypes.StreamInfo]`
    /// - Returns: `[KinesisVideoClientTypes.StreamInfo]`
    public func streamInfoList() async throws -> [KinesisVideoClientTypes.StreamInfo] {
        return try await self.asyncCompactMap { item in item.streamInfoList }
    }
}
