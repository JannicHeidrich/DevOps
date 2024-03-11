$iotHubName = "JannicHus2Hubp6alic2i4c6ha"
$storageAccountName = "jannichus2p6alic2i4c6ha"
$deviceId = "TestingDevice"
$message = "Testing this Message"
$containerName = "messages"

$destinationPath = "UserStorys\Two_Three\test.json"

function SendAndTestMessageToDev {
    Write-Host "Sending Message to Dev environment"

    # Getting the time of sending
    $date = Get-Date
    $minutes = $date.Minute

    # Sending Message
    az iot device send-d2c-message --hub-name $iotHubName --device-id $deviceId --data $message

    Write-Host "Testing if Message was Delivered Successfully"

    # Clearing file
    Clear-Content -Path $destinationPath

    # Downloading blob to file
    az storage blob download --account-name $storageAccountName --container-name $containerName --name ("$minutes.json") --file $destinationPath

    # Getting the content of the blob from File
    $string = Get-Content -Path $destinationPath -Raw

    # Checking if file contains the message
    if ($string.Equals('') -or $string.Equals($null)){
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }
}

# Call the function
SendAndTestMessageToDev
