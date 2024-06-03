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

public class MigrationHubConfigClient: Client {
    public static let clientName = "MigrationHubConfigClient"
    let client: ClientRuntime.SdkHttpClient
    let config: MigrationHubConfigClient.MigrationHubConfigClientConfiguration
    let serviceName = "MigrationHub Config"

    public required init(config: MigrationHubConfigClient.MigrationHubConfigClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try MigrationHubConfigClient.MigrationHubConfigClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await MigrationHubConfigClient.MigrationHubConfigClientConfiguration()
        self.init(config: config)
    }
}

extension MigrationHubConfigClient {
    public class MigrationHubConfigClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
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
            self.logger = telemetryProvider.loggerProvider.getLogger(name: MigrationHubConfigClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultMigrationHubConfigAuthSchemeResolver())
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultMigrationHubConfigAuthSchemeResolver())
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultMigrationHubConfigAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(MigrationHubConfigClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<MigrationHubConfigClient> {
        return ClientBuilder<MigrationHubConfigClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

public struct MigrationHubConfigClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MigrationHubConfigClient"
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

extension MigrationHubConfigClient {
    /// Performs the `CreateHomeRegionControl` operation on the `AWSMigrationHubMultiAccountService` service.
    ///
    /// This API sets up the home region for the calling account only.
    ///
    /// - Parameter CreateHomeRegionControlInput : [no documentation found]
    ///
    /// - Returns: `CreateHomeRegionControlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `DryRunOperation` : Exception raised to indicate that authorization of an action was successful, when the DryRun flag is set to true.
    /// - `InternalServerError` : Exception raised when an internal, configuration, or dependency error is encountered.
    /// - `InvalidInputException` : Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    /// - `ServiceUnavailableException` : Exception raised when a request fails due to temporary unavailability of the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func createHomeRegionControl(input: CreateHomeRegionControlInput) async throws -> CreateHomeRegionControlOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createHomeRegionControl")
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
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>(id: "createHomeRegionControl")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>(CreateHomeRegionControlInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<CreateHomeRegionControlOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<CreateHomeRegionControlOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>(xAmzTarget: "AWSMigrationHubMultiAccountService.CreateHomeRegionControl"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: CreateHomeRegionControlInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, CreateHomeRegionControlOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<CreateHomeRegionControlOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateHomeRegionControlOutput>(CreateHomeRegionControlOutput.httpOutput(from:), CreateHomeRegionControlOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `DeleteHomeRegionControl` operation on the `AWSMigrationHubMultiAccountService` service.
    ///
    /// This operation deletes the home region configuration for the calling account. The operation does not delete discovery or migration tracking data in the home region.
    ///
    /// - Parameter DeleteHomeRegionControlInput : [no documentation found]
    ///
    /// - Returns: `DeleteHomeRegionControlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerError` : Exception raised when an internal, configuration, or dependency error is encountered.
    /// - `InvalidInputException` : Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    /// - `ServiceUnavailableException` : Exception raised when a request fails due to temporary unavailability of the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func deleteHomeRegionControl(input: DeleteHomeRegionControlInput) async throws -> DeleteHomeRegionControlOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteHomeRegionControl")
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
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>(id: "deleteHomeRegionControl")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>(DeleteHomeRegionControlInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteHomeRegionControlOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<DeleteHomeRegionControlOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>(xAmzTarget: "AWSMigrationHubMultiAccountService.DeleteHomeRegionControl"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: DeleteHomeRegionControlInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteHomeRegionControlOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<DeleteHomeRegionControlOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteHomeRegionControlOutput>(DeleteHomeRegionControlOutput.httpOutput(from:), DeleteHomeRegionControlOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteHomeRegionControlInput, DeleteHomeRegionControlOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `DescribeHomeRegionControls` operation on the `AWSMigrationHubMultiAccountService` service.
    ///
    /// This API permits filtering on the ControlId and HomeRegion fields.
    ///
    /// - Parameter DescribeHomeRegionControlsInput : [no documentation found]
    ///
    /// - Returns: `DescribeHomeRegionControlsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerError` : Exception raised when an internal, configuration, or dependency error is encountered.
    /// - `InvalidInputException` : Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    /// - `ServiceUnavailableException` : Exception raised when a request fails due to temporary unavailability of the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func describeHomeRegionControls(input: DescribeHomeRegionControlsInput) async throws -> DescribeHomeRegionControlsOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeHomeRegionControls")
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
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>(id: "describeHomeRegionControls")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>(DescribeHomeRegionControlsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeHomeRegionControlsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<DescribeHomeRegionControlsOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>(xAmzTarget: "AWSMigrationHubMultiAccountService.DescribeHomeRegionControls"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: DescribeHomeRegionControlsInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeHomeRegionControlsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<DescribeHomeRegionControlsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeHomeRegionControlsOutput>(DescribeHomeRegionControlsOutput.httpOutput(from:), DescribeHomeRegionControlsOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetHomeRegion` operation on the `AWSMigrationHubMultiAccountService` service.
    ///
    /// Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call GetHomeRegion at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.
    ///
    /// - Parameter GetHomeRegionInput : [no documentation found]
    ///
    /// - Returns: `GetHomeRegionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerError` : Exception raised when an internal, configuration, or dependency error is encountered.
    /// - `InvalidInputException` : Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    /// - `ServiceUnavailableException` : Exception raised when a request fails due to temporary unavailability of the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    public func getHomeRegion(input: GetHomeRegionInput) async throws -> GetHomeRegionOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getHomeRegion")
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
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetHomeRegionInput, GetHomeRegionOutput>(id: "getHomeRegion")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetHomeRegionInput, GetHomeRegionOutput>(GetHomeRegionInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetHomeRegionInput, GetHomeRegionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetHomeRegionOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<GetHomeRegionInput, GetHomeRegionOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetHomeRegionOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetHomeRegionInput, GetHomeRegionOutput>(xAmzTarget: "AWSMigrationHubMultiAccountService.GetHomeRegion"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetHomeRegionInput, GetHomeRegionOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: GetHomeRegionInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetHomeRegionInput, GetHomeRegionOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<GetHomeRegionInput, GetHomeRegionOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetHomeRegionOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetHomeRegionOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetHomeRegionOutput>(GetHomeRegionOutput.httpOutput(from:), GetHomeRegionOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetHomeRegionInput, GetHomeRegionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
