// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension RAMClient {
    /// Paginate over `[GetResourcePoliciesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetResourcePoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetResourcePoliciesOutput`
    public func getResourcePoliciesPaginated(input: GetResourcePoliciesInput) -> ClientRuntime.PaginatorSequence<GetResourcePoliciesInput, GetResourcePoliciesOutput> {
        return ClientRuntime.PaginatorSequence<GetResourcePoliciesInput, GetResourcePoliciesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getResourcePolicies(input:))
    }
}

extension GetResourcePoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourcePoliciesInput {
        return GetResourcePoliciesInput(
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resourceArns: self.resourceArns
        )}
}
extension RAMClient {
    /// Paginate over `[GetResourceShareAssociationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetResourceShareAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetResourceShareAssociationsOutput`
    public func getResourceShareAssociationsPaginated(input: GetResourceShareAssociationsInput) -> ClientRuntime.PaginatorSequence<GetResourceShareAssociationsInput, GetResourceShareAssociationsOutput> {
        return ClientRuntime.PaginatorSequence<GetResourceShareAssociationsInput, GetResourceShareAssociationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getResourceShareAssociations(input:))
    }
}

extension GetResourceShareAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourceShareAssociationsInput {
        return GetResourceShareAssociationsInput(
            associationStatus: self.associationStatus,
            associationType: self.associationType,
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resourceArn: self.resourceArn,
            resourceShareArns: self.resourceShareArns
        )}
}
extension RAMClient {
    /// Paginate over `[GetResourceShareInvitationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetResourceShareInvitationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetResourceShareInvitationsOutput`
    public func getResourceShareInvitationsPaginated(input: GetResourceShareInvitationsInput) -> ClientRuntime.PaginatorSequence<GetResourceShareInvitationsInput, GetResourceShareInvitationsOutput> {
        return ClientRuntime.PaginatorSequence<GetResourceShareInvitationsInput, GetResourceShareInvitationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getResourceShareInvitations(input:))
    }
}

extension GetResourceShareInvitationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourceShareInvitationsInput {
        return GetResourceShareInvitationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareArns: self.resourceShareArns,
            resourceShareInvitationArns: self.resourceShareInvitationArns
        )}
}
extension RAMClient {
    /// Paginate over `[GetResourceSharesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetResourceSharesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetResourceSharesOutput`
    public func getResourceSharesPaginated(input: GetResourceSharesInput) -> ClientRuntime.PaginatorSequence<GetResourceSharesInput, GetResourceSharesOutput> {
        return ClientRuntime.PaginatorSequence<GetResourceSharesInput, GetResourceSharesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getResourceShares(input:))
    }
}

extension GetResourceSharesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourceSharesInput {
        return GetResourceSharesInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            permissionArn: self.permissionArn,
            permissionVersion: self.permissionVersion,
            resourceOwner: self.resourceOwner,
            resourceShareArns: self.resourceShareArns,
            resourceShareStatus: self.resourceShareStatus,
            tagFilters: self.tagFilters
        )}
}
extension RAMClient {
    /// Paginate over `[ListPendingInvitationResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPendingInvitationResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPendingInvitationResourcesOutput`
    public func listPendingInvitationResourcesPaginated(input: ListPendingInvitationResourcesInput) -> ClientRuntime.PaginatorSequence<ListPendingInvitationResourcesInput, ListPendingInvitationResourcesOutput> {
        return ClientRuntime.PaginatorSequence<ListPendingInvitationResourcesInput, ListPendingInvitationResourcesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPendingInvitationResources(input:))
    }
}

extension ListPendingInvitationResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPendingInvitationResourcesInput {
        return ListPendingInvitationResourcesInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceRegionScope: self.resourceRegionScope,
            resourceShareInvitationArn: self.resourceShareInvitationArn
        )}
}
extension RAMClient {
    /// Paginate over `[ListPermissionAssociationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPermissionAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPermissionAssociationsOutput`
    public func listPermissionAssociationsPaginated(input: ListPermissionAssociationsInput) -> ClientRuntime.PaginatorSequence<ListPermissionAssociationsInput, ListPermissionAssociationsOutput> {
        return ClientRuntime.PaginatorSequence<ListPermissionAssociationsInput, ListPermissionAssociationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPermissionAssociations(input:))
    }
}

extension ListPermissionAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionAssociationsInput {
        return ListPermissionAssociationsInput(
            associationStatus: self.associationStatus,
            defaultVersion: self.defaultVersion,
            featureSet: self.featureSet,
            maxResults: self.maxResults,
            nextToken: token,
            permissionArn: self.permissionArn,
            permissionVersion: self.permissionVersion,
            resourceType: self.resourceType
        )}
}
extension RAMClient {
    /// Paginate over `[ListPermissionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPermissionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPermissionsOutput`
    public func listPermissionsPaginated(input: ListPermissionsInput) -> ClientRuntime.PaginatorSequence<ListPermissionsInput, ListPermissionsOutput> {
        return ClientRuntime.PaginatorSequence<ListPermissionsInput, ListPermissionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPermissions(input:))
    }
}

extension ListPermissionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionsInput {
        return ListPermissionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            permissionType: self.permissionType,
            resourceType: self.resourceType
        )}
}
extension RAMClient {
    /// Paginate over `[ListPermissionVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPermissionVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPermissionVersionsOutput`
    public func listPermissionVersionsPaginated(input: ListPermissionVersionsInput) -> ClientRuntime.PaginatorSequence<ListPermissionVersionsInput, ListPermissionVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListPermissionVersionsInput, ListPermissionVersionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPermissionVersions(input:))
    }
}

extension ListPermissionVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionVersionsInput {
        return ListPermissionVersionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            permissionArn: self.permissionArn
        )}
}
extension RAMClient {
    /// Paginate over `[ListPrincipalsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPrincipalsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPrincipalsOutput`
    public func listPrincipalsPaginated(input: ListPrincipalsInput) -> ClientRuntime.PaginatorSequence<ListPrincipalsInput, ListPrincipalsOutput> {
        return ClientRuntime.PaginatorSequence<ListPrincipalsInput, ListPrincipalsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPrincipals(input:))
    }
}

extension ListPrincipalsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPrincipalsInput {
        return ListPrincipalsInput(
            maxResults: self.maxResults,
            nextToken: token,
            principals: self.principals,
            resourceArn: self.resourceArn,
            resourceOwner: self.resourceOwner,
            resourceShareArns: self.resourceShareArns,
            resourceType: self.resourceType
        )}
}
extension RAMClient {
    /// Paginate over `[ListReplacePermissionAssociationsWorkOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReplacePermissionAssociationsWorkInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReplacePermissionAssociationsWorkOutput`
    public func listReplacePermissionAssociationsWorkPaginated(input: ListReplacePermissionAssociationsWorkInput) -> ClientRuntime.PaginatorSequence<ListReplacePermissionAssociationsWorkInput, ListReplacePermissionAssociationsWorkOutput> {
        return ClientRuntime.PaginatorSequence<ListReplacePermissionAssociationsWorkInput, ListReplacePermissionAssociationsWorkOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listReplacePermissionAssociationsWork(input:))
    }
}

extension ListReplacePermissionAssociationsWorkInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReplacePermissionAssociationsWorkInput {
        return ListReplacePermissionAssociationsWorkInput(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status,
            workIds: self.workIds
        )}
}
extension RAMClient {
    /// Paginate over `[ListResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourcesOutput`
    public func listResourcesPaginated(input: ListResourcesInput) -> ClientRuntime.PaginatorSequence<ListResourcesInput, ListResourcesOutput> {
        return ClientRuntime.PaginatorSequence<ListResourcesInput, ListResourcesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResources(input:))
    }
}

extension ListResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourcesInput {
        return ListResourcesInput(
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resourceArns: self.resourceArns,
            resourceOwner: self.resourceOwner,
            resourceRegionScope: self.resourceRegionScope,
            resourceShareArns: self.resourceShareArns,
            resourceType: self.resourceType
        )}
}
extension RAMClient {
    /// Paginate over `[ListResourceSharePermissionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourceSharePermissionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourceSharePermissionsOutput`
    public func listResourceSharePermissionsPaginated(input: ListResourceSharePermissionsInput) -> ClientRuntime.PaginatorSequence<ListResourceSharePermissionsInput, ListResourceSharePermissionsOutput> {
        return ClientRuntime.PaginatorSequence<ListResourceSharePermissionsInput, ListResourceSharePermissionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResourceSharePermissions(input:))
    }
}

extension ListResourceSharePermissionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceSharePermissionsInput {
        return ListResourceSharePermissionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareArn: self.resourceShareArn
        )}
}
extension RAMClient {
    /// Paginate over `[ListResourceTypesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourceTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourceTypesOutput`
    public func listResourceTypesPaginated(input: ListResourceTypesInput) -> ClientRuntime.PaginatorSequence<ListResourceTypesInput, ListResourceTypesOutput> {
        return ClientRuntime.PaginatorSequence<ListResourceTypesInput, ListResourceTypesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResourceTypes(input:))
    }
}

extension ListResourceTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceTypesInput {
        return ListResourceTypesInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceRegionScope: self.resourceRegionScope
        )}
}
