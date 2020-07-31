CREATE TABLE `domains` (
  `id`     int unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`domain`)
);

insert into domains (domain)
values
  ('example.com'),
  ('example-0.com'),
  ('example-1.com'),
  ('example-2.com'),
  ('example-3.com');

CREATE TABLE `accounts` (
  `id`       int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64)  NOT NULL,
  `domain`   varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `quota`    int unsigned          DEFAULT '0',
  `enabled`  boolean               DEFAULT '0',
  `sendonly` boolean               DEFAULT '0',
  PRIMARY KEY (id),
  UNIQUE KEY (`username`, `domain`),
  FOREIGN KEY (`domain`) REFERENCES `domains` (`domain`)
);

-- add admin account with password: 123456
insert into accounts (username, domain, password, quota, enabled, sendonly)
values ('admin',
        'example.com',
        '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.',
        1024,
        true,
        false),
  ('hansi', 'example.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 512, true, false),
  ('seppi', 'example.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 2048, true, false),
  ('mitzi', 'example.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 4096, true, false),
  ('poldi', 'example.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 8192, true, false),
  ('chef', 'example.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, true, false),
  ('nextcloud', 'example.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, true, true),
  ('git', 'example.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, false, true),
  ('admin', 'example-0.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, true, false),
  ('chef', 'example-0.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, true, false),
  ('nextcloud', 'example-0.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, true, true),
  ('git', 'example-0.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, false, true),
  ('admin', 'example-1.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 1024, true, false),
  ('chef', 'example-1.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, true, false),
  ('nextcloud', 'example-1.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, true, true),
  ('git', 'example-1.com', '{SHA512-CRYPT}$6$f6f860ee7c87c80b$q6WIteQt/d045TEm.oAReVo/3xK76J81CQf5njI0GupIRPYTe2vhpBlzLSLGB5XDCyDz46hsu3bpl89PPpG3J.', 0, false, true);


CREATE TABLE `aliases` (
  `id`                   int unsigned NOT NULL AUTO_INCREMENT,
  `source_username`      varchar(64)  NOT NULL,
  `source_domain`        varchar(255) NOT NULL,
  `destination_username` varchar(64)  NOT NULL,
  `destination_domain`   varchar(255) NOT NULL,
  `enabled`              boolean               DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY (`source_username`, `source_domain`, `destination_username`, `destination_domain`),
  FOREIGN KEY (`source_domain`) REFERENCES `domains` (`domain`)
);

insert into aliases (source_username, source_domain, destination_username, destination_domain)
values
  ('hansi', 'example-0.com', 'hansi', 'example.com'),
  ('poldi', 'example-0.com', 'poldi', 'example.com'),
  ('hansi', 'example-1.com', 'hansi', 'example.com'),
  ('poldi', 'example-1.com', 'poldi', 'example.com'),
  ('hansi', 'example-2.com', 'hansi', 'example.com'),
  ('poldi', 'example-2.com', 'poldi', 'example.com'),
  ('hansi', 'example-3.com', 'hansi', 'example.com'),
  ('poldi', 'example-3.com', 'poldi', 'example.com');

CREATE TABLE `tlspolicies` (
  `id`     int unsigned                                                                            NOT NULL AUTO_INCREMENT,
  `domain` varchar(255)                                                                            NOT NULL,
  `policy` enum ('none', 'may', 'encrypt', 'dane', 'dane-only', 'fingerprint', 'verify', 'secure') NOT NULL,
  `params` varchar(255),
  PRIMARY KEY (`id`),
  UNIQUE KEY (`domain`)
);

insert into tlspolicies (domain, policy, params)
values ('gmx.de', 'secure', 'match=.gmx.net');
insert into tlspolicies (domain, policy)
values ('mailbox.org', 'dane-only');

