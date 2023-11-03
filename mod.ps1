# 文件路径
$file = "C:\Clasharp\Clasharp\Clasharp.csproj"

# 读取文件内容
$content = Get-Content $file

# 插入 <PublishAot>true</PublishAot>

$content = $content -replace "<Product>Clasharp</Product>", "<Product>Clasharp</Product>`r`n<PublishAot>true</PublishAot>"

# 修改 <TargetFramework>net7.0</TargetFramework> 中的 7.0 为 8.0
$content = $content -replace "<TargetFramework>net7\.0</TargetFramework>", "<TargetFramework>net8.0</TargetFramework>"

# 写回文件
Set-Content -Path $file -Value $content

# 替换7.0.0为8.0
# 文件路径
$file = "C:\Clasharp\global.json"

# 读取文件内容
$content = Get-Content $file

$content = $content -replace "7.0.0", "8.0"

# 写回文件
Set-Content -Path $file -Value $content