# Get the directory of the script
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Define the paths for the code and img directories
$codeDir = Join-Path -Path $scriptDir -ChildPath "code"
$imgDir = Join-Path -Path $scriptDir -ChildPath "img"

# Create the img directory if it doesn't exist
if (-not (Test-Path -Path $imgDir)) {
    New-Item -ItemType Directory -Path $imgDir
}

# Get all the .puml files in the code directory
$pumlFiles = Get-ChildItem -Path $codeDir -Filter "*.puml"

# Define the path to the plantuml.jar file
$plantUmlJar = Join-Path -Path $scriptDir -ChildPath "plantuml.jar"

# Iterate through each .puml file and generate the image
foreach ($file in $pumlFiles) {
    $filePath = $file.FullName
    $command = "java -jar `"$plantUmlJar`" -charset UTF-8 -o `"$imgDir`" `"$filePath`""
    Write-Host "Executing: $command"
    Invoke-Expression $command
}

Write-Host "Diagram generation complete."
