-- this tests checks a lending base flashloans model for every row in a seed file.
-- actual implementation in macros/test-helpers/check_seed.sql
{% test check_lending_base_flashloans_seed(model, seed_file, filter=None) %}

    {%- set seed_check_columns = ['block_number', 'recipient', 'amount'] -%}
    {%- set seed_matching_columns = ['tx_hash', 'evt_index'] -%}

    {{ check_seed_macro(model,seed_file,seed_matching_columns,seed_check_columns,filter) }}

{% endtest %}
