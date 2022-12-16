with
    source_transportadoras as (
        select
            cast(shipper_id as int) as id_fornecedor
            , cast(company_name as string) as nome_do_fornecedor
            , cast(phone as string) as telefone
        from {{ source('erp','shippers') }}
    )
select *
from source_transportadoras