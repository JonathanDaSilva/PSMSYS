function Invoke-MSYS
{
  param(
    [Parameter(Mandatory=$True,Position=1)]
    [String]$name,
    [Parameter(Mandatory=$True,Position=2)]
    $arguments
  )
  $path    = $(Get-Location).Path.Split(':')
  $path[0] = "/$($path[0].ToLower())"
  $path    = $path -join ''
  $path    = $path -replace '\\', '/'
  $arg     = $arguments -join ' '


  C:\msys64\usr\bin\bash.exe --login -c "cd $path; $name $arg"
}


Export-ModuleMember Invoke-MSYS
