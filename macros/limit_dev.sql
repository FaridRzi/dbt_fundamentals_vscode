{% macro limit_dev() %}
    {%- if target.name == "dev" -%}
        LIMIT 10
    {%- endif -%}
{% endmacro %}
