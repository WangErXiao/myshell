#!/bin/bash

ls | grep -v '\.c$' | xargs rm -rf
