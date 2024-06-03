// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension BatchClient {
    /// Paginate over `[DescribeComputeEnvironmentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeComputeEnvironmentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeComputeEnvironmentsOutput`
    public func describeComputeEnvironmentsPaginated(input: DescribeComputeEnvironmentsInput) -> ClientRuntime.PaginatorSequence<DescribeComputeEnvironmentsInput, DescribeComputeEnvironmentsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeComputeEnvironmentsInput, DescribeComputeEnvironmentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeComputeEnvironments(input:))
    }
}

extension DescribeComputeEnvironmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeComputeEnvironmentsInput {
        return DescribeComputeEnvironmentsInput(
            computeEnvironments: self.computeEnvironments,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeComputeEnvironmentsInput, OperationStackOutput == DescribeComputeEnvironmentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeComputeEnvironmentsPaginated`
    /// to access the nested member `[BatchClientTypes.ComputeEnvironmentDetail]`
    /// - Returns: `[BatchClientTypes.ComputeEnvironmentDetail]`
    public func computeEnvironments() async throws -> [BatchClientTypes.ComputeEnvironmentDetail] {
        return try await self.asyncCompactMap { item in item.computeEnvironments }
    }
}
extension BatchClient {
    /// Paginate over `[DescribeJobDefinitionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeJobDefinitionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeJobDefinitionsOutput`
    public func describeJobDefinitionsPaginated(input: DescribeJobDefinitionsInput) -> ClientRuntime.PaginatorSequence<DescribeJobDefinitionsInput, DescribeJobDefinitionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeJobDefinitionsInput, DescribeJobDefinitionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeJobDefinitions(input:))
    }
}

extension DescribeJobDefinitionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeJobDefinitionsInput {
        return DescribeJobDefinitionsInput(
            jobDefinitionName: self.jobDefinitionName,
            jobDefinitions: self.jobDefinitions,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeJobDefinitionsInput, OperationStackOutput == DescribeJobDefinitionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeJobDefinitionsPaginated`
    /// to access the nested member `[BatchClientTypes.JobDefinition]`
    /// - Returns: `[BatchClientTypes.JobDefinition]`
    public func jobDefinitions() async throws -> [BatchClientTypes.JobDefinition] {
        return try await self.asyncCompactMap { item in item.jobDefinitions }
    }
}
extension BatchClient {
    /// Paginate over `[DescribeJobQueuesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeJobQueuesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeJobQueuesOutput`
    public func describeJobQueuesPaginated(input: DescribeJobQueuesInput) -> ClientRuntime.PaginatorSequence<DescribeJobQueuesInput, DescribeJobQueuesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeJobQueuesInput, DescribeJobQueuesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeJobQueues(input:))
    }
}

extension DescribeJobQueuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeJobQueuesInput {
        return DescribeJobQueuesInput(
            jobQueues: self.jobQueues,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeJobQueuesInput, OperationStackOutput == DescribeJobQueuesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeJobQueuesPaginated`
    /// to access the nested member `[BatchClientTypes.JobQueueDetail]`
    /// - Returns: `[BatchClientTypes.JobQueueDetail]`
    public func jobQueues() async throws -> [BatchClientTypes.JobQueueDetail] {
        return try await self.asyncCompactMap { item in item.jobQueues }
    }
}
extension BatchClient {
    /// Paginate over `[ListJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutput`
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            arrayJobId: self.arrayJobId,
            filters: self.filters,
            jobQueue: self.jobQueue,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            multiNodeJobId: self.multiNodeJobId,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListJobsInput, OperationStackOutput == ListJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listJobsPaginated`
    /// to access the nested member `[BatchClientTypes.JobSummary]`
    /// - Returns: `[BatchClientTypes.JobSummary]`
    public func jobSummaryList() async throws -> [BatchClientTypes.JobSummary] {
        return try await self.asyncCompactMap { item in item.jobSummaryList }
    }
}
extension BatchClient {
    /// Paginate over `[ListSchedulingPoliciesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchedulingPoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchedulingPoliciesOutput`
    public func listSchedulingPoliciesPaginated(input: ListSchedulingPoliciesInput) -> ClientRuntime.PaginatorSequence<ListSchedulingPoliciesInput, ListSchedulingPoliciesOutput> {
        return ClientRuntime.PaginatorSequence<ListSchedulingPoliciesInput, ListSchedulingPoliciesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSchedulingPolicies(input:))
    }
}

extension ListSchedulingPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchedulingPoliciesInput {
        return ListSchedulingPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSchedulingPoliciesInput, OperationStackOutput == ListSchedulingPoliciesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSchedulingPoliciesPaginated`
    /// to access the nested member `[BatchClientTypes.SchedulingPolicyListingDetail]`
    /// - Returns: `[BatchClientTypes.SchedulingPolicyListingDetail]`
    public func schedulingPolicies() async throws -> [BatchClientTypes.SchedulingPolicyListingDetail] {
        return try await self.asyncCompactMap { item in item.schedulingPolicies }
    }
}
