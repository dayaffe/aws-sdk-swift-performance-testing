// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension RoboMakerClient {
    /// Paginate over `[ListDeploymentJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeploymentJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentJobsOutput`
    public func listDeploymentJobsPaginated(input: ListDeploymentJobsInput) -> ClientRuntime.PaginatorSequence<ListDeploymentJobsInput, ListDeploymentJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListDeploymentJobsInput, ListDeploymentJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDeploymentJobs(input:))
    }
}

extension ListDeploymentJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentJobsInput {
        return ListDeploymentJobsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDeploymentJobsInput, OperationStackOutput == ListDeploymentJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDeploymentJobsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.DeploymentJob]`
    /// - Returns: `[RoboMakerClientTypes.DeploymentJob]`
    public func deploymentJobs() async throws -> [RoboMakerClientTypes.DeploymentJob] {
        return try await self.asyncCompactMap { item in item.deploymentJobs }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListFleetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFleetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFleetsOutput`
    public func listFleetsPaginated(input: ListFleetsInput) -> ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutput> {
        return ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFleets(input:))
    }
}

extension ListFleetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFleetsInput {
        return ListFleetsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListFleetsInput, OperationStackOutput == ListFleetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFleetsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.Fleet]`
    /// - Returns: `[RoboMakerClientTypes.Fleet]`
    public func fleetDetails() async throws -> [RoboMakerClientTypes.Fleet] {
        return try await self.asyncCompactMap { item in item.fleetDetails }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListRobotApplicationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRobotApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRobotApplicationsOutput`
    public func listRobotApplicationsPaginated(input: ListRobotApplicationsInput) -> ClientRuntime.PaginatorSequence<ListRobotApplicationsInput, ListRobotApplicationsOutput> {
        return ClientRuntime.PaginatorSequence<ListRobotApplicationsInput, ListRobotApplicationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRobotApplications(input:))
    }
}

extension ListRobotApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRobotApplicationsInput {
        return ListRobotApplicationsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            versionQualifier: self.versionQualifier
        )}
}

extension PaginatorSequence where OperationStackInput == ListRobotApplicationsInput, OperationStackOutput == ListRobotApplicationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRobotApplicationsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.RobotApplicationSummary]`
    /// - Returns: `[RoboMakerClientTypes.RobotApplicationSummary]`
    public func robotApplicationSummaries() async throws -> [RoboMakerClientTypes.RobotApplicationSummary] {
        return try await self.asyncCompactMap { item in item.robotApplicationSummaries }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListRobotsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRobotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRobotsOutput`
    public func listRobotsPaginated(input: ListRobotsInput) -> ClientRuntime.PaginatorSequence<ListRobotsInput, ListRobotsOutput> {
        return ClientRuntime.PaginatorSequence<ListRobotsInput, ListRobotsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRobots(input:))
    }
}

extension ListRobotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRobotsInput {
        return ListRobotsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListRobotsInput, OperationStackOutput == ListRobotsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRobotsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.Robot]`
    /// - Returns: `[RoboMakerClientTypes.Robot]`
    public func robots() async throws -> [RoboMakerClientTypes.Robot] {
        return try await self.asyncCompactMap { item in item.robots }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListSimulationApplicationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSimulationApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSimulationApplicationsOutput`
    public func listSimulationApplicationsPaginated(input: ListSimulationApplicationsInput) -> ClientRuntime.PaginatorSequence<ListSimulationApplicationsInput, ListSimulationApplicationsOutput> {
        return ClientRuntime.PaginatorSequence<ListSimulationApplicationsInput, ListSimulationApplicationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSimulationApplications(input:))
    }
}

extension ListSimulationApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSimulationApplicationsInput {
        return ListSimulationApplicationsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            versionQualifier: self.versionQualifier
        )}
}

extension PaginatorSequence where OperationStackInput == ListSimulationApplicationsInput, OperationStackOutput == ListSimulationApplicationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSimulationApplicationsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.SimulationApplicationSummary]`
    /// - Returns: `[RoboMakerClientTypes.SimulationApplicationSummary]`
    public func simulationApplicationSummaries() async throws -> [RoboMakerClientTypes.SimulationApplicationSummary] {
        return try await self.asyncCompactMap { item in item.simulationApplicationSummaries }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListSimulationJobBatchesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSimulationJobBatchesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSimulationJobBatchesOutput`
    public func listSimulationJobBatchesPaginated(input: ListSimulationJobBatchesInput) -> ClientRuntime.PaginatorSequence<ListSimulationJobBatchesInput, ListSimulationJobBatchesOutput> {
        return ClientRuntime.PaginatorSequence<ListSimulationJobBatchesInput, ListSimulationJobBatchesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSimulationJobBatches(input:))
    }
}

extension ListSimulationJobBatchesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSimulationJobBatchesInput {
        return ListSimulationJobBatchesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSimulationJobBatchesInput, OperationStackOutput == ListSimulationJobBatchesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSimulationJobBatchesPaginated`
    /// to access the nested member `[RoboMakerClientTypes.SimulationJobBatchSummary]`
    /// - Returns: `[RoboMakerClientTypes.SimulationJobBatchSummary]`
    public func simulationJobBatchSummaries() async throws -> [RoboMakerClientTypes.SimulationJobBatchSummary] {
        return try await self.asyncCompactMap { item in item.simulationJobBatchSummaries }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListSimulationJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSimulationJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSimulationJobsOutput`
    public func listSimulationJobsPaginated(input: ListSimulationJobsInput) -> ClientRuntime.PaginatorSequence<ListSimulationJobsInput, ListSimulationJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListSimulationJobsInput, ListSimulationJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSimulationJobs(input:))
    }
}

extension ListSimulationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSimulationJobsInput {
        return ListSimulationJobsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSimulationJobsInput, OperationStackOutput == ListSimulationJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSimulationJobsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.SimulationJobSummary]`
    /// - Returns: `[RoboMakerClientTypes.SimulationJobSummary]`
    public func simulationJobSummaries() async throws -> [RoboMakerClientTypes.SimulationJobSummary] {
        return try await self.asyncCompactMap { item in item.simulationJobSummaries }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListWorldExportJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWorldExportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWorldExportJobsOutput`
    public func listWorldExportJobsPaginated(input: ListWorldExportJobsInput) -> ClientRuntime.PaginatorSequence<ListWorldExportJobsInput, ListWorldExportJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListWorldExportJobsInput, ListWorldExportJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listWorldExportJobs(input:))
    }
}

extension ListWorldExportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorldExportJobsInput {
        return ListWorldExportJobsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListWorldExportJobsInput, OperationStackOutput == ListWorldExportJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listWorldExportJobsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.WorldExportJobSummary]`
    /// - Returns: `[RoboMakerClientTypes.WorldExportJobSummary]`
    public func worldExportJobSummaries() async throws -> [RoboMakerClientTypes.WorldExportJobSummary] {
        return try await self.asyncCompactMap { item in item.worldExportJobSummaries }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListWorldGenerationJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWorldGenerationJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWorldGenerationJobsOutput`
    public func listWorldGenerationJobsPaginated(input: ListWorldGenerationJobsInput) -> ClientRuntime.PaginatorSequence<ListWorldGenerationJobsInput, ListWorldGenerationJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListWorldGenerationJobsInput, ListWorldGenerationJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listWorldGenerationJobs(input:))
    }
}

extension ListWorldGenerationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorldGenerationJobsInput {
        return ListWorldGenerationJobsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListWorldGenerationJobsInput, OperationStackOutput == ListWorldGenerationJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listWorldGenerationJobsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.WorldGenerationJobSummary]`
    /// - Returns: `[RoboMakerClientTypes.WorldGenerationJobSummary]`
    public func worldGenerationJobSummaries() async throws -> [RoboMakerClientTypes.WorldGenerationJobSummary] {
        return try await self.asyncCompactMap { item in item.worldGenerationJobSummaries }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListWorldsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWorldsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWorldsOutput`
    public func listWorldsPaginated(input: ListWorldsInput) -> ClientRuntime.PaginatorSequence<ListWorldsInput, ListWorldsOutput> {
        return ClientRuntime.PaginatorSequence<ListWorldsInput, ListWorldsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listWorlds(input:))
    }
}

extension ListWorldsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorldsInput {
        return ListWorldsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListWorldsInput, OperationStackOutput == ListWorldsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listWorldsPaginated`
    /// to access the nested member `[RoboMakerClientTypes.WorldSummary]`
    /// - Returns: `[RoboMakerClientTypes.WorldSummary]`
    public func worldSummaries() async throws -> [RoboMakerClientTypes.WorldSummary] {
        return try await self.asyncCompactMap { item in item.worldSummaries }
    }
}
extension RoboMakerClient {
    /// Paginate over `[ListWorldTemplatesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWorldTemplatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWorldTemplatesOutput`
    public func listWorldTemplatesPaginated(input: ListWorldTemplatesInput) -> ClientRuntime.PaginatorSequence<ListWorldTemplatesInput, ListWorldTemplatesOutput> {
        return ClientRuntime.PaginatorSequence<ListWorldTemplatesInput, ListWorldTemplatesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listWorldTemplates(input:))
    }
}

extension ListWorldTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorldTemplatesInput {
        return ListWorldTemplatesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListWorldTemplatesInput, OperationStackOutput == ListWorldTemplatesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listWorldTemplatesPaginated`
    /// to access the nested member `[RoboMakerClientTypes.TemplateSummary]`
    /// - Returns: `[RoboMakerClientTypes.TemplateSummary]`
    public func templateSummaries() async throws -> [RoboMakerClientTypes.TemplateSummary] {
        return try await self.asyncCompactMap { item in item.templateSummaries }
    }
}
