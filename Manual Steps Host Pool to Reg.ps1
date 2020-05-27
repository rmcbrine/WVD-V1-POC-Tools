

$SubGUID = "698f872a-dddf-403c-b04e-fd432b405cb5"
$SubGUID
$AADGUID = "26323443-7c91-49e0-bdc2-a4ceac7d7dbb"
$AADGUID 
$WVDTenantName = "East2-WVD-V1-PRD"
$WVDTenantName
$HostPoolNameDesktops = "WVD-V1-East2-DeskHostPool"
$HostPoolNameDesktops
$HostPoolNameApps = "WVD-V1-East2-AppHostPool"
$HostPoolNameApps
$AppGroupName = "WVDV1-East2-AppGroup"
$AppGroupName
$ResourceGroupName = "East2-PRD-WVDv1"

New-RdsHostPool -TenantName $WVDTenantName -Name $HostPoolNameDesktops

New-RdsRegistrationInfo -TenantName $WVDTenantName -HostPoolName $HostPoolNameDesktops -ExpirationHours 48 

Export-RdsRegistrationInfo -TenantName $WVDTenantName -HostPoolName $HostPoolNameDesktops | Select-Object -ExpandProperty Token > c:\scratch\registrationtoken2.txt

https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWrmXv

https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWrxrH