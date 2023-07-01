$computerSystem = Get-WmiObject -Class Win32_ComputerSystem
if ($computerSystem.PartOfDomain) {
    Write-Output "Computer is joined to a domain."
} else {
    Write-Output "Computer is not joined to a domain."
}
