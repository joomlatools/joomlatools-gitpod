INSERT INTO `j_user_usergroup_map` (`user_id`, `group_id`) VALUES
('692', '8'),
('693', '6'),
('694', '2');

INSERT INTO `j_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
('692', 'admin', 'admin', 'admin@example.com', '$2y$10$XZ99IWJ2vJ2qFBFeJ7NGdeF.6emw5w1Q426Hb/83yPKfs0W2WtcxK', '0', '1', '2020-06-26 11:22:28', '2020-06-26 11:24:35', '0', '', NULL, '0', '', '', '0'),
('693', 'manager', 'manager', 'manager@example.com', '$2y$10$YVFsHEcHQIGRqGR/leaQ1eJx9DiBVZA/RGJRChrJVgaNOTG23LHgu', '0', '0', '2020-06-26 11:25:19', NULL, '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, '0', '', '', '0'),
('694', 'user', 'user', 'user@example.com', '$2y$10$FPQWSmgN9HRRDW.sZnGoceqUk68AaPAIax9nMtCDPJI6aDu16UCJ.', '0', '0', '2020-06-26 11:25:36', NULL, '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, '0', '', '', '0');