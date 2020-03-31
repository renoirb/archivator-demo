<h1>Archives</h1>
<ul>
{% for archived in site.archives %}
  <li>{{ archived.title }}</li>
{% endfor %}
</ul>
