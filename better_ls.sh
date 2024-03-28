#!/bin/bash

ls -lF --color=always | grep --color=never '/$'
ls -lF --color=always | grep --color=never -v '/$' | sed '1d'
