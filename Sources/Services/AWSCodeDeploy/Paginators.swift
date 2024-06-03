// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension CodeDeployClient {
    /// Paginate over `[ListApplicationRevisionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationRevisionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationRevisionsOutput`
    public func listApplicationRevisionsPaginated(input: ListApplicationRevisionsInput) -> ClientRuntime.PaginatorSequence<ListApplicationRevisionsInput, ListApplicationRevisionsOutput> {
        return ClientRuntime.PaginatorSequence<ListApplicationRevisionsInput, ListApplicationRevisionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listApplicationRevisions(input:))
    }
}

extension ListApplicationRevisionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationRevisionsInput {
        return ListApplicationRevisionsInput(
            applicationName: self.applicationName,
            deployed: self.deployed,
            nextToken: token,
            s3Bucket: self.s3Bucket,
            s3KeyPrefix: self.s3KeyPrefix,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListApplicationRevisionsInput, OperationStackOutput == ListApplicationRevisionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listApplicationRevisionsPaginated`
    /// to access the nested member `[CodeDeployClientTypes.RevisionLocation]`
    /// - Returns: `[CodeDeployClientTypes.RevisionLocation]`
    public func revisions() async throws -> [CodeDeployClientTypes.RevisionLocation] {
        return try await self.asyncCompactMap { item in item.revisions }
    }
}
extension CodeDeployClient {
    /// Paginate over `[ListApplicationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationsOutput`
    public func listApplicationsPaginated(input: ListApplicationsInput) -> ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput> {
        return ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listApplications(input:))
    }
}

extension ListApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationsInput {
        return ListApplicationsInput(
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListApplicationsInput, OperationStackOutput == ListApplicationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listApplicationsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func applications() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.applications }
    }
}
extension CodeDeployClient {
    /// Paginate over `[ListDeploymentConfigsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeploymentConfigsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentConfigsOutput`
    public func listDeploymentConfigsPaginated(input: ListDeploymentConfigsInput) -> ClientRuntime.PaginatorSequence<ListDeploymentConfigsInput, ListDeploymentConfigsOutput> {
        return ClientRuntime.PaginatorSequence<ListDeploymentConfigsInput, ListDeploymentConfigsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDeploymentConfigs(input:))
    }
}

extension ListDeploymentConfigsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentConfigsInput {
        return ListDeploymentConfigsInput(
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDeploymentConfigsInput, OperationStackOutput == ListDeploymentConfigsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDeploymentConfigsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func deploymentConfigsList() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.deploymentConfigsList }
    }
}
extension CodeDeployClient {
    /// Paginate over `[ListDeploymentGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeploymentGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentGroupsOutput`
    public func listDeploymentGroupsPaginated(input: ListDeploymentGroupsInput) -> ClientRuntime.PaginatorSequence<ListDeploymentGroupsInput, ListDeploymentGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListDeploymentGroupsInput, ListDeploymentGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDeploymentGroups(input:))
    }
}

extension ListDeploymentGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentGroupsInput {
        return ListDeploymentGroupsInput(
            applicationName: self.applicationName,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDeploymentGroupsInput, OperationStackOutput == ListDeploymentGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDeploymentGroupsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func deploymentGroups() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.deploymentGroups }
    }
}
extension CodeDeployClient {
    /// Paginate over `[ListDeploymentInstancesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeploymentInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentInstancesOutput`
    public func listDeploymentInstancesPaginated(input: ListDeploymentInstancesInput) -> ClientRuntime.PaginatorSequence<ListDeploymentInstancesInput, ListDeploymentInstancesOutput> {
        return ClientRuntime.PaginatorSequence<ListDeploymentInstancesInput, ListDeploymentInstancesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDeploymentInstances(input:))
    }
}

extension ListDeploymentInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentInstancesInput {
        return ListDeploymentInstancesInput(
            deploymentId: self.deploymentId,
            instanceStatusFilter: self.instanceStatusFilter,
            instanceTypeFilter: self.instanceTypeFilter,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDeploymentInstancesInput, OperationStackOutput == ListDeploymentInstancesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDeploymentInstancesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func instancesList() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.instancesList }
    }
}
extension CodeDeployClient {
    /// Paginate over `[ListDeploymentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeploymentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeploymentsOutput`
    public func listDeploymentsPaginated(input: ListDeploymentsInput) -> ClientRuntime.PaginatorSequence<ListDeploymentsInput, ListDeploymentsOutput> {
        return ClientRuntime.PaginatorSequence<ListDeploymentsInput, ListDeploymentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDeployments(input:))
    }
}

extension ListDeploymentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeploymentsInput {
        return ListDeploymentsInput(
            applicationName: self.applicationName,
            createTimeRange: self.createTimeRange,
            deploymentGroupName: self.deploymentGroupName,
            externalId: self.externalId,
            includeOnlyStatuses: self.includeOnlyStatuses,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDeploymentsInput, OperationStackOutput == ListDeploymentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDeploymentsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func deployments() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.deployments }
    }
}
