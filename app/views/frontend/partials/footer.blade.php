    <!-- Start bottom -->
    <section id="bottom">
        <div class="container">
            <div class="row">
                <div class="span8 offset2 aligncenter">
                    <h4>Please subscribe to get news update</h4>
                    <p>
                        {{Setting::getOptions()->subscribe_text}}
                    </p>
                    <form class="subscribeform-inline">
                        <input class="subscribe" id="appendedPrependedInput" type="text" placeholder="Enter your email address" />
                        <button class="btn btn-large btn-primary" type="submit">GET NOTIFIED</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End bottom -->
<!-- Start footer -->
<footer>
    <div id="subfooter">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <p>{{date("Y")}}  All rights Reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End footer -->


<script type="text/javascript">
    //<![CDATA[
    var browser			= navigator.userAgent;
    var browserRegex	= /(Android|BlackBerry|IEMobile|Nokia|iP(ad|hone|od)|Opera M(obi|ini))/;
    var isMobile		= false;
    if(browser.match(browserRegex)) {
        isMobile			= true;
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){
            window.scrollTo(0,1);
        }
    }
    //]]>
</script>

 {{Skin::js()}}

</body>
</html>
