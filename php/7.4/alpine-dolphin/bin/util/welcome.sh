function welcomeMessage() {
    echo " __      __       .__                               "
    echo "/  \    /  \ ____ |  |   ____  ____   _____   ____  "
    echo "\   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \ "
    echo " \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/ "
    echo "  \__/\  /  \___  >____/\___  >____/|__|_|  /\___  >"
    echo "       \/       \/          \/            \/     \/ "
    echo ""
    echo "**********************************"
    echo "* Wake me, when you need me."
    echo "*"
    echo "* To get started, visit your store in your browser at https://$MAGENTO_DOMAIN".
    echo "* You can access the Admin UI at https://$MAGENTO_DOMAIN/$MAGENTO_ADMIN_PATH". 
    echo "* Your credentials are..."
    echo "* Username: $MAGENTO_ADMIN_USERNAME"
    echo "* Password: $MAGENTO_ADMIN_PASSWORD"
    echo "**********************************"
}