// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import AWSSDKHTTPAuth
import ClientRuntime
import Foundation
import Logging
import Smithy
import SmithyHTTPAPI
import SmithyHTTPAuthAPI
import SmithyIdentityAPI
import SmithyJSON
import SmithyReadWrite
import SmithyRetries
import SmithyRetriesAPI
import Swift
import enum ClientRuntime.ClientLogMode
import enum ClientRuntime.SDKLogLevel
import protocol ClientRuntime.IdempotencyTokenGenerator
import protocol ClientRuntime.SDKLogHandlerFactory
import protocol ClientRuntime.TelemetryProvider

public class CloudFrontKeyValueStoreClient: Client {
    public static let clientName = "CloudFrontKeyValueStoreClient"
    let client: ClientRuntime.SdkHttpClient
    let config: CloudFrontKeyValueStoreClient.CloudFrontKeyValueStoreClientConfiguration
    let serviceName = "CloudFront KeyValueStore"

    public required init(config: CloudFrontKeyValueStoreClient.CloudFrontKeyValueStoreClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try CloudFrontKeyValueStoreClient.CloudFrontKeyValueStoreClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await CloudFrontKeyValueStoreClient.CloudFrontKeyValueStoreClientConfiguration()
        self.init(config: config)
    }
}

extension CloudFrontKeyValueStoreClient {
    public class CloudFrontKeyValueStoreClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
        public var useFIPS: Swift.Bool?

        public var useDualStack: Swift.Bool?

        public var appID: Swift.String?

        public var awsCredentialIdentityResolver: any SmithyIdentityAPI.AWSCredentialIdentityResolver

        public var awsRetryMode: AWSClientRuntime.AWSRetryMode

        public var region: Swift.String?

        public var signingRegion: Swift.String?

        public var endpointResolver: EndpointResolver

        public var telemetryProvider: ClientRuntime.TelemetryProvider

        public var retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions

        public var clientLogMode: ClientRuntime.ClientLogMode

        public var endpoint: Swift.String?

        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator

        public var httpClientEngine: SmithyHTTPAPI.HTTPClient

        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration

        public var authSchemes: [SmithyHTTPAuthAPI.AuthScheme]?

        public var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver

        internal let logger: Smithy.LogAgent

        private init(_ useFIPS: Swift.Bool?, _ useDualStack: Swift.Bool?, _ appID: Swift.String?, _ awsCredentialIdentityResolver: any SmithyIdentityAPI.AWSCredentialIdentityResolver, _ awsRetryMode: AWSClientRuntime.AWSRetryMode, _ region: Swift.String?, _ signingRegion: Swift.String?, _ endpointResolver: EndpointResolver, _ telemetryProvider: ClientRuntime.TelemetryProvider, _ retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions, _ clientLogMode: ClientRuntime.ClientLogMode, _ endpoint: Swift.String?, _ idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator, _ httpClientEngine: SmithyHTTPAPI.HTTPClient, _ httpClientConfiguration: ClientRuntime.HttpClientConfiguration, _ authSchemes: [SmithyHTTPAuthAPI.AuthScheme]?, _ authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver) {
            self.useFIPS = useFIPS
            self.useDualStack = useDualStack
            self.appID = appID
            self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
            self.awsRetryMode = awsRetryMode
            self.region = region
            self.signingRegion = signingRegion
            self.endpointResolver = endpointResolver
            self.telemetryProvider = telemetryProvider
            self.retryStrategyOptions = retryStrategyOptions
            self.clientLogMode = clientLogMode
            self.endpoint = endpoint
            self.idempotencyTokenGenerator = idempotencyTokenGenerator
            self.httpClientEngine = httpClientEngine
            self.httpClientConfiguration = httpClientConfiguration
            self.authSchemes = authSchemes
            self.authSchemeResolver = authSchemeResolver
            self.logger = telemetryProvider.loggerProvider.getLogger(name: CloudFrontKeyValueStoreClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme(), SigV4AAuthScheme()], authSchemeResolver ?? DefaultCloudFrontKeyValueStoreAuthSchemeResolver())
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme(), SigV4AAuthScheme()], authSchemeResolver ?? DefaultCloudFrontKeyValueStoreAuthSchemeResolver())
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme(), SigV4AAuthScheme()], DefaultCloudFrontKeyValueStoreAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(CloudFrontKeyValueStoreClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<CloudFrontKeyValueStoreClient> {
        return ClientBuilder<CloudFrontKeyValueStoreClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

public struct CloudFrontKeyValueStoreClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "CloudFrontKeyValueStoreClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension CloudFrontKeyValueStoreClient {
    /// Performs the `DeleteKey` operation on the `CloudFrontKeyValueStore` service.
    ///
    /// Deletes the key value pair specified by the key.
    ///
    /// - Parameter DeleteKeyInput : [no documentation found]
    ///
    /// - Returns: `DeleteKeyOutput` : Metadata information about a Key Value Store.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access denied.
    /// - `ConflictException` : Resource is not in expected state.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : Resource was not found.
    /// - `ServiceQuotaExceededException` : Limit exceeded.
    /// - `ValidationException` : Validation failed.
    public func deleteKey(input: DeleteKeyInput) async throws -> DeleteKeyOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteKey")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudfront-keyvaluestore")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = OrchestratorBuilder<DeleteKeyInput, DeleteKeyOutput, SmithyHTTPAPI.SdkHttpRequest, SmithyHTTPAPI.HttpResponse>()
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<DeleteKeyInput, DeleteKeyOutput>(DeleteKeyInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<DeleteKeyInput, DeleteKeyOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, kvsARN: input.kvsARN, region: config.region, useFIPS: config.useFIPS ?? false)
        context.attributes.set(key: AttributeKey<EndpointParams>(name: "EndpointParams"), value: endpointParams)
        builder.applyEndpoint(EndpointResolverMiddleware<DeleteKeyOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<DeleteKeyInput, DeleteKeyOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<DeleteKeyOutput>())
        builder.serialize(ClientRuntime.HeaderMiddleware<DeleteKeyInput, DeleteKeyOutput>(DeleteKeyInput.headerProvider(_:)))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<DeleteKeyOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<DeleteKeyOutput>(DeleteKeyOutput.httpOutput(from:), DeleteKeyOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<DeleteKeyInput, DeleteKeyOutput>(clientLogMode: config.clientLogMode))
        let op = builder.attributes(context)
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

    /// Performs the `DescribeKeyValueStore` operation on the `CloudFrontKeyValueStore` service.
    ///
    /// Returns metadata information about Key Value Store.
    ///
    /// - Parameter DescribeKeyValueStoreInput : [no documentation found]
    ///
    /// - Returns: `DescribeKeyValueStoreOutput` : Metadata information about a Key Value Store.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access denied.
    /// - `ConflictException` : Resource is not in expected state.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : Resource was not found.
    public func describeKeyValueStore(input: DescribeKeyValueStoreInput) async throws -> DescribeKeyValueStoreOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeKeyValueStore")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudfront-keyvaluestore")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = OrchestratorBuilder<DescribeKeyValueStoreInput, DescribeKeyValueStoreOutput, SmithyHTTPAPI.SdkHttpRequest, SmithyHTTPAPI.HttpResponse>()
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<DescribeKeyValueStoreInput, DescribeKeyValueStoreOutput>(DescribeKeyValueStoreInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<DescribeKeyValueStoreInput, DescribeKeyValueStoreOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, kvsARN: input.kvsARN, region: config.region, useFIPS: config.useFIPS ?? false)
        context.attributes.set(key: AttributeKey<EndpointParams>(name: "EndpointParams"), value: endpointParams)
        builder.applyEndpoint(EndpointResolverMiddleware<DescribeKeyValueStoreOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<DescribeKeyValueStoreInput, DescribeKeyValueStoreOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<DescribeKeyValueStoreOutput>())
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<DescribeKeyValueStoreOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<DescribeKeyValueStoreOutput>(DescribeKeyValueStoreOutput.httpOutput(from:), DescribeKeyValueStoreOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<DescribeKeyValueStoreInput, DescribeKeyValueStoreOutput>(clientLogMode: config.clientLogMode))
        let op = builder.attributes(context)
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

    /// Performs the `GetKey` operation on the `CloudFrontKeyValueStore` service.
    ///
    /// Returns a key value pair.
    ///
    /// - Parameter GetKeyInput : [no documentation found]
    ///
    /// - Returns: `GetKeyOutput` : A key value pair.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access denied.
    /// - `ConflictException` : Resource is not in expected state.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : Resource was not found.
    public func getKey(input: GetKeyInput) async throws -> GetKeyOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getKey")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudfront-keyvaluestore")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = OrchestratorBuilder<GetKeyInput, GetKeyOutput, SmithyHTTPAPI.SdkHttpRequest, SmithyHTTPAPI.HttpResponse>()
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<GetKeyInput, GetKeyOutput>(GetKeyInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<GetKeyInput, GetKeyOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, kvsARN: input.kvsARN, region: config.region, useFIPS: config.useFIPS ?? false)
        context.attributes.set(key: AttributeKey<EndpointParams>(name: "EndpointParams"), value: endpointParams)
        builder.applyEndpoint(EndpointResolverMiddleware<GetKeyOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<GetKeyInput, GetKeyOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<GetKeyOutput>())
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<GetKeyOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<GetKeyOutput>(GetKeyOutput.httpOutput(from:), GetKeyOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<GetKeyInput, GetKeyOutput>(clientLogMode: config.clientLogMode))
        let op = builder.attributes(context)
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

    /// Performs the `ListKeys` operation on the `CloudFrontKeyValueStore` service.
    ///
    /// Returns a list of key value pairs.
    ///
    /// - Parameter ListKeysInput : [no documentation found]
    ///
    /// - Returns: `ListKeysOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access denied.
    /// - `ConflictException` : Resource is not in expected state.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : Resource was not found.
    /// - `ValidationException` : Validation failed.
    public func listKeys(input: ListKeysInput) async throws -> ListKeysOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listKeys")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudfront-keyvaluestore")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = OrchestratorBuilder<ListKeysInput, ListKeysOutput, SmithyHTTPAPI.SdkHttpRequest, SmithyHTTPAPI.HttpResponse>()
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<ListKeysInput, ListKeysOutput>(ListKeysInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<ListKeysInput, ListKeysOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, kvsARN: input.kvsARN, region: config.region, useFIPS: config.useFIPS ?? false)
        context.attributes.set(key: AttributeKey<EndpointParams>(name: "EndpointParams"), value: endpointParams)
        builder.applyEndpoint(EndpointResolverMiddleware<ListKeysOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<ListKeysInput, ListKeysOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<ListKeysOutput>())
        builder.serialize(ClientRuntime.QueryItemMiddleware<ListKeysInput, ListKeysOutput>(ListKeysInput.queryItemProvider(_:)))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<ListKeysOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<ListKeysOutput>(ListKeysOutput.httpOutput(from:), ListKeysOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<ListKeysInput, ListKeysOutput>(clientLogMode: config.clientLogMode))
        let op = builder.attributes(context)
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

    /// Performs the `PutKey` operation on the `CloudFrontKeyValueStore` service.
    ///
    /// Creates a new key value pair or replaces the value of an existing key.
    ///
    /// - Parameter PutKeyInput : A key value pair.
    ///
    /// - Returns: `PutKeyOutput` : Metadata information about a Key Value Store.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access denied.
    /// - `ConflictException` : Resource is not in expected state.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : Resource was not found.
    /// - `ServiceQuotaExceededException` : Limit exceeded.
    /// - `ValidationException` : Validation failed.
    public func putKey(input: PutKeyInput) async throws -> PutKeyOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putKey")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudfront-keyvaluestore")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = OrchestratorBuilder<PutKeyInput, PutKeyOutput, SmithyHTTPAPI.SdkHttpRequest, SmithyHTTPAPI.HttpResponse>()
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<PutKeyInput, PutKeyOutput>(PutKeyInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<PutKeyInput, PutKeyOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, kvsARN: input.kvsARN, region: config.region, useFIPS: config.useFIPS ?? false)
        context.attributes.set(key: AttributeKey<EndpointParams>(name: "EndpointParams"), value: endpointParams)
        builder.applyEndpoint(EndpointResolverMiddleware<PutKeyOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<PutKeyInput, PutKeyOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<PutKeyOutput>())
        builder.serialize(ClientRuntime.HeaderMiddleware<PutKeyInput, PutKeyOutput>(PutKeyInput.headerProvider(_:)))
        builder.interceptors.add(ContentTypeMiddleware<PutKeyInput, PutKeyOutput>(contentType: "application/json"))
        builder.serialize(ClientRuntime.BodyMiddleware<PutKeyInput, PutKeyOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: PutKeyInput.write(value:to:)))
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<PutKeyInput, PutKeyOutput>())
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<PutKeyOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<PutKeyOutput>(PutKeyOutput.httpOutput(from:), PutKeyOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<PutKeyInput, PutKeyOutput>(clientLogMode: config.clientLogMode))
        let op = builder.attributes(context)
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

    /// Performs the `UpdateKeys` operation on the `CloudFrontKeyValueStore` service.
    ///
    /// Puts or Deletes multiple key value pairs in a single, all-or-nothing operation.
    ///
    /// - Parameter UpdateKeysInput : [no documentation found]
    ///
    /// - Returns: `UpdateKeysOutput` : Metadata information about a Key Value Store.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access denied.
    /// - `ConflictException` : Resource is not in expected state.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : Resource was not found.
    /// - `ServiceQuotaExceededException` : Limit exceeded.
    /// - `ValidationException` : Validation failed.
    public func updateKeys(input: UpdateKeysInput) async throws -> UpdateKeysOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateKeys")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudfront-keyvaluestore")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = OrchestratorBuilder<UpdateKeysInput, UpdateKeysOutput, SmithyHTTPAPI.SdkHttpRequest, SmithyHTTPAPI.HttpResponse>()
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<UpdateKeysInput, UpdateKeysOutput>(UpdateKeysInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<UpdateKeysInput, UpdateKeysOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, kvsARN: input.kvsARN, region: config.region, useFIPS: config.useFIPS ?? false)
        context.attributes.set(key: AttributeKey<EndpointParams>(name: "EndpointParams"), value: endpointParams)
        builder.applyEndpoint(EndpointResolverMiddleware<UpdateKeysOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<UpdateKeysInput, UpdateKeysOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<UpdateKeysOutput>())
        builder.serialize(ClientRuntime.HeaderMiddleware<UpdateKeysInput, UpdateKeysOutput>(UpdateKeysInput.headerProvider(_:)))
        builder.interceptors.add(ContentTypeMiddleware<UpdateKeysInput, UpdateKeysOutput>(contentType: "application/json"))
        builder.serialize(ClientRuntime.BodyMiddleware<UpdateKeysInput, UpdateKeysOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: UpdateKeysInput.write(value:to:)))
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<UpdateKeysInput, UpdateKeysOutput>())
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<UpdateKeysOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<UpdateKeysOutput>(UpdateKeysOutput.httpOutput(from:), UpdateKeysOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<UpdateKeysInput, UpdateKeysOutput>(clientLogMode: config.clientLogMode))
        let op = builder.attributes(context)
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

}
