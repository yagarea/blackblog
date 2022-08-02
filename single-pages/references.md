---
title: "References"
permalink: "/ref/"
layout: page
---

<table>
	{% for ref in site.references %}
  	<tr>
    	<td>
    		<a href="{{ ref.url }}">
    			<img src="/assets/icons/{{ ref.icon }}" alt="{{ ref.title }}" style="max-height: 100px; max-width: auto;" />
    		</a>
    	</td>
    	<td>
    		<a href="{{ ref.url }}"><h2>{{ ref.title }}</h2></a>
    		{% if ref.note != null and ref.note != "" %}
				{{ ref.note }}
    		{% endif %}
    	</td>
  	</tr>
  {% endfor %}
</table>
