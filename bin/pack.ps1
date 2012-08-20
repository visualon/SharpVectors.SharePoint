
$version = "1.0.0.0"
$outdir = ".\pkgs"

if (!(Test-Path -path $outdir)) {New-Item $outdir -Type Directory | Out-Null}

ls *.nuspec | foreach { .\bin\nuget pack $_.Name -Version $version -OutputDirectory $outdir }