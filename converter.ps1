$produtos = Import-Csv ".\produtos.csv"
$produtos | ConvertTo-Json | Out-File ".\produtos.json" -Encoding utf8

$clientes = Import-Csv ".\clientes.csv"
$clientes | ConvertTo-Json | Out-File ".\clientes.json" -Encoding utf8

Write-Host "JSON gerado com sucesso!"