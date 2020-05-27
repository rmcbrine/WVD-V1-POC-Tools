
Install-Module AzureAD

Import-Module AzureAD
$aadContext = Connect-AzureAD
$svcPrincipal = New-AzureADApplication -AvailableToOtherTenants $true -DisplayName "Windows Virtual Desktop Svc Principal"
$svcPrincipalCreds = New-AzureADApplicationPasswordCredential -ObjectId $svcPrincipal.ObjectId

#Output Password for Service Principal:
$svcPrincipalCreds.Value

#Output AAD Tenant GUID for Service Principal:
$aadContext.TenantId.Guid

#Output App ID for Service Principal:
$svcPrincipal.AppId

$myTenantName = "East2-WVD-V1-PRD"
New-RdsRoleAssignment -RoleDefinitionName "RDS Owner" -ApplicationId $svcPrincipal.AppId -TenantName $myTenantName