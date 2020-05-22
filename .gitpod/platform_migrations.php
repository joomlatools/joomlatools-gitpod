<?php

use Phinx\Migration\AbstractMigration;

class PlatformMigrations extends AbstractMigration
{
    public function up()
    {
        $sql = <<<EOL
INSERT INTO `menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
('102', 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_users&view=login', 'component', '1', '1', '1', '25', '0', '0000-00-00 00:00:00', '0', '1', ' ', '0', '{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '49', '50', '1', '*', '0');
EOL;

        $this->execute($sql);
    }

    public function down()
    {
        $sql = <<<EOL
DELETE FROM `menu` WHERE `id` = '102';
EOL;

        $this->execute($sql);
    }
}
