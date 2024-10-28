#!/bin/bash
echo inicializando o jupyter no link: http://127.0.0.1:$PORTA_JUPYTER/lab?token=$TOKEN_JUPYTER

jupyter lab --no-browser \
            --ip=0.0.0.0 \
            --port $PORTA_JUPYTER \
            --IdentityProvider.token=$TOKEN_JUPYTER \
            --ServerApp.terminado_settings='{"shell_command": ["fish"]}' \
            --allow-root