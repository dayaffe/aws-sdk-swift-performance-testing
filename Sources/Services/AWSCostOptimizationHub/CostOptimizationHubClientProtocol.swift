// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// You can use the Cost Optimization Hub API to programmatically identify, filter, aggregate, and quantify savings for your cost optimization recommendations across multiple Amazon Web Services Regions and Amazon Web Services accounts in your organization. The Cost Optimization Hub API provides the following endpoint:
///
/// * https://cost-optimization-hub.us-east-1.amazonaws.com
public protocol CostOptimizationHubClientProtocol {
    /// Performs the `GetPreferences` operation on the `CostOptimizationHubService` service.
    ///
    /// Returns a set of preferences for an account in order to add account-specific preferences into the service. These preferences impact how the savings associated with recommendations are presented—estimated savings after discounts or estimated savings before discounts, for example.
    ///
    /// - Parameter GetPreferencesInput : [no documentation found]
    ///
    /// - Returns: `GetPreferencesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to use this operation with the given parameters.
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func getPreferences(input: GetPreferencesInput) async throws -> GetPreferencesOutput
    /// Performs the `GetRecommendation` operation on the `CostOptimizationHubService` service.
    ///
    /// Returns both the current and recommended resource configuration and the estimated cost impact for a recommendation. The recommendationId is only valid for up to a maximum of 24 hours as recommendations are refreshed daily. To retrieve the recommendationId, use the ListRecommendations API.
    ///
    /// - Parameter GetRecommendationInput : [no documentation found]
    ///
    /// - Returns: `GetRecommendationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to use this operation with the given parameters.
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func getRecommendation(input: GetRecommendationInput) async throws -> GetRecommendationOutput
    /// Performs the `ListEnrollmentStatuses` operation on the `CostOptimizationHubService` service.
    ///
    /// Retrieves the enrollment status for an account. It can also return the list of accounts that are enrolled under the organization.
    ///
    /// - Parameter ListEnrollmentStatusesInput : [no documentation found]
    ///
    /// - Returns: `ListEnrollmentStatusesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to use this operation with the given parameters.
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listEnrollmentStatuses(input: ListEnrollmentStatusesInput) async throws -> ListEnrollmentStatusesOutput
    /// Performs the `ListRecommendations` operation on the `CostOptimizationHubService` service.
    ///
    /// Returns a list of recommendations.
    ///
    /// - Parameter ListRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `ListRecommendationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to use this operation with the given parameters.
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listRecommendations(input: ListRecommendationsInput) async throws -> ListRecommendationsOutput
    /// Performs the `ListRecommendationSummaries` operation on the `CostOptimizationHubService` service.
    ///
    /// Returns a concise representation of savings estimates for resources. Also returns de-duped savings across different types of recommendations. The following filters are not supported for this API: recommendationIds, resourceArns, and resourceIds.
    ///
    /// - Parameter ListRecommendationSummariesInput : [no documentation found]
    ///
    /// - Returns: `ListRecommendationSummariesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to use this operation with the given parameters.
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listRecommendationSummaries(input: ListRecommendationSummariesInput) async throws -> ListRecommendationSummariesOutput
    /// Performs the `UpdateEnrollmentStatus` operation on the `CostOptimizationHubService` service.
    ///
    /// Updates the enrollment (opt in and opt out) status of an account to the Cost Optimization Hub service. If the account is a management account of an organization, this action can also be used to enroll member accounts of the organization. You must have the appropriate permissions to opt in to Cost Optimization Hub and to view its recommendations. When you opt in, Cost Optimization Hub automatically creates a service-linked role in your account to access its data.
    ///
    /// - Parameter UpdateEnrollmentStatusInput : [no documentation found]
    ///
    /// - Returns: `UpdateEnrollmentStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to use this operation with the given parameters.
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func updateEnrollmentStatus(input: UpdateEnrollmentStatusInput) async throws -> UpdateEnrollmentStatusOutput
    /// Performs the `UpdatePreferences` operation on the `CostOptimizationHubService` service.
    ///
    /// Updates a set of preferences for an account in order to add account-specific preferences into the service. These preferences impact how the savings associated with recommendations are presented.
    ///
    /// - Parameter UpdatePreferencesInput : [no documentation found]
    ///
    /// - Returns: `UpdatePreferencesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to use this operation with the given parameters.
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func updatePreferences(input: UpdatePreferencesInput) async throws -> UpdatePreferencesOutput
}

public enum CostOptimizationHubClientTypes {}