{%- macro cents_to_dollars(amount, decimals=2) -%}
    round({{ amount }}, {{ decimals }}) / 100
{%- endmacro -%}