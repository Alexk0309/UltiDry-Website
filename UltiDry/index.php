<?php
include_once "header.php";
 ?>
    <div class="body">
      <div class="slideContainer">
        <div class="previewImg">
          <a class="image-link" href="login.php"><img class="home-image" src="css/images/joinus.jpg" alt="join-us-img"></a>
        </div>
        <div class="previewImg">
          <a class="image-link" href="aboutus.php"><img class="home-image" src="css/images/aboutus.jpg" alt="about-us-img"></a>
        </div>
        <div class="previewImg">
          <a class="image-link" href="new.php"><img class="home-image" src="css/images/sample-image2.jpg" alt="brand-new-img"></a>
        </div>

        <a class="prev-slide" onclick="clickSlide(-1)">&#10094;</a>
        <a class="next-slide" onclick="clickSlide(1)">&#10095;</a>
        <script type="text/javascript" src="slide.js">

        </script>
      </div>

    <div class="footer">
      <div class="information">
        <div class="about-us">
          <a class="footer-link" id="about" href="aboutus.php">About Us</a>
        </div>
        <div class="faq">
          <a class="footer-link" id="faq" href="faq.php">FAQ</a>
        </div>
        <div class="policy">
          <a class="footer-link" id="policy" href="policy.php">Return Policy</a>
        </div>
      </div>
      <div class="social-media">
        <h3 class="follow-header" >Follow us on</h3>
        <div class="media-links">
          <div class="facebook">
            <a class="facebook-link" href="https://www.facebook.com/profile.php?id=100070298860230"></a>
          </div>
          <div class="instagram">
            <a class="instagram-link" href="https://www.instagram.com/ultidry/?utm_medium=copy_link"></a>
          </div>
          <div class="twitter">
            <a class="twitter-link" href="https://twitter.com/ultidry"></a>
          </div>
        </div>
      </div>
      <div class="copyright-section">
        <div class="copyright-words">
          <small class="copyright">&#169;2021 Ulti-Dry Malaysia, Inc.- All rights reserved.</small>
        </div>
      </div>
    </div>
  </body>
  </html>
