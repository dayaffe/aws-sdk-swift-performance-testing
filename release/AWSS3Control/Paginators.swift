// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAccessPointsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccessPointsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccessPointsOutputResponse`
extension S3ControlClient {
    public func listAccessPointsPaginated(input: ListAccessPointsInput) -> ClientRuntime.PaginatorSequence<ListAccessPointsInput, ListAccessPointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccessPointsInput, ListAccessPointsOutputResponse>(input: input, inputKey: \ListAccessPointsInput.nextToken, outputKey: \ListAccessPointsOutputResponse.nextToken, paginationFunction: self.listAccessPoints(input:))
    }
}

extension ListAccessPointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccessPointsInput {
        return ListAccessPointsInput(
            accountId: self.accountId,
            bucket: self.bucket,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAccessPointsForObjectLambdaOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccessPointsForObjectLambdaInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccessPointsForObjectLambdaOutputResponse`
extension S3ControlClient {
    public func listAccessPointsForObjectLambdaPaginated(input: ListAccessPointsForObjectLambdaInput) -> ClientRuntime.PaginatorSequence<ListAccessPointsForObjectLambdaInput, ListAccessPointsForObjectLambdaOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccessPointsForObjectLambdaInput, ListAccessPointsForObjectLambdaOutputResponse>(input: input, inputKey: \ListAccessPointsForObjectLambdaInput.nextToken, outputKey: \ListAccessPointsForObjectLambdaOutputResponse.nextToken, paginationFunction: self.listAccessPointsForObjectLambda(input:))
    }
}

extension ListAccessPointsForObjectLambdaInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccessPointsForObjectLambdaInput {
        return ListAccessPointsForObjectLambdaInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccessPointsForObjectLambdaPaginated`
/// to access the nested member `[S3ControlClientTypes.ObjectLambdaAccessPoint]`
/// - Returns: `[S3ControlClientTypes.ObjectLambdaAccessPoint]`
extension PaginatorSequence where Input == ListAccessPointsForObjectLambdaInput, Output == ListAccessPointsForObjectLambdaOutputResponse {
    public func objectLambdaAccessPointList() async throws -> [S3ControlClientTypes.ObjectLambdaAccessPoint] {
        return try await self.asyncCompactMap { item in item.objectLambdaAccessPointList }
    }
}

/// Paginate over `[ListJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutputResponse`
extension S3ControlClient {
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse>(input: input, inputKey: \ListJobsInput.nextToken, outputKey: \ListJobsOutputResponse.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            accountId: self.accountId,
            jobStatuses: self.jobStatuses,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListMultiRegionAccessPointsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMultiRegionAccessPointsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMultiRegionAccessPointsOutputResponse`
extension S3ControlClient {
    public func listMultiRegionAccessPointsPaginated(input: ListMultiRegionAccessPointsInput) -> ClientRuntime.PaginatorSequence<ListMultiRegionAccessPointsInput, ListMultiRegionAccessPointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMultiRegionAccessPointsInput, ListMultiRegionAccessPointsOutputResponse>(input: input, inputKey: \ListMultiRegionAccessPointsInput.nextToken, outputKey: \ListMultiRegionAccessPointsOutputResponse.nextToken, paginationFunction: self.listMultiRegionAccessPoints(input:))
    }
}

extension ListMultiRegionAccessPointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMultiRegionAccessPointsInput {
        return ListMultiRegionAccessPointsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListRegionalBucketsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRegionalBucketsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRegionalBucketsOutputResponse`
extension S3ControlClient {
    public func listRegionalBucketsPaginated(input: ListRegionalBucketsInput) -> ClientRuntime.PaginatorSequence<ListRegionalBucketsInput, ListRegionalBucketsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRegionalBucketsInput, ListRegionalBucketsOutputResponse>(input: input, inputKey: \ListRegionalBucketsInput.nextToken, outputKey: \ListRegionalBucketsOutputResponse.nextToken, paginationFunction: self.listRegionalBuckets(input:))
    }
}

extension ListRegionalBucketsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRegionalBucketsInput {
        return ListRegionalBucketsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )}
}

/// Paginate over `[ListStorageLensConfigurationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStorageLensConfigurationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStorageLensConfigurationsOutputResponse`
extension S3ControlClient {
    public func listStorageLensConfigurationsPaginated(input: ListStorageLensConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListStorageLensConfigurationsInput, ListStorageLensConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStorageLensConfigurationsInput, ListStorageLensConfigurationsOutputResponse>(input: input, inputKey: \ListStorageLensConfigurationsInput.nextToken, outputKey: \ListStorageLensConfigurationsOutputResponse.nextToken, paginationFunction: self.listStorageLensConfigurations(input:))
    }
}

extension ListStorageLensConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStorageLensConfigurationsInput {
        return ListStorageLensConfigurationsInput(
            accountId: self.accountId,
            nextToken: token
        )}
}