// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import AWSSDKHTTPAuth
import AWSSDKIdentity
import ClientRuntime
import SmithyHTTPAuthAPI
import SmithyIdentityAPI

public class Route53DomainsClientEndpointPlugin: Plugin {
    private var endpointResolver: EndpointResolver
    public init(endpointResolver: EndpointResolver) {
        self.endpointResolver = endpointResolver
    }
    public convenience init() throws {
        self.init(endpointResolver: try DefaultEndpointResolver())
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? Route53DomainsClient.Route53DomainsClientConfiguration {
            config.endpointResolver = self.endpointResolver
        }
    }
}

public class DefaultAWSAuthSchemePlugin: Plugin {
    public init() {
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? Route53DomainsClient.Route53DomainsClientConfiguration {
            config.authSchemeResolver = DefaultRoute53DomainsAuthSchemeResolver()
            config.authSchemes = [SigV4AuthScheme()]
            config.awsCredentialIdentityResolver = try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver()
        }
    }
}

public class Route53DomainsClientAuthSchemePlugin: Plugin {
    private var authSchemes: [SmithyHTTPAuthAPI.AuthScheme]?
    private var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver?
    private var awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)?
    public init(authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: Route53DomainsAuthSchemeResolver? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil) {
        self.authSchemeResolver = authSchemeResolver
        self.authSchemes = authSchemes
        self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? Route53DomainsClient.Route53DomainsClientConfiguration {
            if (self.authSchemes != nil) {
                config.authSchemes = self.authSchemes
            }
            if (self.authSchemeResolver != nil) {
                config.authSchemeResolver = self.authSchemeResolver!
            }
            if (self.awsCredentialIdentityResolver != nil) {
                config.awsCredentialIdentityResolver = self.awsCredentialIdentityResolver!
            }
        }
    }
}
