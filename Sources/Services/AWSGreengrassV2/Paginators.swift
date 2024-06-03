// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension GreengrassV2Client {
    /// Paginate over `[ListClientDevicesAssociatedWithCoreDeviceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListClientDevicesAssociatedWithCoreDeviceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListClientDevicesAssociatedWithCoreDeviceOutput`
    public func listClientDevicesAssociatedWithCoreDevicePaginated(input: ListClientDevicesAssociatedWithCoreDeviceInput) -> ClientRuntime.PaginatorSequence<ListClientDevicesAssociatedWithCoreDeviceInput, ListClientDevicesAssociatedWithCoreDeviceOutput> {
        return ClientRuntime.PaginatorSequence<ListClientDevicesAssociatedWithCoreDeviceInput, ListClientDevicesAssociatedWithCoreDeviceOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listClientDevicesAssociatedWithCoreDevice(input:))
    }
}

extension ListClientDevicesAssociatedWithCoreDeviceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClientDevicesAssociatedWithCoreDeviceInput {
        return ListClientDevicesAssociatedWithCoreDeviceInput(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListClientDevicesAssociatedWithCoreDeviceInput, OperationStackOutput == ListClientDevicesAssociatedWithCoreDeviceOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listClientDevicesAssociatedWithCoreDevicePaginated`
    /// to access the nested member `[GreengrassV2ClientTypes.AssociatedClientDevice]`
    /// - Returns: `[GreengrassV2ClientTypes.AssociatedClientDevice]`
    public func associatedClientDevices() async throws -> [GreengrassV2ClientTypes.AssociatedClientDevice] {
        return try await self.asyncCompactMap { item in item.associatedClientDevices }
    }
}
extension GreengrassV2Client {
    /// Paginate over `[ListComponentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListComponentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListComponentsOutput`
    public func listComponentsPaginated(input: ListComponentsInput) -> ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutput> {
        return ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listComponents(input:))
    }
}

extension ListComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComponentsInput {
        return ListComponentsInput(
            maxResults: self.maxResults,
            nextToken: token,
            scope: self.scope
        )}
}

extension PaginatorSequence where OperationStackInput == ListComponentsInput, OperationStackOutput == ListComponentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listComponentsPaginated`
    /// to access the nested member `[GreengrassV2ClientTypes.Component]`
    /// - Returns: `[GreengrassV2ClientTypes.Component]`
    public func components() async throws -> [GreengrassV2ClientTypes.Component] {
        return try await self.asyncCompactMap { item in item.components }
    }
}
extension GreengrassV2Client {
    /// Paginate over `[ListComponentVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListComponentVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListComponentVersionsOutput`
    public func listComponentVersionsPaginated(input: ListComponentVersionsInput) -> ClientRuntime.PaginatorSequence<ListComponentVersionsInput, ListComponentVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListComponentVersionsInput, ListComponentVersionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listComponentVersions(input:))
    }
}

extension ListComponentVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComponentVersionsInput {
        return ListComponentVersionsInput(
            arn: self.arn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListComponentVersionsInput, OperationStackOutput == ListComponentVersionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listComponentVersionsPaginated`
    /// to access the nested member `[GreengrassV2ClientTypes.ComponentVersionListItem]`
    /// - Returns: `[GreengrassV2ClientTypes.ComponentVersionListItem]`
    public func componentVersions() async throws -> [GreengrassV2ClientTypes.ComponentVersionListItem] {
        return try await self.asyncCompactMap { item in item.componentVersions }
    }
}
extension GreengrassV2Client {
    /// Paginate over `[ListCoreDevicesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCoreDevicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCoreDevicesOutput`
    public func listCoreDevicesPaginated(input: ListCoreDevicesInput) -> ClientRuntime.PaginatorSequence<ListCoreDevicesInput, ListCoreDevicesOutput> {
        return ClientRuntime.PaginatorSequence<ListCoreDevicesInput, ListCoreDevicesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCoreDevices(input:))
    }
}

extension ListCoreDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCoreDevicesInput {
        return ListCoreDevicesInput(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status,
            thingGroupArn: self.thingGroupArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListCoreDevicesInput, OperationStackOutput == ListCoreDevicesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCoreDevicesPaginated`
    /// to access the nested member `[GreengrassV2ClientTypes.CoreDevice]`
    /// - Returns: `[GreengrassV2ClientTypes.CoreDevice]`
    public func coreDevices() async throws -> [GreengrassV2ClientTypes.CoreDevice] {
        return try await self.asyncCompactMap { item in item.coreDevices }
    }
}
extension GreengrassV2Client {
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
            historyFilter: self.historyFilter,
            maxResults: self.maxResults,
            nextToken: token,
            parentTargetArn: self.parentTargetArn,
            targetArn: self.targetArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListDeploymentsInput, OperationStackOutput == ListDeploymentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDeploymentsPaginated`
    /// to access the nested member `[GreengrassV2ClientTypes.Deployment]`
    /// - Returns: `[GreengrassV2ClientTypes.Deployment]`
    public func deployments() async throws -> [GreengrassV2ClientTypes.Deployment] {
        return try await self.asyncCompactMap { item in item.deployments }
    }
}
extension GreengrassV2Client {
    /// Paginate over `[ListEffectiveDeploymentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEffectiveDeploymentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEffectiveDeploymentsOutput`
    public func listEffectiveDeploymentsPaginated(input: ListEffectiveDeploymentsInput) -> ClientRuntime.PaginatorSequence<ListEffectiveDeploymentsInput, ListEffectiveDeploymentsOutput> {
        return ClientRuntime.PaginatorSequence<ListEffectiveDeploymentsInput, ListEffectiveDeploymentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEffectiveDeployments(input:))
    }
}

extension ListEffectiveDeploymentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEffectiveDeploymentsInput {
        return ListEffectiveDeploymentsInput(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListEffectiveDeploymentsInput, OperationStackOutput == ListEffectiveDeploymentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEffectiveDeploymentsPaginated`
    /// to access the nested member `[GreengrassV2ClientTypes.EffectiveDeployment]`
    /// - Returns: `[GreengrassV2ClientTypes.EffectiveDeployment]`
    public func effectiveDeployments() async throws -> [GreengrassV2ClientTypes.EffectiveDeployment] {
        return try await self.asyncCompactMap { item in item.effectiveDeployments }
    }
}
extension GreengrassV2Client {
    /// Paginate over `[ListInstalledComponentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInstalledComponentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInstalledComponentsOutput`
    public func listInstalledComponentsPaginated(input: ListInstalledComponentsInput) -> ClientRuntime.PaginatorSequence<ListInstalledComponentsInput, ListInstalledComponentsOutput> {
        return ClientRuntime.PaginatorSequence<ListInstalledComponentsInput, ListInstalledComponentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listInstalledComponents(input:))
    }
}

extension ListInstalledComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstalledComponentsInput {
        return ListInstalledComponentsInput(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token,
            topologyFilter: self.topologyFilter
        )}
}

extension PaginatorSequence where OperationStackInput == ListInstalledComponentsInput, OperationStackOutput == ListInstalledComponentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listInstalledComponentsPaginated`
    /// to access the nested member `[GreengrassV2ClientTypes.InstalledComponent]`
    /// - Returns: `[GreengrassV2ClientTypes.InstalledComponent]`
    public func installedComponents() async throws -> [GreengrassV2ClientTypes.InstalledComponent] {
        return try await self.asyncCompactMap { item in item.installedComponents }
    }
}
