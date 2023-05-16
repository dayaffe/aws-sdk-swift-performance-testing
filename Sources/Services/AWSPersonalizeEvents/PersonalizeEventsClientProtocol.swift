// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon Personalize can consume real-time user event data, such as stream or click data, and use it for model training either alone or combined with historical data. For more information see [Recording Events](https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html).
public protocol PersonalizeEventsClientProtocol {
    /// Records user interaction event data. For more information see [Recording Events](https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html).
    func putEvents(input: PutEventsInput) async throws -> PutEventsOutputResponse
    /// Adds one or more items to an Items dataset. For more information see [Importing Items Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).
    func putItems(input: PutItemsInput) async throws -> PutItemsOutputResponse
    /// Adds one or more users to a Users dataset. For more information see [Importing Users Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).
    func putUsers(input: PutUsersInput) async throws -> PutUsersOutputResponse
}

public protocol PersonalizeEventsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum PersonalizeEventsClientTypes {}