$From = "taher.jaleel.contractor@pepsico.com"
$To = "srinidhi.p.hegde@accenture.com"
$SMTPServer = "planrr.corp.pep.pvt"
$SMTPPort = "25"
$Username = "taher.jaleel.contractor@pepsico.com"
$subject = "Deployment Completed"
$body = "Deployment Completed!! Please Check Logs"

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $false
$smtp.UseDefaultCredentials = $true

 $PackageNamer = Read-Host -Prompt 'Enter the package Name'


$file1 = Test-Path D:\Accenture\CAS101NAFT1Test\Deployment\Update\Log\*$PackageName* 


$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$Count = 0
while ($Count -eq 0)
{
    
    If ($file1)
    {  
        $Count++

         $smtp.Send($From, $To, $subject, $body);
    }

}