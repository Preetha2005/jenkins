#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u preethasaravanan -p Preetha@2005
    docker tag test preethasaravanan/devops_day4
    docker push preethasaravanan/devops_day4
    kubectl create deployment deploy5 --image=preethasaravanan/devops_day4 --port=80
    kubectl expose deployment deploy5 --type=NodePort --port=80
    
