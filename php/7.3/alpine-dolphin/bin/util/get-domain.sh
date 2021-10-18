function getProjectDomain {
    if [ -z "$CODESPACE_NAME" ]; then 
        local __PROJECT_DOMAIN=$MAGENTO_DOMAIN 
    else 
        local __PROJECT_DOMAIN="$CODESPACE_NAME-443.githubpreview.dev"
    fi

    echo $__PROJECT_DOMAIN
}