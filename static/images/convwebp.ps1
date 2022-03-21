$now = Get-Date
Get-ChildItem | ? {
  ($now - $_.LastWriteTime).TotalHours -le 1
} | % {
  D:\sample\static\images\libwebp-1.2.2-windows-x64\libwebp-1.2.2-windows-x64\bin\cwebp.exe $_.Name -o $($_.BaseName + ".webp")
}