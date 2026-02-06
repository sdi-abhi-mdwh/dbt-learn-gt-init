{# this is a commented section.
{% for j in range(5) %}
    select {{j}} as number {% if not loop.last %} union all {% endif %}
{% endfor %}


{% set str_1 = 'Cool beans!' %}
{{str_1}}

#}

{% set animals = ['cat', 'dog', 'bird', 'fish'] %}


{% for animal in animals %}
    {{ animal }} is number {{loop.index}}
{% endfor %}