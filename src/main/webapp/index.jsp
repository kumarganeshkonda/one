<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
  <title>Snapchat · Login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ... (keep all your existing CSS styles) ... */
    /* Add this new style for the image container */
    #imageContainer {
      display: none; /* Hidden by default */
      text-align: center;
      margin-top: 1.5rem;
      padding: 1rem;
      border-radius: 24px;
      background: #fafafa;
      border: 2px dashed #fffc00;
    }
    #imageContainer img {
      max-width: 100%;
      height: auto;
      border-radius: 16px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    }
    /* ... rest of your styles ... */
  </style>
</head>
<body>
<div class="snap-card" role="main">
  <!-- Brand and Form (same as before) -->
  <div class="brand"> ... </div>
  <p class="subhead">...</p>

  <!-- Login Form -->
  <form id="loginForm" autocomplete="off">
    <!-- ... your input fields ... -->
    <button type="submit" class="login-btn" id="loginBtn"> Log In </button>
  </form>

  <!-- Message Box (same as before) -->
  <div id="messageBox" class="message-box info"> ... </div>

  <!-- NEW: Image Container for successful login -->
  <div id="imageContainer">
    <!-- *** IMPORTANT: Replace the 'src' URL below with your direct image URL from Pinterest *** -->
    <img src="YOUR_DIRECT_IMAGE_URL_HERE.jpg" alt="April Fools Day Image" />
    <p style="margin-top: 0.8rem; color: #555; font-weight: 500;">🎉 Login Successful! Enjoy your image.</p>
  </div>

  <!-- ... extra links and hint ... -->
</div>

<script>
  (function() {
    // ... (keep all your existing JavaScript) ...

    // Get the new image container
    const imageContainer = document.getElementById('imageContainer');

    // Modify the handleLogin function
    function handleLogin(e) {
      e.preventDefault();

      const username = usernameInput.value.trim();
      const password = passwordInput.value;

      if (username === '' || password === '') {
        setMessage('Please fill in both fields.', 'error');
        imageContainer.style.display = 'none'; // Hide image if shown
        return;
      }

      if (username === VALID_USERNAME && password === VALID_PASSWORD) {
        setMessage('✅ Login successful! Welcome, Ganesh.', 'success');
        // --- SHOW THE IMAGE ---
        imageContainer.style.display = 'block';
        // Optional: Add a fun animation
        imageContainer.style.animation = 'fadeIn 0.8s ease';
        // ... (keep your other success effects) ...
      } else {
        // ... (keep your error handling) ...
        imageContainer.style.display = 'none'; // Hide image on error
      }
    }

    // Add a fade-in animation
    const styleFade = document.createElement('style');
    styleFade.textContent = `
      @keyframes fadeIn {
        0% { opacity: 0; transform: scale(0.95); }
        100% { opacity: 1; transform: scale(1); }
      }
    `;
    document.head.appendChild(styleFade);

    // ... (rest of your script) ...
  })();
</script>
</body>
</html>
