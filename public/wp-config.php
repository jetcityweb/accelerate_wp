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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'AnGvfB23n14/1L4KW3J8VxFPsbr/vgdsgLduymMQnjrO2Uz3dx0A2X7Vya9/pbWlROHrmfscznPUqy6N7eOGtA==');
define('SECURE_AUTH_KEY',  '4R3IC0dp2k30D6L0SHxfzeNDxRlhimiyOO58Ap1JfArINiKGSEt/27YYGNLDBDsvumZ6B0V8bulQ0xN21bP4Ig==');
define('LOGGED_IN_KEY',    'JNdJ89E/iNo0GuMcZUmdb3tGSln9q8EyT95t1X9qxngTXwOYwbVbFTX1B2Jgfx0urmw0M0xcAvy+SDvoyfpjHw==');
define('NONCE_KEY',        'okJaiuANQg+XydEUQTyzFsH047kn5/3wg4HoqQerPxYWid7L9QxvsYBpCgws28qrtBF8w55t5ucWTC1Qtu+h6Q==');
define('AUTH_SALT',        'G4ucDhYV6XD6lK+uKBm+CQGpZqBGD0eug+hgUhLW6xk6rJjjPHhNJbzmlcUUhdelg9elPGni7+zbHVKYG6m7rg==');
define('SECURE_AUTH_SALT', 'bCT+luU8rDdtk6WWaKMkcqr8WydQ9cERzKCN9PIV/OaqEq7kyznbtKYsNjBgzoFl5bf6/clDwy0PpogRCSDGgw==');
define('LOGGED_IN_SALT',   'qQ4I8j0PXZP23I+Xg4BGMi4b2vEa1021NrCm2vIMgApMf+6ziSbZiGYuyXptzwu/I6ZpEO0jLq+eEapcGZBCiA==');
define('NONCE_SALT',       '1N/mz+5X6Qctz5sP9g9BfST2aJRjF1wLxm5IRzp1W1l2GSZfkrEP2w7EjTCueA+KD37tnD2CGMPrfLD74qpPQA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
