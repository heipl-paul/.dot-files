#!/bin/zsh

function ghpr {
    gh pr list -R Zepz-Engineering/treasury-correspondent-service
    gh pr list -R a
    gh pr list -R Zepz-Engineering/treasury-funding-payment-service
    gh pr list -R Zepz-Engineering/account-ledger
    gh pr list -R Zepz-Engineering/zepz-graphql-gateway
    gh pr list -R Zepz-Engineering/treasury-portal-ui
}