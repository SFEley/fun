# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def analytics_load
    return <<-GALOAD if ENV["FUN_GOOGLE_ANALYTICS"]
    <script type="text/javascript">
      var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
      document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
    </script>
    GALOAD
  end
  
  def analytics_track
    return <<-GATRACK if ENV["FUN_GOOGLE_ANALYTICS"]
    <script type="text/javascript">
      try {
      var pageTracker = _gat._getTracker("#{ENV["FUN_GOOGLE_ANALYTICS"]}");
      pageTracker._trackPageview();
      } catch(err) {}
    </script>
    GATRACK
  end
  
end

