<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Snapchat · Login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', 'Helvetica Neue', sans-serif;
    }

    body {
      background: #fff8f0;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 1.5rem;
    }

    .snap-card {
      max-width: 420px;
      width: 100%;
      background: #ffffff;
      border-radius: 48px 48px 32px 32px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08), 0 8px 24px rgba(255, 215, 0, 0.12);
      padding: 2rem 1.8rem 2.5rem;
      border: 1px solid rgba(255, 215, 0, 0.2);
    }

    .brand {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      margin-bottom: 1.8rem;
    }

    .ghost-icon {
      font-size: 2.6rem;
      color: #fffc00;
      filter: drop-shadow(0 4px 6px rgba(255, 215, 0, 0.3));
      background: #1a1a1a;
      width: 60px;
      height: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 30px;
    }

    .brand h1 {
      font-weight: 700;
      font-size: 2rem;
      color: #1a1a1a;
    }

    .brand h1 span {
      color: #fffc00;
      background: #1a1a1a;
      padding: 0 8px;
      border-radius: 40px;
      font-size: 1.8rem;
    }

    .subhead {
      text-align: center;
      color: #7a7a7a;
      font-weight: 500;
      font-size: 0.95rem;
      margin-top: -0.5rem;
      margin-bottom: 2rem;
    }

    .input-group {
      margin-bottom: 1.6rem;
      position: relative;
    }

    .input-group i {
      position: absolute;
      left: 18px;
      top: 50%;
      transform: translateY(-50%);
      color: #b0b0b0;
      font-size: 1.1rem;
    }

    .input-group input {
      width: 100%;
      padding: 1rem 1rem 1rem 3.2rem;
      font-size: 1rem;
      border: 2px solid #ececec;
      border-radius: 60px;
      background: #fafafa;
      outline: none;
      transition: all 0.25s ease;
      color: #1a1a1a;
      font-weight: 500;
    }

    .input-group input:focus {
      border-color: #fffc00;
      background: #ffffff;
      box-shadow: 0 0 0 5px rgba(255, 252, 0, 0.2);
    }

    .password-wrapper {
      position: relative;
    }

    .password-wrapper i.fa-eye,
    .password-wrapper i.fa-eye-slash {
      position: absolute;
      right: 18px;
      top: 50%;
      transform: translateY(-50%);
      color: #b0b0b0;
      cursor: pointer;
      font-size: 1.1rem;
      z-index: 5;
    }

    .login-btn {
      width: 100%;
      padding: 1rem;
      background: #fffc00;
      border: none;
      border-radius: 60px;
      font-weight: 700;
      font-size: 1.2rem;
      color: #1a1a1a;
      cursor: pointer;
      transition: all 0.2s ease;
      box-shadow: 0 6px 0 #d9d600, 0 6px 12px rgba(255, 215, 0, 0.3);
      margin-top: 0.8rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .login-btn:active {
      transform: translateY(4px);
      box-shadow: 0 2px 0 #d9d600, 0 6px 12px rgba(255, 215, 0, 0.2);
    }

    .login-btn:hover {
      background: #f5f000;
    }

    .message-box {
      margin-top: 1.8rem;
      padding: 0.8rem 1rem;
      border-radius: 60px;
      font-weight: 500;
      text-align: center;
      font-size: 0.95rem;
      background: #f8f8f8;
      color: #3a3a3a;
      border: 1px solid #eaeaea;
      min-height: 3.8rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .message-box.success {
      background: #eaffea;
      border-color: #9fdf9f;
      color: #1f7a1f;
    }

    .message-box.error {
      background: #ffe9e9;
      border-color: #ffb3b3;
      color: #b33c3c;
    }

    .message-box.info {
      background: #eef6ff;
      border-color: #b8d0ff;
      color: #1f4f8a;
    }

    /* IMAGE CONTAINER - FIXED */
    #imageContainer {
      display: none;
      margin-top: 1.8rem;
      padding: 1.2rem;
      border-radius: 24px;
      background: #fcf9f0;
      border: 3px solid #fffc00;
      text-align: center;
      animation: fadeIn 0.6s ease;
    }

    #imageContainer img {
      max-width: 100%;
      height: auto;
      border-radius: 16px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }

    #imageContainer p {
      margin-top: 0.8rem;
      color: #1a1a1a;
      font-weight: 600;
    }

    @keyframes fadeIn {
      0% { opacity: 0; transform: scale(0.9); }
      100% { opacity: 1; transform: scale(1); }
    }

    .extra-links {
      display: flex;
      justify-content: space-between;
      margin-top: 1.5rem;
      font-size: 0.85rem;
      color: #8a8a8a;
    }

    .extra-links a {
      color: #1a1a1a;
      text-decoration: none;
      font-weight: 500;
      border-bottom: 2px solid transparent;
      transition: border 0.15s;
    }

    .extra-links a:hover {
      border-bottom-color: #fffc00;
    }

    .cred-hint {
      background: #fcf9f0;
      border-radius: 40px;
      padding: 0.6rem 1.2rem;
      font-size: 0.8rem;
      color: #6a6a6a;
      border: 1px dashed #ddd3b0;
      text-align: center;
      margin-top: 1rem;
      width: 100%;
    }

    .cred-hint i {
      color: #fffc00;
      margin-right: 6px;
    }

    @media (max-width: 480px) {
      .snap-card {
        padding: 1.8rem 1.2rem 2rem;
        border-radius: 32px;
      }
      .brand h1 {
        font-size: 1.7rem;
      }
      .ghost-icon {
        width: 50px;
        height: 50px;
        font-size: 2.2rem;
      }
    }
  </style>
</head>
<body>

<div class="snap-card">
  <div class="brand">
    <div class="ghost-icon">
      <i class="fas fa-ghost"></i>
    </div>
    <h1>Snap<span>Chat</span></h1>
  </div>
  <p class="subhead"><i class="fas fa-bolt" style="color: #fffc00; margin-right: 6px;"></i> log in to snap</p>

  <form id="loginForm" autocomplete="off">
    <div class="input-group">
      <i class="fas fa-user-circle"></i>
      <input type="text" id="username" placeholder="Username" value="ganesh" />
    </div>

    <div class="input-group password-wrapper">
      <i class="fas fa-lock"></i>
      <input type="password" id="password" placeholder="Password" value="ganesh@123" />
      <i class="fas fa-eye" id="togglePassword"></i>
    </div>

    <button type="submit" class="login-btn" id="loginBtn">
      <i class="fas fa-arrow-right-to-bracket"></i> Log In
    </button>
  </form>

  <div id="messageBox" class="message-box info">
    <i class="fas fa-info-circle"></i> 
    <span id="messageText">use ganesh / ganesh@123</span>
  </div>

  <!-- IMAGE CONTAINER - Replace the src URL with your own image -->
  <div id="imageContainer">
    <img id="loginImage" src="https://picsum.photos/seed/aprilfools/400/300" alt="April Fools Image" />
    <p>🎉 Login Successful! Here's your image.</p>
  </div>

  <div class="extra-links">
    <a href="#"><i class="far fa-question-circle"></i> Forgot?</a>
    <a href="#"><i class="fas fa-user-plus"></i> Sign Up</a>
  </div>

  <div class="cred-hint">
    <i class="fas fa-key"></i> demo: ganesh / ganesh@123
  </div>
</div>

<script>
  (function() {
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');
    const loginForm = document.getElementById('loginForm');
    const messageBox = document.getElementById('messageBox');
    const messageText = document.getElementById('messageText');
    const togglePassword = document.getElementById('togglePassword');
    const imageContainer = document.getElementById('imageContainer');

    const VALID_USERNAME = 'ganesh';
    const VALID_PASSWORD = 'ganesh@123';

    function setMessage(msg, type = 'info') {
      messageBox.classList.remove('success', 'error', 'info');
      if (type === 'success') {
        messageBox.classList.add('success');
        messageBox.innerHTML = `<i class="fas fa-check-circle"></i> <span id="messageText">${msg}</span>`;
      } else if (type === 'error') {
        messageBox.classList.add('error');
        messageBox.innerHTML = `<i class="fas fa-exclamation-circle"></i> <span id="messageText">${msg}</span>`;
      } else {
        messageBox.classList.add('info');
        messageBox.innerHTML = `<i class="fas fa-info-circle"></i> <span id="messageText">${msg}</span>`;
      }
    }

    function handleLogin(e) {
      e.preventDefault();

      const username = usernameInput.value.trim();
      const password = passwordInput.value;

      if (username === '' || password === '') {
        setMessage('Please fill in both fields.', 'error');
        imageContainer.style.display = 'none';
        return;
      }

      if (username === VALID_USERNAME && password === VALID_PASSWORD) {
        setMessage('✅ Login successful! Welcome, Ganesh.', 'success');
        // SHOW THE IMAGE
        imageContainer.style.display = 'block';
        // Re-trigger animation
        imageContainer.style.animation = 'none';
        setTimeout(() => {
          imageContainer.style.animation = 'fadeIn 0.6s ease';
        }, 10);
        
        // Optional: highlight effect
        document.querySelector('.snap-card').style.boxShadow = '0 0 0 4px #fffc00, 0 20px 40px rgba(0,0,0,0.1)';
        setTimeout(() => {
          document.querySelector('.snap-card').style.boxShadow = '0 20px 40px rgba(0, 0, 0, 0.08), 0 8px 24px rgba(255, 215, 0, 0.12)';
        }, 800);
      } else {
        let errorMsg = '❌ Invalid username or password.';
        if (username === VALID_USERNAME && password !== VALID_PASSWORD) {
          errorMsg = '❌ Wrong password. Try again.';
        } else if (username !== VALID_USERNAME && password === VALID_PASSWORD) {
          errorMsg = '❌ Username not recognized.';
        }
        setMessage(errorMsg, 'error');
        imageContainer.style.display = 'none';
        
        // Shake effect
        const card = document.querySelector('.snap-card');
        card.style.animation = 'shake 0.3s ease';
        setTimeout(() => card.style.animation = '', 400);
      }
    }

    // Toggle password visibility
    togglePassword.addEventListener('click', function() {
      const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
      passwordInput.setAttribute('type', type);
      this.classList.toggle('fa-eye-slash');
      this.classList.toggle('fa-eye');
    });

    function clearErrorOnInput() {
      if (messageBox.classList.contains('error')) {
        setMessage('Enter credentials and tap Log In.', 'info');
        imageContainer.style.display = 'none';
      }
    }

    usernameInput.addEventListener('input', clearErrorOnInput);
    passwordInput.addEventListener('input', clearErrorOnInput);

    loginForm.addEventListener('submit', handleLogin);

    setMessage('use ganesh / ganesh@123', 'info');

    // Add shake animation
    const styleShake = document.createElement('style');
    styleShake.textContent = `
      @keyframes shake {
        0% { transform: translateX(0); }
        25% { transform: translateX(-8px); }
        50% { transform: translateX(8px); }
        75% { transform: translateX(-4px); }
        100% { transform: translateX(0); }
      }
    `;
    document.head.appendChild(styleShake);

    // Reset on ghost click
    document.querySelector('.ghost-icon').addEventListener('click', function() {
      setMessage('👻 snap! enter ganesh / ganesh@123', 'info');
      usernameInput.value = 'ganesh';
      passwordInput.value = 'ganesh@123';
      imageContainer.style.display = 'none';
      if (passwordInput.getAttribute('type') === 'text') {
        passwordInput.setAttribute('type', 'password');
        togglePassword.classList.remove('fa-eye-slash');
        togglePassword.classList.add('fa-eye');
      }
    });

  })();
</script>
</body>
</html>
