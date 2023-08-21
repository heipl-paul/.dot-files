#!/bin/zsh

function ghpr {
    gh pr list -R glisstechnologies/services
    gh pr list -R glisstechnologies/domain-design
    gh pr list -R glisstechnologies/web-portal
}