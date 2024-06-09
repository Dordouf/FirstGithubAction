Function New-File
{
  [CmdletBinding()]
  Param
  (
    [Parameter(Mandatory=$true)]
    [String]$FilePath
  )

  $ErrorActionPreference = "Stop"

  Try
  {
    $fileCreated = New-Item -Path $FilePath -ItemType File

    return $true
  }
  Catch
  {
    $err = $_.Exception.Message
    return $false
    #Throw "Error occured while New-File function : $err
  }
}
