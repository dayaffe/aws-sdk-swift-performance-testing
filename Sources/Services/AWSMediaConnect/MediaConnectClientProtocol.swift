// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// API for AWS Elemental MediaConnect
public protocol MediaConnectClientProtocol {
    /// Adds outputs to an existing bridge.
    func addBridgeOutputs(input: AddBridgeOutputsInput) async throws -> AddBridgeOutputsOutputResponse
    /// Adds sources to an existing bridge.
    func addBridgeSources(input: AddBridgeSourcesInput) async throws -> AddBridgeSourcesOutputResponse
    /// Adds media streams to an existing flow. After you add a media stream to a flow, you can associate it with a source and/or an output that uses the ST 2110 JPEG XS or CDI protocol.
    func addFlowMediaStreams(input: AddFlowMediaStreamsInput) async throws -> AddFlowMediaStreamsOutputResponse
    /// Adds outputs to an existing flow. You can create up to 50 outputs per flow.
    func addFlowOutputs(input: AddFlowOutputsInput) async throws -> AddFlowOutputsOutputResponse
    /// Adds Sources to flow
    func addFlowSources(input: AddFlowSourcesInput) async throws -> AddFlowSourcesOutputResponse
    /// Adds VPC interfaces to flow
    func addFlowVpcInterfaces(input: AddFlowVpcInterfacesInput) async throws -> AddFlowVpcInterfacesOutputResponse
    /// Creates a new bridge. The request must include one source.
    func createBridge(input: CreateBridgeInput) async throws -> CreateBridgeOutputResponse
    /// Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    func createFlow(input: CreateFlowInput) async throws -> CreateFlowOutputResponse
    /// Creates a new gateway. The request must include at least one network (up to 4).
    func createGateway(input: CreateGatewayInput) async throws -> CreateGatewayOutputResponse
    /// Deletes a bridge. Before you can delete a bridge, you must stop the bridge.
    func deleteBridge(input: DeleteBridgeInput) async throws -> DeleteBridgeOutputResponse
    /// Deletes a flow. Before you can delete a flow, you must stop the flow.
    func deleteFlow(input: DeleteFlowInput) async throws -> DeleteFlowOutputResponse
    /// Deletes a gateway. Before you can delete a gateway, you must deregister its instances and delete its bridges.
    func deleteGateway(input: DeleteGatewayInput) async throws -> DeleteGatewayOutputResponse
    /// Deregisters an instance. Before you deregister an instance, all bridges running on the instance must be stopped. If you want to deregister an instance without stopping the bridges, you must use the --force option.
    func deregisterGatewayInstance(input: DeregisterGatewayInstanceInput) async throws -> DeregisterGatewayInstanceOutputResponse
    /// Displays the details of a bridge.
    func describeBridge(input: DescribeBridgeInput) async throws -> DescribeBridgeOutputResponse
    /// Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
    func describeFlow(input: DescribeFlowInput) async throws -> DescribeFlowOutputResponse
    /// Displays the details of a gateway. The response includes the gateway ARN, name, and CIDR blocks, as well as details about the networks.
    func describeGateway(input: DescribeGatewayInput) async throws -> DescribeGatewayOutputResponse
    /// Displays the details of an instance.
    func describeGatewayInstance(input: DescribeGatewayInstanceInput) async throws -> DescribeGatewayInstanceOutputResponse
    /// Displays the details of an offering. The response includes the offering description, duration, outbound bandwidth, price, and Amazon Resource Name (ARN).
    func describeOffering(input: DescribeOfferingInput) async throws -> DescribeOfferingOutputResponse
    /// Displays the details of a reservation. The response includes the reservation name, state, start date and time, and the details of the offering that make up the rest of the reservation (such as price, duration, and outbound bandwidth).
    func describeReservation(input: DescribeReservationInput) async throws -> DescribeReservationOutputResponse
    /// Grants entitlements to an existing flow.
    func grantFlowEntitlements(input: GrantFlowEntitlementsInput) async throws -> GrantFlowEntitlementsOutputResponse
    /// Displays a list of bridges that are associated with this account and an optionally specified Arn. This request returns a paginated result.
    func listBridges(input: ListBridgesInput) async throws -> ListBridgesOutputResponse
    /// Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    func listEntitlements(input: ListEntitlementsInput) async throws -> ListEntitlementsOutputResponse
    /// Displays a list of flows that are associated with this account. This request returns a paginated result.
    func listFlows(input: ListFlowsInput) async throws -> ListFlowsOutputResponse
    /// Displays a list of instances associated with the AWS account. This request returns a paginated result. You can use the filterArn property to display only the instances associated with the selected Gateway Amazon Resource Name (ARN).
    func listGatewayInstances(input: ListGatewayInstancesInput) async throws -> ListGatewayInstancesOutputResponse
    /// Displays a list of gateways that are associated with this account. This request returns a paginated result.
    func listGateways(input: ListGatewaysInput) async throws -> ListGatewaysOutputResponse
    /// Displays a list of all offerings that are available to this account in the current AWS Region. If you have an active reservation (which means you've purchased an offering that has already started and hasn't expired yet), your account isn't eligible for other offerings.
    func listOfferings(input: ListOfferingsInput) async throws -> ListOfferingsOutputResponse
    /// Displays a list of all reservations that have been purchased by this account in the current AWS Region. This list includes all reservations in all states (such as active and expired).
    func listReservations(input: ListReservationsInput) async throws -> ListReservationsOutputResponse
    /// List all tags on an AWS Elemental MediaConnect resource
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Submits a request to purchase an offering. If you already have an active reservation, you can't purchase another offering.
    func purchaseOffering(input: PurchaseOfferingInput) async throws -> PurchaseOfferingOutputResponse
    /// Removes an output from a bridge.
    func removeBridgeOutput(input: RemoveBridgeOutputInput) async throws -> RemoveBridgeOutputOutputResponse
    /// Removes a source from a bridge.
    func removeBridgeSource(input: RemoveBridgeSourceInput) async throws -> RemoveBridgeSourceOutputResponse
    /// Removes a media stream from a flow. This action is only available if the media stream is not associated with a source or output.
    func removeFlowMediaStream(input: RemoveFlowMediaStreamInput) async throws -> RemoveFlowMediaStreamOutputResponse
    /// Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
    func removeFlowOutput(input: RemoveFlowOutputInput) async throws -> RemoveFlowOutputOutputResponse
    /// Removes a source from an existing flow. This request can be made only if there is more than one source on the flow.
    func removeFlowSource(input: RemoveFlowSourceInput) async throws -> RemoveFlowSourceOutputResponse
    /// Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface.
    func removeFlowVpcInterface(input: RemoveFlowVpcInterfaceInput) async throws -> RemoveFlowVpcInterfaceOutputResponse
    /// Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
    func revokeFlowEntitlement(input: RevokeFlowEntitlementInput) async throws -> RevokeFlowEntitlementOutputResponse
    /// Starts a flow.
    func startFlow(input: StartFlowInput) async throws -> StartFlowOutputResponse
    /// Stops a flow.
    func stopFlow(input: StopFlowInput) async throws -> StopFlowOutputResponse
    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Deletes specified tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the bridge
    func updateBridge(input: UpdateBridgeInput) async throws -> UpdateBridgeOutputResponse
    /// Updates an existing bridge output.
    func updateBridgeOutput(input: UpdateBridgeOutputInput) async throws -> UpdateBridgeOutputOutputResponse
    /// Updates an existing bridge source.
    func updateBridgeSource(input: UpdateBridgeSourceInput) async throws -> UpdateBridgeSourceOutputResponse
    /// Updates the bridge state
    func updateBridgeState(input: UpdateBridgeStateInput) async throws -> UpdateBridgeStateOutputResponse
    /// Updates flow
    func updateFlow(input: UpdateFlowInput) async throws -> UpdateFlowOutputResponse
    /// You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
    func updateFlowEntitlement(input: UpdateFlowEntitlementInput) async throws -> UpdateFlowEntitlementOutputResponse
    /// Updates an existing media stream.
    func updateFlowMediaStream(input: UpdateFlowMediaStreamInput) async throws -> UpdateFlowMediaStreamOutputResponse
    /// Updates an existing flow output.
    func updateFlowOutput(input: UpdateFlowOutputInput) async throws -> UpdateFlowOutputOutputResponse
    /// Updates the source of a flow.
    func updateFlowSource(input: UpdateFlowSourceInput) async throws -> UpdateFlowSourceOutputResponse
    /// Updates the configuration of an existing Gateway Instance.
    func updateGatewayInstance(input: UpdateGatewayInstanceInput) async throws -> UpdateGatewayInstanceOutputResponse
}

public protocol MediaConnectClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MediaConnectClientTypes {}