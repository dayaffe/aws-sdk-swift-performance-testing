// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension VoiceIDClient {
    /// Paginate over `[ListFraudsterRegistrationJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFraudsterRegistrationJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFraudsterRegistrationJobsOutput`
    public func listFraudsterRegistrationJobsPaginated(input: ListFraudsterRegistrationJobsInput) -> ClientRuntime.PaginatorSequence<ListFraudsterRegistrationJobsInput, ListFraudsterRegistrationJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListFraudsterRegistrationJobsInput, ListFraudsterRegistrationJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFraudsterRegistrationJobs(input:))
    }
}

extension ListFraudsterRegistrationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFraudsterRegistrationJobsInput {
        return ListFraudsterRegistrationJobsInput(
            domainId: self.domainId,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListFraudsterRegistrationJobsInput, OperationStackOutput == ListFraudsterRegistrationJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFraudsterRegistrationJobsPaginated`
    /// to access the nested member `[VoiceIDClientTypes.FraudsterRegistrationJobSummary]`
    /// - Returns: `[VoiceIDClientTypes.FraudsterRegistrationJobSummary]`
    public func jobSummaries() async throws -> [VoiceIDClientTypes.FraudsterRegistrationJobSummary] {
        return try await self.asyncCompactMap { item in item.jobSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListFraudstersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFraudstersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFraudstersOutput`
    public func listFraudstersPaginated(input: ListFraudstersInput) -> ClientRuntime.PaginatorSequence<ListFraudstersInput, ListFraudstersOutput> {
        return ClientRuntime.PaginatorSequence<ListFraudstersInput, ListFraudstersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFraudsters(input:))
    }
}

extension ListFraudstersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFraudstersInput {
        return ListFraudstersInput(
            domainId: self.domainId,
            maxResults: self.maxResults,
            nextToken: token,
            watchlistId: self.watchlistId
        )}
}

extension PaginatorSequence where OperationStackInput == ListFraudstersInput, OperationStackOutput == ListFraudstersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFraudstersPaginated`
    /// to access the nested member `[VoiceIDClientTypes.FraudsterSummary]`
    /// - Returns: `[VoiceIDClientTypes.FraudsterSummary]`
    public func fraudsterSummaries() async throws -> [VoiceIDClientTypes.FraudsterSummary] {
        return try await self.asyncCompactMap { item in item.fraudsterSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListSpeakerEnrollmentJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSpeakerEnrollmentJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSpeakerEnrollmentJobsOutput`
    public func listSpeakerEnrollmentJobsPaginated(input: ListSpeakerEnrollmentJobsInput) -> ClientRuntime.PaginatorSequence<ListSpeakerEnrollmentJobsInput, ListSpeakerEnrollmentJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListSpeakerEnrollmentJobsInput, ListSpeakerEnrollmentJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSpeakerEnrollmentJobs(input:))
    }
}

extension ListSpeakerEnrollmentJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSpeakerEnrollmentJobsInput {
        return ListSpeakerEnrollmentJobsInput(
            domainId: self.domainId,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSpeakerEnrollmentJobsInput, OperationStackOutput == ListSpeakerEnrollmentJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSpeakerEnrollmentJobsPaginated`
    /// to access the nested member `[VoiceIDClientTypes.SpeakerEnrollmentJobSummary]`
    /// - Returns: `[VoiceIDClientTypes.SpeakerEnrollmentJobSummary]`
    public func jobSummaries() async throws -> [VoiceIDClientTypes.SpeakerEnrollmentJobSummary] {
        return try await self.asyncCompactMap { item in item.jobSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListSpeakersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSpeakersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSpeakersOutput`
    public func listSpeakersPaginated(input: ListSpeakersInput) -> ClientRuntime.PaginatorSequence<ListSpeakersInput, ListSpeakersOutput> {
        return ClientRuntime.PaginatorSequence<ListSpeakersInput, ListSpeakersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSpeakers(input:))
    }
}

extension ListSpeakersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSpeakersInput {
        return ListSpeakersInput(
            domainId: self.domainId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSpeakersInput, OperationStackOutput == ListSpeakersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSpeakersPaginated`
    /// to access the nested member `[VoiceIDClientTypes.SpeakerSummary]`
    /// - Returns: `[VoiceIDClientTypes.SpeakerSummary]`
    public func speakerSummaries() async throws -> [VoiceIDClientTypes.SpeakerSummary] {
        return try await self.asyncCompactMap { item in item.speakerSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListWatchlistsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWatchlistsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWatchlistsOutput`
    public func listWatchlistsPaginated(input: ListWatchlistsInput) -> ClientRuntime.PaginatorSequence<ListWatchlistsInput, ListWatchlistsOutput> {
        return ClientRuntime.PaginatorSequence<ListWatchlistsInput, ListWatchlistsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listWatchlists(input:))
    }
}

extension ListWatchlistsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWatchlistsInput {
        return ListWatchlistsInput(
            domainId: self.domainId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListWatchlistsInput, OperationStackOutput == ListWatchlistsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listWatchlistsPaginated`
    /// to access the nested member `[VoiceIDClientTypes.WatchlistSummary]`
    /// - Returns: `[VoiceIDClientTypes.WatchlistSummary]`
    public func watchlistSummaries() async throws -> [VoiceIDClientTypes.WatchlistSummary] {
        return try await self.asyncCompactMap { item in item.watchlistSummaries }
    }
}
