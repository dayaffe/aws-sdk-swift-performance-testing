// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VoiceIDClient {
    /// Paginate over `[ListFraudsterRegistrationJobsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFraudsterRegistrationJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFraudsterRegistrationJobsOutputResponse`
    public func listFraudsterRegistrationJobsPaginated(input: ListFraudsterRegistrationJobsInput) -> ClientRuntime.PaginatorSequence<ListFraudsterRegistrationJobsInput, ListFraudsterRegistrationJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFraudsterRegistrationJobsInput, ListFraudsterRegistrationJobsOutputResponse>(input: input, inputKey: \ListFraudsterRegistrationJobsInput.nextToken, outputKey: \ListFraudsterRegistrationJobsOutputResponse.nextToken, paginationFunction: self.listFraudsterRegistrationJobs(input:))
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

extension PaginatorSequence where Input == ListFraudsterRegistrationJobsInput, Output == ListFraudsterRegistrationJobsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listFraudsterRegistrationJobsPaginated`
    /// to access the nested member `[VoiceIDClientTypes.FraudsterRegistrationJobSummary]`
    /// - Returns: `[VoiceIDClientTypes.FraudsterRegistrationJobSummary]`
    public func jobSummaries() async throws -> [VoiceIDClientTypes.FraudsterRegistrationJobSummary] {
        return try await self.asyncCompactMap { item in item.jobSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListFraudstersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFraudstersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFraudstersOutputResponse`
    public func listFraudstersPaginated(input: ListFraudstersInput) -> ClientRuntime.PaginatorSequence<ListFraudstersInput, ListFraudstersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFraudstersInput, ListFraudstersOutputResponse>(input: input, inputKey: \ListFraudstersInput.nextToken, outputKey: \ListFraudstersOutputResponse.nextToken, paginationFunction: self.listFraudsters(input:))
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

extension PaginatorSequence where Input == ListFraudstersInput, Output == ListFraudstersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listFraudstersPaginated`
    /// to access the nested member `[VoiceIDClientTypes.FraudsterSummary]`
    /// - Returns: `[VoiceIDClientTypes.FraudsterSummary]`
    public func fraudsterSummaries() async throws -> [VoiceIDClientTypes.FraudsterSummary] {
        return try await self.asyncCompactMap { item in item.fraudsterSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListSpeakerEnrollmentJobsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSpeakerEnrollmentJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSpeakerEnrollmentJobsOutputResponse`
    public func listSpeakerEnrollmentJobsPaginated(input: ListSpeakerEnrollmentJobsInput) -> ClientRuntime.PaginatorSequence<ListSpeakerEnrollmentJobsInput, ListSpeakerEnrollmentJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSpeakerEnrollmentJobsInput, ListSpeakerEnrollmentJobsOutputResponse>(input: input, inputKey: \ListSpeakerEnrollmentJobsInput.nextToken, outputKey: \ListSpeakerEnrollmentJobsOutputResponse.nextToken, paginationFunction: self.listSpeakerEnrollmentJobs(input:))
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

extension PaginatorSequence where Input == ListSpeakerEnrollmentJobsInput, Output == ListSpeakerEnrollmentJobsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listSpeakerEnrollmentJobsPaginated`
    /// to access the nested member `[VoiceIDClientTypes.SpeakerEnrollmentJobSummary]`
    /// - Returns: `[VoiceIDClientTypes.SpeakerEnrollmentJobSummary]`
    public func jobSummaries() async throws -> [VoiceIDClientTypes.SpeakerEnrollmentJobSummary] {
        return try await self.asyncCompactMap { item in item.jobSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListSpeakersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSpeakersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSpeakersOutputResponse`
    public func listSpeakersPaginated(input: ListSpeakersInput) -> ClientRuntime.PaginatorSequence<ListSpeakersInput, ListSpeakersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSpeakersInput, ListSpeakersOutputResponse>(input: input, inputKey: \ListSpeakersInput.nextToken, outputKey: \ListSpeakersOutputResponse.nextToken, paginationFunction: self.listSpeakers(input:))
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

extension PaginatorSequence where Input == ListSpeakersInput, Output == ListSpeakersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listSpeakersPaginated`
    /// to access the nested member `[VoiceIDClientTypes.SpeakerSummary]`
    /// - Returns: `[VoiceIDClientTypes.SpeakerSummary]`
    public func speakerSummaries() async throws -> [VoiceIDClientTypes.SpeakerSummary] {
        return try await self.asyncCompactMap { item in item.speakerSummaries }
    }
}
extension VoiceIDClient {
    /// Paginate over `[ListWatchlistsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWatchlistsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWatchlistsOutputResponse`
    public func listWatchlistsPaginated(input: ListWatchlistsInput) -> ClientRuntime.PaginatorSequence<ListWatchlistsInput, ListWatchlistsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWatchlistsInput, ListWatchlistsOutputResponse>(input: input, inputKey: \ListWatchlistsInput.nextToken, outputKey: \ListWatchlistsOutputResponse.nextToken, paginationFunction: self.listWatchlists(input:))
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

extension PaginatorSequence where Input == ListWatchlistsInput, Output == ListWatchlistsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listWatchlistsPaginated`
    /// to access the nested member `[VoiceIDClientTypes.WatchlistSummary]`
    /// - Returns: `[VoiceIDClientTypes.WatchlistSummary]`
    public func watchlistSummaries() async throws -> [VoiceIDClientTypes.WatchlistSummary] {
        return try await self.asyncCompactMap { item in item.watchlistSummaries }
    }
}