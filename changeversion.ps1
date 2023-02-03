


$newVersion=$args[0]
function Set-CSProj-Version{
Param(
[parameter(Mandatory=$false)] [String] $filePath="$(get-location)\ASPBasicserver.csproj",
[parameter(Mandatory=$true)] [String] $newVersion
)
    $csprojfile=New-Object XML
    $csprojfile.Load($filePath)

    if ($csprojfile.Project.PropertyGroup.Version -eq $null){
        Write-Host "Version is null."
        $child = $csprojfile.CreateElement("Version")
        $csprojfile.Project.PropertyGroup.AppendChild($child) | out-null
    }
        $csprojfile.Project.PropertyGroup.Version = $newVersion
        $csprojfile.Save($filePath)
}
Set-CSProj-Version -newVersion $newVersion
