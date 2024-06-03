// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension S3Client {
    /// Paginate over `[ListDirectoryBucketsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDirectoryBucketsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDirectoryBucketsOutput`
    public func listDirectoryBucketsPaginated(input: ListDirectoryBucketsInput) -> ClientRuntime.PaginatorSequence<ListDirectoryBucketsInput, ListDirectoryBucketsOutput> {
        return ClientRuntime.PaginatorSequence<ListDirectoryBucketsInput, ListDirectoryBucketsOutput>(input: input, inputKey: \.continuationToken, outputKey: \.continuationToken, paginationFunction: self.listDirectoryBuckets(input:))
    }
}

extension ListDirectoryBucketsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDirectoryBucketsInput {
        return ListDirectoryBucketsInput(
            continuationToken: token,
            maxDirectoryBuckets: self.maxDirectoryBuckets
        )}
}

extension PaginatorSequence where OperationStackInput == ListDirectoryBucketsInput, OperationStackOutput == ListDirectoryBucketsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDirectoryBucketsPaginated`
    /// to access the nested member `[S3ClientTypes.Bucket]`
    /// - Returns: `[S3ClientTypes.Bucket]`
    public func buckets() async throws -> [S3ClientTypes.Bucket] {
        return try await self.asyncCompactMap { item in item.buckets }
    }
}
extension S3Client {
    /// Paginate over `[ListObjectsV2Output]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListObjectsV2Input]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListObjectsV2Output`
    public func listObjectsV2Paginated(input: ListObjectsV2Input) -> ClientRuntime.PaginatorSequence<ListObjectsV2Input, ListObjectsV2Output> {
        return ClientRuntime.PaginatorSequence<ListObjectsV2Input, ListObjectsV2Output>(input: input, inputKey: \.continuationToken, outputKey: \.nextContinuationToken, paginationFunction: self.listObjectsV2(input:))
    }
}

extension ListObjectsV2Input: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObjectsV2Input {
        return ListObjectsV2Input(
            bucket: self.bucket,
            continuationToken: token,
            delimiter: self.delimiter,
            encodingType: self.encodingType,
            expectedBucketOwner: self.expectedBucketOwner,
            fetchOwner: self.fetchOwner,
            maxKeys: self.maxKeys,
            optionalObjectAttributes: self.optionalObjectAttributes,
            prefix: self.prefix,
            requestPayer: self.requestPayer,
            startAfter: self.startAfter
        )}
}
extension S3Client {
    /// Paginate over `[ListPartsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPartsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPartsOutput`
    public func listPartsPaginated(input: ListPartsInput) -> ClientRuntime.PaginatorSequence<ListPartsInput, ListPartsOutput> {
        return ClientRuntime.PaginatorSequence<ListPartsInput, ListPartsOutput>(input: input, inputKey: \.partNumberMarker, outputKey: \.nextPartNumberMarker, isTruncatedKey: \.isTruncated, paginationFunction: self.listParts(input:))
    }
}

extension ListPartsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPartsInput {
        return ListPartsInput(
            bucket: self.bucket,
            expectedBucketOwner: self.expectedBucketOwner,
            key: self.key,
            maxParts: self.maxParts,
            partNumberMarker: token,
            requestPayer: self.requestPayer,
            sseCustomerAlgorithm: self.sseCustomerAlgorithm,
            sseCustomerKey: self.sseCustomerKey,
            sseCustomerKeyMD5: self.sseCustomerKeyMD5,
            uploadId: self.uploadId
        )}
}

extension PaginatorSequence where OperationStackInput == ListPartsInput, OperationStackOutput == ListPartsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPartsPaginated`
    /// to access the nested member `[S3ClientTypes.Part]`
    /// - Returns: `[S3ClientTypes.Part]`
    public func parts() async throws -> [S3ClientTypes.Part] {
        return try await self.asyncCompactMap { item in item.parts }
    }
}
