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

$rcas = Import-Csv ".\Rcas.csv" -Delimiter ";"

$rcasJson = $rcas | ForEach-Object {
    @{
        codigo = $_.CODRCA
        nome   = $_.NOME
    }
}

$rcasJson | ConvertTo-Json -Depth 10 | Out-File ".\rcas.json" -Encoding utf8

Write-Host "JSON gerado com sucesso!"