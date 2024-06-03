// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Smithy
import SmithyHTTPAuthAPI

public struct LexRuntimeV2AuthSchemeResolverParameters: SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
    public let operation: String
    // Region is used for SigV4 auth scheme
    public let region: String?
}

public protocol LexRuntimeV2AuthSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver {
    // Intentionally empty.
    // This is the parent protocol that all auth scheme resolver implementations of
    // the service LexRuntimeV2 must conform to.
}

public struct DefaultLexRuntimeV2AuthSchemeResolver: LexRuntimeV2AuthSchemeResolver {
    public func resolveAuthScheme(params: SmithyHTTPAuthAPI.AuthSchemeResolverParameters) throws -> [AuthOption] {
        var validAuthOptions = [AuthOption]()
        guard let serviceParams = params as? LexRuntimeV2AuthSchemeResolverParameters else {
            throw ClientError.authError("Service specific auth scheme parameters type must be passed to auth scheme resolver.")
        }
        switch serviceParams.operation {
            case "recognizeUtterance":
                var sigV4Option = AuthOption(schemeID: "aws.auth#sigv4")
                sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingName, value: "lex")
                guard let region = serviceParams.region else {
                    throw ClientError.authError("Missing region in auth scheme parameters for SigV4 auth scheme.")
                }
                sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingRegion, value: region)
                validAuthOptions.append(sigV4Option)
            default:
                var sigV4Option = AuthOption(schemeID: "aws.auth#sigv4")
                sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingName, value: "lex")
                guard let region = serviceParams.region else {
                    throw ClientError.authError("Missing region in auth scheme parameters for SigV4 auth scheme.")
                }
                sigV4Option.signingProperties.set(key: SigningPropertyKeys.signingRegion, value: region)
                validAuthOptions.append(sigV4Option)
        }
        return validAuthOptions
    }

    public func constructParameters(context: Smithy.Context) throws -> SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
        guard let opName = context.getOperation() else {
            throw ClientError.dataNotFound("Operation name not configured in middleware context for auth scheme resolver params construction.")
        }
        let opRegion = context.getRegion()
        return LexRuntimeV2AuthSchemeResolverParameters(operation: opName, region: opRegion)
    }
}
