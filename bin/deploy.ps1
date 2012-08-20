
$pkgs = ".\pkgs"
$dest = "\\sc03\nuget"

if (!(Test-Path -path $pkgs))
{
	New-Item $pkgs -Type Directory | Out-Null
}

Copy-Item $pkgs\*.nupkg $dest -Force