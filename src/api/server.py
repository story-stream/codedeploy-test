from config import config
from flask import (
    Flask,
    jsonify
)

class Server(object):

    def __init__(self):
        self._app = Flask('api', instance_relative_config=True)
        self._app.config.from_object(config)

        self.rules = {
            '/': {
                'view_func': self.index,
                'methods': ['GET']
            },
            '/aitch': {
                'view_func': self.aitch,
                'methods': ['GET']
            }

        }

        for pattern, options in self.rules.iteritems():
            self._app.add_url_rule(pattern, **options)

    def app(self):
        """
        Returns a construction Flask application.
        :return: A Flask application.
        """
        return self._app

    def config(self):
        return self._app.config

    def index(self):
        return jsonify({
            'system': self._app.config['PLATFORM'],
            'message': 'ping'
        })

    def aitch(self):
        return jsonify({
            'system': self._app.config['PLATFORM'],
            'message': 'H is less than aware'
        })
