<?php 
include 'partials/header.php';
?>

<section class="contact__page">
  <div class="container contact__container">
    <h1>Get in Touch</h1>
    <p class="contact__subtitle">We’d love to hear from you. Fill out the form below and we’ll get back to you as soon as possible.</p>
    
    <form action="send_message.php" method="POST" class="contact__form">
      <div class="form__group">
        <label for="name">Full Name</label>
        <input type="text" name="name" id="name" placeholder="Enter your full name" required>
      </div>

      <div class="form__group">
        <label for="email">Email Address</label>
        <input type="email" name="email" id="email" placeholder="Enter your email address" required>
      </div>

      <div class="form__group">
        <label for="subject">Subject</label>
        <input type="text" name="subject" id="subject" placeholder="Enter subject" required>
      </div>

      <div class="form__group">
        <label for="message">Message</label>
        <textarea name="message" id="message" rows="6" placeholder="Write your message here..." required></textarea>
      </div>

      <button type="submit" class="btn">Send Message</button>
    </form>

    <div class="contact__info">
      <h2>Other Ways to Reach Us</h2>
      <p><strong>Email:</strong> bongspatra@gmail.com</p>
      <p><strong>Phone:</strong> +91 82499 45966</p>
      <p><strong>Address:</strong> 6th Main, Mottappanapalya, Indiranagar, Bengaluru, India</p>
    </div>
  </div>
</section>

<?php
include './partials/footer.php';
?>
