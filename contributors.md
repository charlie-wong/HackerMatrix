---
layout: default
title: Contrib
permalink: /contrib
---

<table>
    <thead>
        <tr>
            <th style="text-align: left">Nickname</th>
            <th style="text-align: left">Email</th>
            <th style="text-align: left">Github</th>
            <th style="text-align: left">Twitter</th>
        </tr>
    </thead>
    <tbody>
    {% for member in site.data.contributors %}
        <tr>
            <td style="text-align: left">{{ member.name }}</td>
            <td style="text-align: left"><a href="mailto:{{ member.email }}">{{ member.email }}</a></td>
            <td style="text-align: left"><a href="https://github.com/{{ member.github }}">{{ member.github }}</a></td>
            <td style="text-align: left"><a href="https://twitter.com/{{ member.twitter }}">{{ member.twitter }}</a></td>
        </tr>
    {% endfor %}
    </tbody>
</table>
