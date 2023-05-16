// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Lake Formation Defines the public endpoint for the Lake Formation service.
public protocol LakeFormationClientProtocol {
    /// Attaches one or more LF-tags to an existing resource.
    func addLFTagsToResource(input: AddLFTagsToResourceInput) async throws -> AddLFTagsToResourceOutputResponse
    /// Allows a caller to assume an IAM role decorated as the SAML user specified in the SAML assertion included in the request. This decoration allows Lake Formation to enforce access policies against the SAML users and groups. This API operation requires SAML federation setup in the caller’s account as it can only be called with valid SAML assertions. Lake Formation does not scope down the permission of the assumed role. All permissions attached to the role via the SAML federation setup will be included in the role session. This decorated role is expected to access data in Amazon S3 by getting temporary access from Lake Formation which is authorized via the virtual API GetDataAccess. Therefore, all SAML roles that can be assumed via AssumeDecoratedRoleWithSAML must at a minimum include lakeformation:GetDataAccess in their role policies. A typical IAM policy attached to such a role would look as follows:
    func assumeDecoratedRoleWithSAML(input: AssumeDecoratedRoleWithSAMLInput) async throws -> AssumeDecoratedRoleWithSAMLOutputResponse
    /// Batch operation to grant permissions to the principal.
    func batchGrantPermissions(input: BatchGrantPermissionsInput) async throws -> BatchGrantPermissionsOutputResponse
    /// Batch operation to revoke permissions from the principal.
    func batchRevokePermissions(input: BatchRevokePermissionsInput) async throws -> BatchRevokePermissionsOutputResponse
    /// Attempts to cancel the specified transaction. Returns an exception if the transaction was previously committed.
    func cancelTransaction(input: CancelTransactionInput) async throws -> CancelTransactionOutputResponse
    /// Attempts to commit the specified transaction. Returns an exception if the transaction was previously aborted. This API action is idempotent if called multiple times for the same transaction.
    func commitTransaction(input: CommitTransactionInput) async throws -> CommitTransactionOutputResponse
    /// Creates a data cell filter to allow one to grant access to certain columns on certain rows.
    func createDataCellsFilter(input: CreateDataCellsFilterInput) async throws -> CreateDataCellsFilterOutputResponse
    /// Creates an LF-tag with the specified name and values.
    func createLFTag(input: CreateLFTagInput) async throws -> CreateLFTagOutputResponse
    /// Deletes a data cell filter.
    func deleteDataCellsFilter(input: DeleteDataCellsFilterInput) async throws -> DeleteDataCellsFilterOutputResponse
    /// Deletes the specified LF-tag given a key name. If the input parameter tag key was not found, then the operation will throw an exception. When you delete an LF-tag, the LFTagPolicy attached to the LF-tag becomes invalid. If the deleted LF-tag was still assigned to any resource, the tag policy attach to the deleted LF-tag will no longer be applied to the resource.
    func deleteLFTag(input: DeleteLFTagInput) async throws -> DeleteLFTagOutputResponse
    /// For a specific governed table, provides a list of Amazon S3 objects that will be written during the current transaction and that can be automatically deleted if the transaction is canceled. Without this call, no Amazon S3 objects are automatically deleted when a transaction cancels. The Glue ETL library function write_dynamic_frame.from_catalog() includes an option to automatically call DeleteObjectsOnCancel before writes. For more information, see [Rolling Back Amazon S3 Writes](https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes).
    func deleteObjectsOnCancel(input: DeleteObjectsOnCancelInput) async throws -> DeleteObjectsOnCancelOutputResponse
    /// Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.
    func deregisterResource(input: DeregisterResourceInput) async throws -> DeregisterResourceOutputResponse
    /// Retrieves the current data access role for the given resource registered in Lake Formation.
    func describeResource(input: DescribeResourceInput) async throws -> DescribeResourceOutputResponse
    /// Returns the details of a single transaction.
    func describeTransaction(input: DescribeTransactionInput) async throws -> DescribeTransactionOutputResponse
    /// Indicates to the service that the specified transaction is still active and should not be treated as idle and aborted. Write transactions that remain idle for a long period are automatically aborted unless explicitly extended.
    func extendTransaction(input: ExtendTransactionInput) async throws -> ExtendTransactionOutputResponse
    /// Returns a data cells filter.
    func getDataCellsFilter(input: GetDataCellsFilterInput) async throws -> GetDataCellsFilterOutputResponse
    /// Retrieves the list of the data lake administrators of a Lake Formation-managed data lake.
    func getDataLakeSettings(input: GetDataLakeSettingsInput) async throws -> GetDataLakeSettingsOutputResponse
    /// Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables if the catalog is encrypted.
    func getEffectivePermissionsForPath(input: GetEffectivePermissionsForPathInput) async throws -> GetEffectivePermissionsForPathOutputResponse
    /// Returns an LF-tag definition.
    func getLFTag(input: GetLFTagInput) async throws -> GetLFTagOutputResponse
    /// Returns the state of a query previously submitted. Clients are expected to poll GetQueryState to monitor the current state of the planning before retrieving the work units. A query state is only visible to the principal that made the initial call to StartQueryPlanning.
    func getQueryState(input: GetQueryStateInput) async throws -> GetQueryStateOutputResponse
    /// Retrieves statistics on the planning and execution of a query.
    func getQueryStatistics(input: GetQueryStatisticsInput) async throws -> GetQueryStatisticsOutputResponse
    /// Returns the LF-tags applied to a resource.
    func getResourceLFTags(input: GetResourceLFTagsInput) async throws -> GetResourceLFTagsOutputResponse
    /// Returns the set of Amazon S3 objects that make up the specified governed table. A transaction ID or timestamp can be specified for time-travel queries.
    func getTableObjects(input: GetTableObjectsInput) async throws -> GetTableObjectsOutputResponse
    /// This API is identical to GetTemporaryTableCredentials except that this is used when the target Data Catalog resource is of type Partition. Lake Formation restricts the permission of the vended credentials with the same scope down policy which restricts access to a single Amazon S3 prefix.
    func getTemporaryGluePartitionCredentials(input: GetTemporaryGluePartitionCredentialsInput) async throws -> GetTemporaryGluePartitionCredentialsOutputResponse
    /// Allows a caller in a secure environment to assume a role with permission to access Amazon S3. In order to vend such credentials, Lake Formation assumes the role associated with a registered location, for example an Amazon S3 bucket, with a scope down policy which restricts the access to a single prefix.
    func getTemporaryGlueTableCredentials(input: GetTemporaryGlueTableCredentialsInput) async throws -> GetTemporaryGlueTableCredentialsOutputResponse
    /// Returns the work units resulting from the query. Work units can be executed in any order and in parallel.
    func getWorkUnitResults(input: GetWorkUnitResultsInput) async throws -> GetWorkUnitResultsOutputResponse
    /// Retrieves the work units generated by the StartQueryPlanning operation.
    func getWorkUnits(input: GetWorkUnitsInput) async throws -> GetWorkUnitsOutputResponse
    /// Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. For information about permissions, see [Security and Access Control to Metadata and Data](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
    func grantPermissions(input: GrantPermissionsInput) async throws -> GrantPermissionsOutputResponse
    /// Lists all the data cell filters on a table.
    func listDataCellsFilter(input: ListDataCellsFilterInput) async throws -> ListDataCellsFilterOutputResponse
    /// Lists LF-tags that the requester has permission to view.
    func listLFTags(input: ListLFTagsInput) async throws -> ListLFTagsOutputResponse
    /// Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see [Security and Access Control to Metadata and Data](https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
    func listPermissions(input: ListPermissionsInput) async throws -> ListPermissionsOutputResponse
    /// Lists the resources registered to be managed by the Data Catalog.
    func listResources(input: ListResourcesInput) async throws -> ListResourcesOutputResponse
    /// Returns the configuration of all storage optimizers associated with a specified table.
    func listTableStorageOptimizers(input: ListTableStorageOptimizersInput) async throws -> ListTableStorageOptimizersOutputResponse
    /// Returns metadata about transactions and their status. To prevent the response from growing indefinitely, only uncommitted transactions and those available for time-travel queries are returned. This operation can help you identify uncommitted transactions or to get information about transactions.
    func listTransactions(input: ListTransactionsInput) async throws -> ListTransactionsOutputResponse
    /// Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation. For more information on admin privileges, see [Granting Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html). This API replaces the current list of data lake admins with the new list being passed. To add an admin, fetch the current list and add the new admin to that list and pass that list in this API.
    func putDataLakeSettings(input: PutDataLakeSettingsInput) async throws -> PutDataLakeSettingsOutputResponse
    /// Registers the resource as managed by the Data Catalog. To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy. The following request registers a new location and gives Lake Formation permission to use the service-linked role to access that location. ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true If UseServiceLinkedRole is not set to true, you must provide or set the RoleArn: arn:aws:iam::12345:role/my-data-access-role
    func registerResource(input: RegisterResourceInput) async throws -> RegisterResourceOutputResponse
    /// Removes an LF-tag from the resource. Only database, table, or tableWithColumns resource are allowed. To tag columns, use the column inclusion list in tableWithColumns to specify column input.
    func removeLFTagsFromResource(input: RemoveLFTagsFromResourceInput) async throws -> RemoveLFTagsFromResourceOutputResponse
    /// Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.
    func revokePermissions(input: RevokePermissionsInput) async throws -> RevokePermissionsOutputResponse
    /// This operation allows a search on DATABASE resources by TagCondition. This operation is used by admins who want to grant user permissions on certain TagConditions. Before making a grant, the admin can use SearchDatabasesByTags to find all resources where the given TagConditions are valid to verify whether the returned resources can be shared.
    func searchDatabasesByLFTags(input: SearchDatabasesByLFTagsInput) async throws -> SearchDatabasesByLFTagsOutputResponse
    /// This operation allows a search on TABLE resources by LFTags. This will be used by admins who want to grant user permissions on certain LF-tags. Before making a grant, the admin can use SearchTablesByLFTags to find all resources where the given LFTags are valid to verify whether the returned resources can be shared.
    func searchTablesByLFTags(input: SearchTablesByLFTagsInput) async throws -> SearchTablesByLFTagsOutputResponse
    /// Submits a request to process a query statement. This operation generates work units that can be retrieved with the GetWorkUnits operation as soon as the query state is WORKUNITS_AVAILABLE or FINISHED.
    func startQueryPlanning(input: StartQueryPlanningInput) async throws -> StartQueryPlanningOutputResponse
    /// Starts a new transaction and returns its transaction ID. Transaction IDs are opaque objects that you can use to identify a transaction.
    func startTransaction(input: StartTransactionInput) async throws -> StartTransactionOutputResponse
    /// Updates a data cell filter.
    func updateDataCellsFilter(input: UpdateDataCellsFilterInput) async throws -> UpdateDataCellsFilterOutputResponse
    /// Updates the list of possible values for the specified LF-tag key. If the LF-tag does not exist, the operation throws an EntityNotFoundException. The values in the delete key values will be deleted from list of possible values. If any value in the delete key values is attached to a resource, then API errors out with a 400 Exception - "Update not allowed". Untag the attribute before deleting the LF-tag key's value.
    func updateLFTag(input: UpdateLFTagInput) async throws -> UpdateLFTagOutputResponse
    /// Updates the data access role used for vending access to the given (registered) resource in Lake Formation.
    func updateResource(input: UpdateResourceInput) async throws -> UpdateResourceOutputResponse
    /// Updates the manifest of Amazon S3 objects that make up the specified governed table.
    func updateTableObjects(input: UpdateTableObjectsInput) async throws -> UpdateTableObjectsOutputResponse
    /// Updates the configuration of the storage optimizers for a table.
    func updateTableStorageOptimizer(input: UpdateTableStorageOptimizerInput) async throws -> UpdateTableStorageOptimizerOutputResponse
}

public protocol LakeFormationClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum LakeFormationClientTypes {}