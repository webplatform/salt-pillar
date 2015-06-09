bots:
  logger:
{% if grains['level'] == 'production' %}
    nickname: wp-logger
    channel: webplatform
{% else %}
    nickname: wp-logger2
    channel: webplatform-bot
{% endif %}

