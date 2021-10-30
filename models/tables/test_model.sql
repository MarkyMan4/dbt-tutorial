{% set items = ["item1", "item2", "item3"] %}

select
    {% for item in items %}
        '{{ item }}' as {{ item }} {% if loop.index < items|length %},{% endif %}
    {% endfor %}