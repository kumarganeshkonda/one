<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SnapChat · Login</title>
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
            max-width: 440px;
            width: 100%;
            background: #ffffff;
            border-radius: 48px 48px 32px 32px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08), 0 8px 24px rgba(255, 215, 0, 0.12);
            padding: 2.2rem 2rem 2.5rem;
            border: 1px solid rgba(255, 215, 0, 0.2);
            transition: box-shadow 0.3s ease;
        }

        .snap-card.success-mode {
            box-shadow: 0 0 0 4px #fffc00, 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        .brand {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            margin-bottom: 1.5rem;
        }

        .ghost-icon {
            font-size: 2.4rem;
            color: #fffc00;
            background: #1a1a1a;
            width: 58px;
            height: 58px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 30px;
            box-shadow: 0 4px 12px rgba(255, 215, 0, 0.25);
            cursor: pointer;
            transition: transform 0.2s;
        }

        .ghost-icon:hover {
            transform: scale(1.05);
        }

        .brand h1 {
            font-weight: 700;
            font-size: 2.1rem;
            letter-spacing: -0.5px;
            color: #1a1a1a;
        }

        .brand h1 span {
            color: #fffc00;
            background: #1a1a1a;
            padding: 0 10px;
            border-radius: 40px;
            font-size: 1.8rem;
        }

        .subhead {
            text-align: center;
            color: #7a7a7a;
            font-weight: 500;
            font-size: 0.95rem;
            margin-top: -0.3rem;
            margin-bottom: 1.8rem;
            letter-spacing: 0.3px;
        }

        .input-group {
            margin-bottom: 1.4rem;
            position: relative;
        }

        .input-group i {
            position: absolute;
            left: 18px;
            top: 50%;
            transform: translateY(-50%);
            color: #b0b0b0;
            font-size: 1.1rem;
            transition: color 0.2s;
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
            box-shadow: 0 0 0 5px rgba(255, 252, 0, 0.15);
        }

        .input-group input::placeholder {
            color: #bdbdbd;
            font-weight: 400;
            opacity: 0.8;
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
            transition: color 0.2s;
        }

        .password-wrapper i:hover {
            color: #1a1a1a;
        }

        .login-btn {
            width: 100%;
            padding: 1rem;
            background: #fffc00;
            border: none;
            border-radius: 60px;
            font-weight: 700;
            font-size: 1.15rem;
            color: #1a1a1a;
            cursor: pointer;
            transition: all 0.2s ease;
            box-shadow: 0 6px 0 #d9d600, 0 6px 12px rgba(255, 215, 0, 0.3);
            margin-top: 0.5rem;
            letter-spacing: 0.3px;
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
            box-shadow: 0 6px 0 #c9c600, 0 8px 16px rgba(255, 215, 0, 0.4);
        }

        .message-box {
            margin-top: 1.5rem;
            padding: 0.8rem 1rem;
            border-radius: 60px;
            font-weight: 500;
            text-align: center;
            font-size: 0.92rem;
            background: #f8f8f8;
            color: #3a3a3a;
            border: 1px solid #eaeaea;
            min-height: 3.6rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: all 0.3s ease;
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

        /* ===== IMAGE CONTAINER ===== */
        #imageContainer {
            display: none;
            margin-top: 1.8rem;
            padding: 1.2rem;
            border-radius: 24px;
            background: #fcf9f0;
            border: 3px solid #fffc00;
            text-align: center;
            animation: fadeInUp 0.6s ease;
        }

        #imageContainer img {
            max-width: 100%;
            height: auto;
            max-height: 300px;
            border-radius: 16px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.12);
            object-fit: cover;
        }

        #imageContainer .image-caption {
            margin-top: 0.8rem;
            color: #1a1a1a;
            font-weight: 600;
            font-size: 0.95rem;
        }

        #imageContainer .image-sub {
            color: #777;
            font-size: 0.8rem;
            margin-top: 0.2rem;
        }

        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(20px) scale(0.96); }
            100% { opacity: 1; transform: translateY(0) scale(1); }
        }

        @keyframes shake {
            0% { transform: translateX(0); }
            25% { transform: translateX(-8px); }
            50% { transform: translateX(8px); }
            75% { transform: translateX(-4px); }
            100% { transform: translateX(0); }
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
            padding-bottom: 2px;
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
            margin-top: 1.2rem;
            width: 100%;
        }

        .cred-hint i {
            color: #fffc00;
            margin-right: 6px;
        }

        /* ===== RESPONSIVE ===== */
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
                font-size: 2rem;
            }
            #imageContainer img {
                max-height: 200px;
            }
        }
    </style>
</head>
<body>

<div class="snap-card" id="snapCard">
    <!-- Brand -->
    <div class="brand">
        <div class="ghost-icon" id="resetBtn" title="Click to reset">
            <i class="fas fa-ghost"></i>
        </div>
        <h1>Snap<span>Chat</span></h1>
    </div>
    <p class="subhead"><i class="fas fa-bolt" style="color: #fffc00; margin-right: 6px;"></i> log in to snap</p>

    <!-- Login Form -->
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

    <!-- Message Box -->
    <div id="messageBox" class="message-box info">
        <i class="fas fa-info-circle"></i> 
        <span id="messageText">use ganesh / ganesh@123</span>
    </div>

    <!-- ===== IMAGE CONTAINER ===== -->
    <!-- 
      ⚠️ IMPORTANT: To use your own image:
      1. Go to https://www.pinterest.com/123greetings/april-fools-day/
      2. Click on any image you like
      3. Right-click → "Open image in new tab"
      4. Copy the URL from the new tab (it will end in .jpg, .png, etc.)
      5. Replace the src="" below with your copied URL
    -->
    <div id="imageContainer">
        <img id="loginImage" 
             src="https://picsum.photos/seed/aprilfools/500/350" 
             alt="April Fools Image" 
        />
        <p class="image-caption">🎉 Login Successful! Here's your image.</p>
        <p class="image-sub">Image from Pinterest board</p>
    </div>

    <!-- Extra Links -->
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
        "use strict";

        const usernameInput = document.getElementById('username');
        const passwordInput = document.getElementById('password');
        const loginForm = document.getElementById('loginForm');
        const messageBox = document.getElementById('messageBox');
        const messageText = document.getElementById('messageText');
        const togglePassword = document.getElementById('togglePassword');
        const imageContainer = document.getElementById('imageContainer');
        const snapCard = document.getElementById('snapCard');

        const VALID_USERNAME = 'ganesh';
        const VALID_PASSWORD = 'ganesh@123';

        // ===== Set message function =====
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

        // ===== Login handler =====
        function handleLogin(e) {
            e.preventDefault();

            const username = usernameInput.value.trim();
            const password = passwordInput.value;

            if (username === '' || password === '') {
                setMessage('Please fill in both fields.', 'error');
                imageContainer.style.display = 'none';
                snapCard.classList.remove('success-mode');
                return;
            }

            if (username === VALID_USERNAME && password === VALID_PASSWORD) {
                setMessage('✅ Login successful! Welcome, Ganesh.', 'success');
                
                // ===== SHOW THE IMAGE =====
                imageContainer.style.display = 'block';
                // Re-trigger animation
                imageContainer.style.animation = 'none';
                setTimeout(() => {
                    imageContainer.style.animation = 'fadeInUp 0.6s ease';
                }, 10);
                
                // Highlight card
                snapCard.classList.add('success-mode');
                
            } else {
                let errorMsg = '❌ Invalid username or password.';
                if (username === VALID_USERNAME && password !== VALID_PASSWORD) {
                    errorMsg = '❌ Wrong password. Try again.';
                } else if (username !== VALID_USERNAME && password === VALID_PASSWORD) {
                    errorMsg = '❌ Username not recognized.';
                }
                setMessage(errorMsg, 'error');
                imageContainer.style.display = 'none';
                snapCard.classList.remove('success-mode');
                
                // Shake animation
                snapCard.style.animation = 'shake 0.3s ease';
                setTimeout(() => snapCard.style.animation = '', 400);
            }
        }

        // ===== Toggle password visibility =====
        togglePassword.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.classList.toggle('fa-eye-slash');
            this.classList.toggle('fa-eye');
        });

        // ===== Clear error on input =====
        function clearErrorOnInput() {
            if (messageBox.classList.contains('error')) {
                setMessage('Enter credentials and tap Log In.', 'info');
                imageContainer.style.display = 'none';
                snapCard.classList.remove('success-mode');
            }
        }

        usernameInput.addEventListener('input', clearErrorOnInput);
        passwordInput.addEventListener('input', clearErrorOnInput);

        // ===== Submit =====
        loginForm.addEventListener('submit', handleLogin);

        // ===== Default message =====
        setMessage('use ganesh / ganesh@123', 'info');

        // ===== Reset on ghost click =====
        document.querySelector('.ghost-icon').addEventListener('click', function() {
            setMessage('👻 Reset! Enter ganesh / ganesh@123', 'info');
            usernameInput.value = 'ganesh';
            passwordInput.value = 'ganesh@123';
            imageContainer.style.display = 'none';
            snapCard.classList.remove('success-mode');
            if (passwordInput.getAttribute('type') === 'text') {
                passwordInput.setAttribute('type', 'password');
                togglePassword.classList.remove('fa-eye-slash');
                togglePassword.classList.add('fa-eye');
            }
            snapCard.style.animation = '';
        });

        console.log('🔐 SnapChat login ready. Valid: ganesh / ganesh@123');

    })();
</script>

</body>
</html>
