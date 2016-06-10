#!/bin/bash

npm install -g firebase-tools
grunt --force
firebase deploy --token "${FIREBASE_TOKEN}"
