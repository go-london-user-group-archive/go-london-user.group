#!/bin/bash
hugo
gsutil -m cp -r public/* gs://go-london-user.group
gsutil -m acl ch -r -u AllUsers:R gs://go-london-user.group