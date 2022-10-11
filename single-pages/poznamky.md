---
title: "Poznámky"
permalink: "/poznamky/"
layout: page
sitemap: false
nonindex: True
---

<article>
    <div class="archive-list">
        {% for post in site.posts %}
            {% if post.category == "Matfyz" or post.category == "Theology" %}
            <ul class="hfill">
                <li><a href="{{ post.url }}">{{ post.title }}</a></li>
                <li>[<a href="{{ post.url }}">{{ post.language }}</a>] <div class="archive-date">{{ post.date | date: "%d. %m. %Y" }}</div></li>
            </ul>
            {% endif %}
        {% endfor %}
    </div>
</article>

