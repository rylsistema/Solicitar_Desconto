$produtos = Import-Csv ".\Produtos.csv" -Delimiter ";"

$produtosJson = $produtos | ForEach-Object {
    @{
        codigo = $_.CODPROD
        nome   = $_.DESCRICAO
    }
}

$produtosJson | ConvertTo-Json -Depth 10 | Out-File ".\produtos.json" -Encoding utf8


$clientes = Import-Csv ".\Clientes.csv" -Delimiter ";"

$clientesJson = $clientes | ForEach-Object {
    @{
        codigo = $_.CODCLI
        nome   = $_.FANTASIA
    }
}

$clientesJson | ConvertTo-Json -Depth 10 | Out-File ".\clientes.json" -Encoding utf8

Write-Host "JSON gerado com sucesso!"