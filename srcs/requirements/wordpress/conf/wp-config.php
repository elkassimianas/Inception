<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'ael-kass' );

/** MySQL database password */
define( 'DB_PASSWORD', 'anas_123' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

// ** REDIS Settings **//

define('WP_CACHE', true);
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
define('WP_CACHE_KEY_SALT', 'localhost');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '<DU+S^xMg$t}4h81vDm[]WP9p-/|(N~(.,3d b2a%261gjeJC!..~v|gs3F+~V&;' );
define( 'SECURE_AUTH_KEY',  'QGc#tE?1r23q0-e s4y-h@HOBBT~u,>:24S-Rhm2uVN~0CmEQ/n**+pBjj2x[*`V' );
define( 'LOGGED_IN_KEY',    'mQfmsx$*6?7?uL7~}9~?e{g}x*X,*$>ZW=9F+[:FIw&>j}b#:HU+@PEK-c&#qxRf' );
define( 'NONCE_KEY',        '9>WM=R;>pkMYl&7)rWW0z0R`o-_TmZTfUj;~[+mtb-3<$ZpV%a4,5o+Tc94|<XjV' );
define( 'AUTH_SALT',        'sTTsN^- ] :R9q{bS/ Z|FN(2SBceZn+Oz}{>YdjSuu#+9A`z|O~n$|=8ea*L_2T' );
define( 'SECURE_AUTH_SALT', '5LZ1-;XngQ.yW]u.lfMb-V]Lm![xrA0^Y:gK//]D5g+ewMOt44:H=Z_|s$5|=u|R' );
define( 'LOGGED_IN_SALT',   '&0U^]J+ )7^j(CC;JD*]DNI zSWj#+z2i])-$3GT+7?Q7+5A!>yv~lxB9b}:j|;M' );
define( 'NONCE_SALT',       'M4|$*Z$_2A ILL+zCJJxs_+!#O!E0SZv=!;a?s<lFU5HD SR!1-]23<Y?4~=JV3H' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';