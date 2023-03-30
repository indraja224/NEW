[xml]$file=Get-Content -Path "C:\Users\PINDRAJA\OneDrive - Capgemini\Desktop\XML\peoplenew.xml"
$file.people.person| ForEach-Object {
$name=$_.name
Write-Output "the person name of $($_.name) and age of $($_.age)"


}

### Accessing an XML File

# Method -01

$xmlobj=New-Object System.Xml.XmlDocument
$file=Resolve-Path ("C:\Users\PINDRAJA\OneDrive - Capgemini\Desktop\XML\people.xml")
$xmlobj.Load($file)

## 2nd Methods
[xml]$file=Get-Content -Path ""


$file=[xml](Get-Content -Path "")

## Accesing XML with XML Object

$people=$file.SelectNodes("//people")
$persons=$file.SelectNodes("//people//person")
$file.SelectSingleNode("people//person[1]//name")

###   Accessing XML containing namespaces with XPath


