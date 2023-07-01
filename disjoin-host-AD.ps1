#Specify the credential to disjoin the domain
$user = "YourLocalAdminUsername"

#Get the password securely
$password = ConvertTo-SecureString "YourLocalAdminPassword" -AsPlainText -Force

#Create a credential object
$credential = New-Object System.Management.Automation.PSCredential($user, $password)

#Disjoin the computer from the domain
Remove-Computer -Credential $credential -Restart -Force
