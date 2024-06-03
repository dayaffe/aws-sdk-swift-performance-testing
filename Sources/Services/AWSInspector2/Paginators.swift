// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension Inspector2Client {
    /// Paginate over `[GetCisScanResultDetailsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetCisScanResultDetailsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetCisScanResultDetailsOutput`
    public func getCisScanResultDetailsPaginated(input: GetCisScanResultDetailsInput) -> ClientRuntime.PaginatorSequence<GetCisScanResultDetailsInput, GetCisScanResultDetailsOutput> {
        return ClientRuntime.PaginatorSequence<GetCisScanResultDetailsInput, GetCisScanResultDetailsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getCisScanResultDetails(input:))
    }
}

extension GetCisScanResultDetailsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCisScanResultDetailsInput {
        return GetCisScanResultDetailsInput(
            accountId: self.accountId,
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            scanArn: self.scanArn,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            targetResourceId: self.targetResourceId
        )}
}

extension PaginatorSequence where OperationStackInput == GetCisScanResultDetailsInput, OperationStackOutput == GetCisScanResultDetailsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getCisScanResultDetailsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.CisScanResultDetails]`
    /// - Returns: `[Inspector2ClientTypes.CisScanResultDetails]`
    public func scanResultDetails() async throws -> [Inspector2ClientTypes.CisScanResultDetails] {
        return try await self.asyncCompactMap { item in item.scanResultDetails }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListAccountPermissionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountPermissionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountPermissionsOutput`
    public func listAccountPermissionsPaginated(input: ListAccountPermissionsInput) -> ClientRuntime.PaginatorSequence<ListAccountPermissionsInput, ListAccountPermissionsOutput> {
        return ClientRuntime.PaginatorSequence<ListAccountPermissionsInput, ListAccountPermissionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAccountPermissions(input:))
    }
}

extension ListAccountPermissionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountPermissionsInput {
        return ListAccountPermissionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            service: self.service
        )}
}

extension PaginatorSequence where OperationStackInput == ListAccountPermissionsInput, OperationStackOutput == ListAccountPermissionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAccountPermissionsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.Permission]`
    /// - Returns: `[Inspector2ClientTypes.Permission]`
    public func permissions() async throws -> [Inspector2ClientTypes.Permission] {
        return try await self.asyncCompactMap { item in item.permissions }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListCisScanConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCisScanConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCisScanConfigurationsOutput`
    public func listCisScanConfigurationsPaginated(input: ListCisScanConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListCisScanConfigurationsInput, ListCisScanConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListCisScanConfigurationsInput, ListCisScanConfigurationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCisScanConfigurations(input:))
    }
}

extension ListCisScanConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCisScanConfigurationsInput {
        return ListCisScanConfigurationsInput(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListCisScanConfigurationsInput, OperationStackOutput == ListCisScanConfigurationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCisScanConfigurationsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.CisScanConfiguration]`
    /// - Returns: `[Inspector2ClientTypes.CisScanConfiguration]`
    public func scanConfigurations() async throws -> [Inspector2ClientTypes.CisScanConfiguration] {
        return try await self.asyncCompactMap { item in item.scanConfigurations }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListCisScanResultsAggregatedByChecksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCisScanResultsAggregatedByChecksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCisScanResultsAggregatedByChecksOutput`
    public func listCisScanResultsAggregatedByChecksPaginated(input: ListCisScanResultsAggregatedByChecksInput) -> ClientRuntime.PaginatorSequence<ListCisScanResultsAggregatedByChecksInput, ListCisScanResultsAggregatedByChecksOutput> {
        return ClientRuntime.PaginatorSequence<ListCisScanResultsAggregatedByChecksInput, ListCisScanResultsAggregatedByChecksOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCisScanResultsAggregatedByChecks(input:))
    }
}

extension ListCisScanResultsAggregatedByChecksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCisScanResultsAggregatedByChecksInput {
        return ListCisScanResultsAggregatedByChecksInput(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            scanArn: self.scanArn,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListCisScanResultsAggregatedByChecksInput, OperationStackOutput == ListCisScanResultsAggregatedByChecksOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCisScanResultsAggregatedByChecksPaginated`
    /// to access the nested member `[Inspector2ClientTypes.CisCheckAggregation]`
    /// - Returns: `[Inspector2ClientTypes.CisCheckAggregation]`
    public func checkAggregations() async throws -> [Inspector2ClientTypes.CisCheckAggregation] {
        return try await self.asyncCompactMap { item in item.checkAggregations }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListCisScanResultsAggregatedByTargetResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCisScanResultsAggregatedByTargetResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCisScanResultsAggregatedByTargetResourceOutput`
    public func listCisScanResultsAggregatedByTargetResourcePaginated(input: ListCisScanResultsAggregatedByTargetResourceInput) -> ClientRuntime.PaginatorSequence<ListCisScanResultsAggregatedByTargetResourceInput, ListCisScanResultsAggregatedByTargetResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListCisScanResultsAggregatedByTargetResourceInput, ListCisScanResultsAggregatedByTargetResourceOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCisScanResultsAggregatedByTargetResource(input:))
    }
}

extension ListCisScanResultsAggregatedByTargetResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCisScanResultsAggregatedByTargetResourceInput {
        return ListCisScanResultsAggregatedByTargetResourceInput(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            scanArn: self.scanArn,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListCisScanResultsAggregatedByTargetResourceInput, OperationStackOutput == ListCisScanResultsAggregatedByTargetResourceOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCisScanResultsAggregatedByTargetResourcePaginated`
    /// to access the nested member `[Inspector2ClientTypes.CisTargetResourceAggregation]`
    /// - Returns: `[Inspector2ClientTypes.CisTargetResourceAggregation]`
    public func targetResourceAggregations() async throws -> [Inspector2ClientTypes.CisTargetResourceAggregation] {
        return try await self.asyncCompactMap { item in item.targetResourceAggregations }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListCisScansOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCisScansInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCisScansOutput`
    public func listCisScansPaginated(input: ListCisScansInput) -> ClientRuntime.PaginatorSequence<ListCisScansInput, ListCisScansOutput> {
        return ClientRuntime.PaginatorSequence<ListCisScansInput, ListCisScansOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCisScans(input:))
    }
}

extension ListCisScansInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCisScansInput {
        return ListCisScansInput(
            detailLevel: self.detailLevel,
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListCisScansInput, OperationStackOutput == ListCisScansOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCisScansPaginated`
    /// to access the nested member `[Inspector2ClientTypes.CisScan]`
    /// - Returns: `[Inspector2ClientTypes.CisScan]`
    public func scans() async throws -> [Inspector2ClientTypes.CisScan] {
        return try await self.asyncCompactMap { item in item.scans }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListCoverageOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCoverageInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCoverageOutput`
    public func listCoveragePaginated(input: ListCoverageInput) -> ClientRuntime.PaginatorSequence<ListCoverageInput, ListCoverageOutput> {
        return ClientRuntime.PaginatorSequence<ListCoverageInput, ListCoverageOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCoverage(input:))
    }
}

extension ListCoverageInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCoverageInput {
        return ListCoverageInput(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCoverageInput, OperationStackOutput == ListCoverageOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCoveragePaginated`
    /// to access the nested member `[Inspector2ClientTypes.CoveredResource]`
    /// - Returns: `[Inspector2ClientTypes.CoveredResource]`
    public func coveredResources() async throws -> [Inspector2ClientTypes.CoveredResource] {
        return try await self.asyncCompactMap { item in item.coveredResources }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListCoverageStatisticsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCoverageStatisticsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCoverageStatisticsOutput`
    public func listCoverageStatisticsPaginated(input: ListCoverageStatisticsInput) -> ClientRuntime.PaginatorSequence<ListCoverageStatisticsInput, ListCoverageStatisticsOutput> {
        return ClientRuntime.PaginatorSequence<ListCoverageStatisticsInput, ListCoverageStatisticsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCoverageStatistics(input:))
    }
}

extension ListCoverageStatisticsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCoverageStatisticsInput {
        return ListCoverageStatisticsInput(
            filterCriteria: self.filterCriteria,
            groupBy: self.groupBy,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCoverageStatisticsInput, OperationStackOutput == ListCoverageStatisticsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCoverageStatisticsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.Counts]`
    /// - Returns: `[Inspector2ClientTypes.Counts]`
    public func countsByGroup() async throws -> [Inspector2ClientTypes.Counts] {
        return try await self.asyncCompactMap { item in item.countsByGroup }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListDelegatedAdminAccountsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDelegatedAdminAccountsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDelegatedAdminAccountsOutput`
    public func listDelegatedAdminAccountsPaginated(input: ListDelegatedAdminAccountsInput) -> ClientRuntime.PaginatorSequence<ListDelegatedAdminAccountsInput, ListDelegatedAdminAccountsOutput> {
        return ClientRuntime.PaginatorSequence<ListDelegatedAdminAccountsInput, ListDelegatedAdminAccountsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDelegatedAdminAccounts(input:))
    }
}

extension ListDelegatedAdminAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDelegatedAdminAccountsInput {
        return ListDelegatedAdminAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDelegatedAdminAccountsInput, OperationStackOutput == ListDelegatedAdminAccountsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDelegatedAdminAccountsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.DelegatedAdminAccount]`
    /// - Returns: `[Inspector2ClientTypes.DelegatedAdminAccount]`
    public func delegatedAdminAccounts() async throws -> [Inspector2ClientTypes.DelegatedAdminAccount] {
        return try await self.asyncCompactMap { item in item.delegatedAdminAccounts }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListFiltersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFiltersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFiltersOutput`
    public func listFiltersPaginated(input: ListFiltersInput) -> ClientRuntime.PaginatorSequence<ListFiltersInput, ListFiltersOutput> {
        return ClientRuntime.PaginatorSequence<ListFiltersInput, ListFiltersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFilters(input:))
    }
}

extension ListFiltersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFiltersInput {
        return ListFiltersInput(
            action: self.action,
            arns: self.arns,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListFiltersInput, OperationStackOutput == ListFiltersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFiltersPaginated`
    /// to access the nested member `[Inspector2ClientTypes.Filter]`
    /// - Returns: `[Inspector2ClientTypes.Filter]`
    public func filters() async throws -> [Inspector2ClientTypes.Filter] {
        return try await self.asyncCompactMap { item in item.filters }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListFindingAggregationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFindingAggregationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFindingAggregationsOutput`
    public func listFindingAggregationsPaginated(input: ListFindingAggregationsInput) -> ClientRuntime.PaginatorSequence<ListFindingAggregationsInput, ListFindingAggregationsOutput> {
        return ClientRuntime.PaginatorSequence<ListFindingAggregationsInput, ListFindingAggregationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFindingAggregations(input:))
    }
}

extension ListFindingAggregationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFindingAggregationsInput {
        return ListFindingAggregationsInput(
            accountIds: self.accountIds,
            aggregationRequest: self.aggregationRequest,
            aggregationType: self.aggregationType,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListFindingAggregationsInput, OperationStackOutput == ListFindingAggregationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFindingAggregationsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.AggregationResponse]`
    /// - Returns: `[Inspector2ClientTypes.AggregationResponse]`
    public func responses() async throws -> [Inspector2ClientTypes.AggregationResponse] {
        return try await self.asyncCompactMap { item in item.responses }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListFindingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFindingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFindingsOutput`
    public func listFindingsPaginated(input: ListFindingsInput) -> ClientRuntime.PaginatorSequence<ListFindingsInput, ListFindingsOutput> {
        return ClientRuntime.PaginatorSequence<ListFindingsInput, ListFindingsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFindings(input:))
    }
}

extension ListFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFindingsInput {
        return ListFindingsInput(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

extension PaginatorSequence where OperationStackInput == ListFindingsInput, OperationStackOutput == ListFindingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFindingsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.Finding]`
    /// - Returns: `[Inspector2ClientTypes.Finding]`
    public func findings() async throws -> [Inspector2ClientTypes.Finding] {
        return try await self.asyncCompactMap { item in item.findings }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListMembersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMembersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMembersOutput`
    public func listMembersPaginated(input: ListMembersInput) -> ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutput> {
        return ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listMembers(input:))
    }
}

extension ListMembersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMembersInput {
        return ListMembersInput(
            maxResults: self.maxResults,
            nextToken: token,
            onlyAssociated: self.onlyAssociated
        )}
}

extension PaginatorSequence where OperationStackInput == ListMembersInput, OperationStackOutput == ListMembersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listMembersPaginated`
    /// to access the nested member `[Inspector2ClientTypes.Member]`
    /// - Returns: `[Inspector2ClientTypes.Member]`
    public func members() async throws -> [Inspector2ClientTypes.Member] {
        return try await self.asyncCompactMap { item in item.members }
    }
}
extension Inspector2Client {
    /// Paginate over `[ListUsageTotalsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUsageTotalsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUsageTotalsOutput`
    public func listUsageTotalsPaginated(input: ListUsageTotalsInput) -> ClientRuntime.PaginatorSequence<ListUsageTotalsInput, ListUsageTotalsOutput> {
        return ClientRuntime.PaginatorSequence<ListUsageTotalsInput, ListUsageTotalsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listUsageTotals(input:))
    }
}

extension ListUsageTotalsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUsageTotalsInput {
        return ListUsageTotalsInput(
            accountIds: self.accountIds,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListUsageTotalsInput, OperationStackOutput == ListUsageTotalsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listUsageTotalsPaginated`
    /// to access the nested member `[Inspector2ClientTypes.UsageTotal]`
    /// - Returns: `[Inspector2ClientTypes.UsageTotal]`
    public func totals() async throws -> [Inspector2ClientTypes.UsageTotal] {
        return try await self.asyncCompactMap { item in item.totals }
    }
}
extension Inspector2Client {
    /// Paginate over `[SearchVulnerabilitiesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchVulnerabilitiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchVulnerabilitiesOutput`
    public func searchVulnerabilitiesPaginated(input: SearchVulnerabilitiesInput) -> ClientRuntime.PaginatorSequence<SearchVulnerabilitiesInput, SearchVulnerabilitiesOutput> {
        return ClientRuntime.PaginatorSequence<SearchVulnerabilitiesInput, SearchVulnerabilitiesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.searchVulnerabilities(input:))
    }
}

extension SearchVulnerabilitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchVulnerabilitiesInput {
        return SearchVulnerabilitiesInput(
            filterCriteria: self.filterCriteria,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == SearchVulnerabilitiesInput, OperationStackOutput == SearchVulnerabilitiesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchVulnerabilitiesPaginated`
    /// to access the nested member `[Inspector2ClientTypes.Vulnerability]`
    /// - Returns: `[Inspector2ClientTypes.Vulnerability]`
    public func vulnerabilities() async throws -> [Inspector2ClientTypes.Vulnerability] {
        return try await self.asyncCompactMap { item in item.vulnerabilities }
    }
}
