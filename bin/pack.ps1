
$version = "1.0.0.0"
$outdir = ".\pkgs"

if (!(Test-Path -path $outdir)) {New-Item $outdir -Type Directory | Out-Null}

ls specs\ | foreach {
	.\bin\nuget pack $_.FullName -Version $version -OutputDirectory $outdir -BasePath .
}