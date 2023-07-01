#Specify your domain name
$domain = "YourDomain.com"

#Specify the credential to join the domain
$user = "$domain\YourUsername"

#Get the password securely
$password = ConvertTo-SecureString "YourPassword" -AsPlainText -Force

#Create a credential object
$credential = New-Object System.Management.Automation.PSCredential($user, $password)

#Join the computer to the domain
Add-Computer -DomainName $domain -Credential $credential -Restart -Force
