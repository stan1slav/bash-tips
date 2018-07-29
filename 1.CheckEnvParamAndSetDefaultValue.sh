#!/bin/bash

# Check parameter value and set defaults
if [ -z "$ENV_VARIABLE" ]; then
    export ENV_VARIABLE=qwe123
fi