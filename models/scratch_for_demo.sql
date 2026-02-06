{# this is a commented section.
{% for j in range(5) %}
    select {{j}} as number {% if not loop.last %} union all {% endif %}
{% endfor %}


{% set str_1 = 'Cool beans!' %}
{{str_1}}

#}

{%- set animals = ['cat', 'dog', 'bird', 'fish'] -%}

{#adding "-" after and before the "%" helps in reducing the number of white space lines in the output#}
{%- for animal in animals -%}
    {{ animal }} is number {{loop.index}}
{% endfor %}

{# Defining a dictionary #}

{% set dict = {
    'word' : 'data',
    'part_of_speech' : 'noun',
    'definition' : 'the building block of life'
}
%}

{{ dict['word'] }} is a {{ dict['part_of_speech'] }} and it is defined as {{ dict['definition'] }}