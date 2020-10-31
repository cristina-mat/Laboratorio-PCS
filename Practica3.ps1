$Ligas = "https://www.liverpool.com.mx","http://www.fcfm.uanl.mx","https://www.thehersheycompany.com","https://www.shein.com.mx","https://www.uanl.mx"

function Links {
    foreach($i in $Ligas){
        $url = Invoke-WebRequest -uri "$i"
        #write-host $url
        $ENCODED = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($url)) 
        echo $ENCODED > (ni Link$j-Encoded.txt -ItemType File)
        $DECODED = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($ENCODED))
        echo $DECODED > (ni Link$j-Decoded.txt -ItemType File)
        $j = 1+$j
    }
}

Links
dir -Path . | % {if ($.Extension -like ".txt") {Write-Host -ForegroundColor Green $.Name}}
