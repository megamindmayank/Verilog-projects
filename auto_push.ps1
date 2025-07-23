cd "C:\Users\DK2012TX\verilogprojs"
git add .
$timestamp = Get-Date -Format "dd-MM-yyyy HH:mm:ss"
git commit -m "Auto update on $timestamp"
git push origin main
