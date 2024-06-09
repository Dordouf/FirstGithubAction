Function New-File
{
  [CmdletBinding()]
  Param
  (
    [Parameter(Mandatory=$true)]
    [String]$FileName
  )

  $ErrorActionPreference = "Stop"

  Try
  {
    $fileCreated = New-Item -Path $FileName -ItemType File

    return $true
  }
  Catch
  {
    $err = $_.Exception.Message
    Throw "Error occured while New-File function : $err
  }
}
