// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Smithy
import SmithyHTTPAuthAPI
import enum ClientRuntime.EndpointsAuthScheme

public struct EventBridgeAuthSchemeResolverParameters: SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
    public let operation: String
    /// Override the endpoint used to send this request
    public let endpoint: Swift.String?
    /// Operation parameter for EndpointId
    public let endpointId: Swift.String?
    /// The AWS region used to dispatch the request.
    public let region: Swift.String?
    /// When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
    public let useDualStack: Swift.Bool
    /// When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
    public let useFIPS: Swift.Bool
}

public protocol EventBridgeAuthSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver {
    // Intentionally empty.
    // This is the parent protocol that all auth scheme resolver implementations of
    // the service EventBridge must conform to.
}

private struct InternalModeledEventBridgeAuthSchemeResolver: EventBridgeAuthSchemeResolver {
    public func resolveAuthScheme(params: SmithyHTTPAuthAPI.AuthSchemeResolverParameters) throws -> [AuthOption] {
        var validAuthOptions = [AuthOption]()
        guard let serviceParams = params as? EventBridgeAuthSchemeResolverParameters else {
            throw ClientError.authError("Service specific auth scheme parameters type must be passed to auth scheme resolver.")
        }
        switch serviceParams.operation {
            default:
                var sigV4Option = AuthOption(schemeID: "aws.auth#sigv4")
                sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingName, value: "events")
                guard let region = serviceParams.region else {
                    throw ClientError.authError("Missing region in auth scheme parameters for SigV4 auth scheme.")
                }
                sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingRegion, value: region)
                validAuthOptions.append(sigV4Option)
        }
        return validAuthOptions
    }

    public func constructParameters(context: Smithy.Context) throws -> SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
        return try DefaultEventBridgeAuthSchemeResolver().constructParameters(context: context)
    }
}

public struct DefaultEventBridgeAuthSchemeResolver: EventBridgeAuthSchemeResolver {
    public func resolveAuthScheme(params: SmithyHTTPAuthAPI.AuthSchemeResolverParameters) throws -> [AuthOption] {
        var validAuthOptions = [AuthOption]()
        guard let serviceParams = params as? EventBridgeAuthSchemeResolverParameters else {
            throw ClientError.authError("Service specific auth scheme parameters type must be passed to auth scheme resolver.")
        }
        let endpointParams = EndpointParams(authSchemeParams: serviceParams)
        let endpoint = try DefaultEndpointResolver().resolve(params: endpointParams)
        guard let authSchemes = endpoint.authSchemes() else {
            return try InternalModeledEventBridgeAuthSchemeResolver().resolveAuthScheme(params: params)
        }
        let schemes = try authSchemes.map { (input) -> ClientRuntime.EndpointsAuthScheme in try ClientRuntime.EndpointsAuthScheme(from: input) }
        for scheme in schemes {
            switch scheme {
                case .sigV4(let param):
                    var sigV4Option = AuthOption(schemeID: "aws.auth#sigv4")
                    sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingName, value: param.signingName)
                    sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingRegion, value: param.signingRegion)
                    validAuthOptions.append(sigV4Option)
                case .sigV4A(let param):
                    var sigV4Option = AuthOption(schemeID: "aws.auth#sigv4a")
                    sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingName, value: param.signingName)
                    sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingRegion, value: param.signingRegionSet?[0])
                    validAuthOptions.append(sigV4Option)
                default:
                    throw ClientError.authError("Unknown auth scheme name: \(scheme.name)")
            }
        }
        return validAuthOptions
    }

    public func constructParameters(context: Smithy.Context) throws -> SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
        guard let opName = context.getOperation() else {
            throw ClientError.dataNotFound("Operation name not configured in middleware context for auth scheme resolver params construction.")
        }
        guard let endpointParam = context.attributes.get(key: AttributeKey<EndpointParams>(name: "EndpointParams")) else {
            throw ClientError.dataNotFound("Endpoint param not configured in middleware context for rules-based auth scheme resolver params construction.")
        }
        return EventBridgeAuthSchemeResolverParameters(operation: opName, endpoint: endpointParam.endpoint, endpointId: endpointParam.endpointId, region: endpointParam.region, useDualStack: endpointParam.useDualStack, useFIPS: endpointParam.useFIPS)
    }
}
