<?php
/**
 * The template for case study custom post type
 *
 * Please note other 'posts' on your WordPress site will use a
 * different template.
 *
 * @package WordPress
 * @subpackage Accelerate Marketing
 * @since Accelerate Marketing 2.0
 */

get_header(); ?>

	<div id="primary" class="site-content sidebar">
		<div class="main-content" role="main">
      
			<?php while ( have_posts() ) : the_post();
        $services = get_field('services');
        $client = get_field('client');
        $link = get_field('site_link');
        $image_1 = get_field('image_1');
        $image_2 = get_field('image_2');
        $image_3 = get_field('image_3');
				$size = get_field('medium');
        
      ?>
        <article class="case-study">
          <div class=case-study-header>
          <h2><?php the_title(); ?></h2>
          <h4><?php echo $services; ?></h4>
          <h4>Client: <?php echo $client; ?></h4>
          
  				<?php the_content(); ?>
          <p><strong><a href="<?php echo $link; ?>">Site Link</a></strong></p>
        </article>
        <div class="case-study-gallery">
          <div class="case-study-image">
						<?php if($image_1) {
							echo wp_get_attachment_image($image_1, $size );
						} ?>
          </div>
          <div class="case-study-image">  
						<?php if($image_1) {
							echo wp_get_attachment_image($image_2, $size);
						} ?>
          </div>
          <div class="case-study-image">
						<?php if($image_1) {
							echo wp_get_attachment_image($image_3, $size);
						} ?>
          </div>
        </div>
          
          
			<?php endwhile; // end of the loop. ?>
		</div><!-- .main-content -->

	</div><!-- #primary -->

<?php get_footer(); ?>
