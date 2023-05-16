// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon WorkLink is a cloud-based service that provides secure access to internal websites and web apps from iOS and Android phones. In a single step, your users, such as employees, can access internal websites as efficiently as they access any other public website. They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink authenticates the user's access and securely renders authorized internal web content in a secure rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on mobile devices.
public protocol WorkLinkClientProtocol {
    /// Specifies a domain to be associated to Amazon WorkLink.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func associateDomain(input: AssociateDomainInput) async throws -> AssociateDomainOutputResponse
    /// Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func associateWebsiteAuthorizationProvider(input: AssociateWebsiteAuthorizationProviderInput) async throws -> AssociateWebsiteAuthorizationProviderOutputResponse
    /// Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func associateWebsiteCertificateAuthority(input: AssociateWebsiteCertificateAuthorityInput) async throws -> AssociateWebsiteCertificateAuthorityOutputResponse
    /// Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func createFleet(input: CreateFleetInput) async throws -> CreateFleetOutputResponse
    /// Deletes a fleet. Prevents users from accessing previously associated websites.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func deleteFleet(input: DeleteFleetInput) async throws -> DeleteFleetOutputResponse
    /// Describes the configuration for delivering audit streams to the customer account.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeAuditStreamConfiguration(input: DescribeAuditStreamConfigurationInput) async throws -> DescribeAuditStreamConfigurationOutputResponse
    /// Describes the networking configuration to access the internal websites associated with the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeCompanyNetworkConfiguration(input: DescribeCompanyNetworkConfigurationInput) async throws -> DescribeCompanyNetworkConfigurationOutputResponse
    /// Provides information about a user's device.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeDevice(input: DescribeDeviceInput) async throws -> DescribeDeviceOutputResponse
    /// Describes the device policy configuration for the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeDevicePolicyConfiguration(input: DescribeDevicePolicyConfigurationInput) async throws -> DescribeDevicePolicyConfigurationOutputResponse
    /// Provides information about the domain.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeDomain(input: DescribeDomainInput) async throws -> DescribeDomainOutputResponse
    /// Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeFleetMetadata(input: DescribeFleetMetadataInput) async throws -> DescribeFleetMetadataOutputResponse
    /// Describes the identity provider configuration of the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeIdentityProviderConfiguration(input: DescribeIdentityProviderConfigurationInput) async throws -> DescribeIdentityProviderConfigurationOutputResponse
    /// Provides information about the certificate authority.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func describeWebsiteCertificateAuthority(input: DescribeWebsiteCertificateAuthorityInput) async throws -> DescribeWebsiteCertificateAuthorityOutputResponse
    /// Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func disassociateDomain(input: DisassociateDomainInput) async throws -> DisassociateDomainOutputResponse
    /// Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func disassociateWebsiteAuthorizationProvider(input: DisassociateWebsiteAuthorizationProviderInput) async throws -> DisassociateWebsiteAuthorizationProviderOutputResponse
    /// Removes a certificate authority (CA).
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func disassociateWebsiteCertificateAuthority(input: DisassociateWebsiteCertificateAuthorityInput) async throws -> DisassociateWebsiteCertificateAuthorityOutputResponse
    /// Retrieves a list of devices registered with the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func listDevices(input: ListDevicesInput) async throws -> ListDevicesOutputResponse
    /// Retrieves a list of domains associated to a specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func listDomains(input: ListDomainsInput) async throws -> ListDomainsOutputResponse
    /// Retrieves a list of fleets for the current account and Region.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func listFleets(input: ListFleetsInput) async throws -> ListFleetsOutputResponse
    /// Retrieves a list of tags for the specified resource.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Retrieves a list of website authorization providers associated with a specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func listWebsiteAuthorizationProviders(input: ListWebsiteAuthorizationProvidersInput) async throws -> ListWebsiteAuthorizationProvidersOutputResponse
    /// Retrieves a list of certificate authorities added for the current account and Region.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func listWebsiteCertificateAuthorities(input: ListWebsiteCertificateAuthoritiesInput) async throws -> ListWebsiteCertificateAuthoritiesOutputResponse
    /// Moves a domain to ACTIVE status if it was in the INACTIVE status.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func restoreDomainAccess(input: RestoreDomainAccessInput) async throws -> RestoreDomainAccessOutputResponse
    /// Moves a domain to INACTIVE status if it was in the ACTIVE status.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func revokeDomainAccess(input: RevokeDomainAccessInput) async throws -> RevokeDomainAccessOutputResponse
    /// Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func signOutUser(input: SignOutUserInput) async throws -> SignOutUserOutputResponse
    /// Adds or overwrites one or more tags for the specified resource, such as a fleet. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from the specified resource.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the audit stream configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func updateAuditStreamConfiguration(input: UpdateAuditStreamConfigurationInput) async throws -> UpdateAuditStreamConfigurationOutputResponse
    /// Updates the company network configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func updateCompanyNetworkConfiguration(input: UpdateCompanyNetworkConfigurationInput) async throws -> UpdateCompanyNetworkConfigurationOutputResponse
    /// Updates the device policy configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func updateDevicePolicyConfiguration(input: UpdateDevicePolicyConfigurationInput) async throws -> UpdateDevicePolicyConfigurationOutputResponse
    /// Updates domain metadata, such as DisplayName.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func updateDomainMetadata(input: UpdateDomainMetadataInput) async throws -> UpdateDomainMetadataOutputResponse
    /// Updates fleet metadata, such as DisplayName.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func updateFleetMetadata(input: UpdateFleetMetadataInput) async throws -> UpdateFleetMetadataOutputResponse
    /// Updates the identity provider configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    func updateIdentityProviderConfiguration(input: UpdateIdentityProviderConfigurationInput) async throws -> UpdateIdentityProviderConfigurationOutputResponse
}

public protocol WorkLinkClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum WorkLinkClientTypes {}