// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Show the new post form inline
$(document).ready(function() {
  $('#link_new_post').click(function(event) {
    if ($('form#new_post').length==0) {  // Don't let this work more than once
     $('<div class="post">').hide().prependTo($('#posts')).load("/posts/new").slideDown();
    }
    return false;
 } 
    );
});

