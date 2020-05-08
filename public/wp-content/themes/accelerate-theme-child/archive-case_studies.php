<?php
/**
 * The template for displaying the case study archives
 *
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
         $image_1 = get_field('image_1');
         $size = "full";
         
       ?>
         <article class="case-study">
           <aside class="case-study-sidebar">
             <div class="case-study-archive">
               <div class="case-study-archive-text">
                 <h2><a href="<?php the_permalink(); ?>"</a></h2>
                 <h2><?php the_title(); ?></h2>
                 <h4><?php echo $services; ?></h4>
                 <?php the_excerpt(); ?>
                 <p><strong><a href="<?php the_permalink(); ?>">View Project ></a></strong></p>
               </div>
               <div class="case-study-archive-image">
                 
               
               <?php if($image_1) {
                 echo wp_get_attachment_image($image_1, $size );
               } ?>
               </div>
             </div>
             <div class="case-study-archive-image">

             </div>
             
           </aside>
         </article>
         
 			<?php endwhile; // end of the loop. ?>
      
          
 		</div><!-- .main-content -->
 
 	</div><!-- #primary -->
 
 <?php get_footer(); ?>
