$newVersion=$args[0]
function Set-CSProj-Version{
Param(
[parameter(Mandatory=$false)] [String] $filePath="$(get-location)/ASPBasicserver.csproj",
[parameter(Mandatory=$false)] [String] $newVersion
)
    $csprojfile=New-Object XML
    $csprojfile.Load($filePath)

    if ($csprojfile.Project.PropertyGroup.Version -eq $null){
        Write-Host "Version is null."
        $child = $csprojfile.CreateElement("Version")
        $csprojfile.Project.PropertyGroup.AppendChild($child) | out-null
        write-host $csprojfile.Project.PropertyGroup.Version
        $csprojfile.Project.PropertyGroup.Version = $newVersion
        $csprojfile.Save($filePath)
    }
    else {
        $v=[version]$csprojfile.Project.PropertyGroup.Version
        $newVersion = "$($v.Major).$($v.Minor).$($v.Build).$($v.Revision + 1)"
        $csprojfile.Project.PropertyGroup.Version = $newVersion
        $csprojfile.Save($filePath)
        }

}
Set-CSProj-Version -newVersion $newVersion
