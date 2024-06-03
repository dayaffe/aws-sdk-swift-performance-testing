// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension LookoutVisionClient {
    /// Paginate over `[ListDatasetEntriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetEntriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetEntriesOutput`
    public func listDatasetEntriesPaginated(input: ListDatasetEntriesInput) -> ClientRuntime.PaginatorSequence<ListDatasetEntriesInput, ListDatasetEntriesOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasetEntriesInput, ListDatasetEntriesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatasetEntries(input:))
    }
}

extension ListDatasetEntriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetEntriesInput {
        return ListDatasetEntriesInput(
            afterCreationDate: self.afterCreationDate,
            anomalyClass: self.anomalyClass,
            beforeCreationDate: self.beforeCreationDate,
            datasetType: self.datasetType,
            labeled: self.labeled,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            sourceRefContains: self.sourceRefContains
        )}
}

extension PaginatorSequence where OperationStackInput == ListDatasetEntriesInput, OperationStackOutput == ListDatasetEntriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDatasetEntriesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func datasetEntries() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.datasetEntries }
    }
}
extension LookoutVisionClient {
    /// Paginate over `[ListModelPackagingJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListModelPackagingJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListModelPackagingJobsOutput`
    public func listModelPackagingJobsPaginated(input: ListModelPackagingJobsInput) -> ClientRuntime.PaginatorSequence<ListModelPackagingJobsInput, ListModelPackagingJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListModelPackagingJobsInput, ListModelPackagingJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listModelPackagingJobs(input:))
    }
}

extension ListModelPackagingJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListModelPackagingJobsInput {
        return ListModelPackagingJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

extension PaginatorSequence where OperationStackInput == ListModelPackagingJobsInput, OperationStackOutput == ListModelPackagingJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listModelPackagingJobsPaginated`
    /// to access the nested member `[LookoutVisionClientTypes.ModelPackagingJobMetadata]`
    /// - Returns: `[LookoutVisionClientTypes.ModelPackagingJobMetadata]`
    public func modelPackagingJobs() async throws -> [LookoutVisionClientTypes.ModelPackagingJobMetadata] {
        return try await self.asyncCompactMap { item in item.modelPackagingJobs }
    }
}
extension LookoutVisionClient {
    /// Paginate over `[ListModelsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListModelsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListModelsOutput`
    public func listModelsPaginated(input: ListModelsInput) -> ClientRuntime.PaginatorSequence<ListModelsInput, ListModelsOutput> {
        return ClientRuntime.PaginatorSequence<ListModelsInput, ListModelsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listModels(input:))
    }
}

extension ListModelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListModelsInput {
        return ListModelsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

extension PaginatorSequence where OperationStackInput == ListModelsInput, OperationStackOutput == ListModelsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listModelsPaginated`
    /// to access the nested member `[LookoutVisionClientTypes.ModelMetadata]`
    /// - Returns: `[LookoutVisionClientTypes.ModelMetadata]`
    public func models() async throws -> [LookoutVisionClientTypes.ModelMetadata] {
        return try await self.asyncCompactMap { item in item.models }
    }
}
extension LookoutVisionClient {
    /// Paginate over `[ListProjectsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutput`
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListProjectsInput, OperationStackOutput == ListProjectsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectsPaginated`
    /// to access the nested member `[LookoutVisionClientTypes.ProjectMetadata]`
    /// - Returns: `[LookoutVisionClientTypes.ProjectMetadata]`
    public func projects() async throws -> [LookoutVisionClientTypes.ProjectMetadata] {
        return try await self.asyncCompactMap { item in item.projects }
    }
}
