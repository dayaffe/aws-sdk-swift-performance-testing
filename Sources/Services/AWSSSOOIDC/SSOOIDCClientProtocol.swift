// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// AWS IAM Identity Center (successor to AWS Single Sign-On) OpenID Connect (OIDC) is a web service that enables a client (such as AWS CLI or a native application) to register with IAM Identity Center. The service also enables the client to fetch the user’s access token upon successful authentication and authorization with IAM Identity Center. Although AWS Single Sign-On was renamed, the sso and identitystore API namespaces will continue to retain their original name for backward compatibility purposes. For more information, see [IAM Identity Center rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed). Considerations for Using This Guide Before you begin using this guide, we recommend that you first review the following important information about how the IAM Identity Center OIDC service works.
///
/// * The IAM Identity Center OIDC service currently implements only the portions of the OAuth 2.0 Device Authorization Grant standard ([https://tools.ietf.org/html/rfc8628](https://tools.ietf.org/html/rfc8628)) that are necessary to enable single sign-on authentication with the AWS CLI. Support for other OIDC flows frequently needed for native applications, such as Authorization Code Flow (+ PKCE), will be addressed in future releases.
///
/// * The service emits only OIDC access tokens, such that obtaining a new token (For example, token refresh) requires explicit user re-authentication.
///
/// * The access tokens provided by this service grant access to all AWS account entitlements assigned to an IAM Identity Center user, not just a particular application.
///
/// * The documentation in this guide does not describe the mechanism to convert the access token into AWS Auth (“sigv4”) credentials for use with IAM-protected AWS service endpoints. For more information, see [GetRoleCredentials](https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html) in the IAM Identity Center Portal API Reference Guide.
///
///
/// For general information about IAM Identity Center, see [What is IAM Identity Center?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html) in the IAM Identity Center User Guide.
public protocol SSOOIDCClientProtocol {
    /// Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
    func createToken(input: CreateTokenInput) async throws -> CreateTokenOutputResponse
    /// Registers a client with IAM Identity Center. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
    func registerClient(input: RegisterClientInput) async throws -> RegisterClientOutputResponse
    /// Initiates device authorization by requesting a pair of verification codes from the authorization service.
    func startDeviceAuthorization(input: StartDeviceAuthorizationInput) async throws -> StartDeviceAuthorizationOutputResponse
}

public protocol SSOOIDCClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SSOOIDCClientTypes {}