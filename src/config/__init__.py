from os import environ


ENVIRONMENTS = ['live', 'dev']
env_key = environ.get('HARVESTER_ENV')

if env_key and env_key not in ENVIRONMENTS:
    raise Exception(u'Invalid environment: {}'.format(u'|'.join(ENVIRONMENTS)))


if env_key == 'live':
    from config.live import Configuration
else:
    from config.dev import Configuration


config = Configuration
