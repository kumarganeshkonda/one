<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>💍 will you marry me? · proposal</title>
  <!-- Font Awesome for crisp icons (optional but clean) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: linear-gradient(145deg, #fde9f0 0%, #f5d6e2 100%);
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif;
      padding: 1.2rem;
      margin: 0;
    }

    /* main card – glassmorphism + soft shadows */
    .proposal-card {
      background: rgba(255, 248, 250, 0.85);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-radius: 70px 70px 50px 50px;
      box-shadow: 0 25px 60px rgba(160, 70, 110, 0.25), 0 8px 24px rgba(0, 0, 0, 0.04);
      padding: 2.8rem 2.2rem 2.5rem;
      max-width: 680px;
      width: 100%;
      text-align: center;
      border: 1px solid rgba(255, 220, 235, 0.6);
      transition: 0.2s;
    }

    /* image container: beautiful ring & hearts */
    .hero-image {
      margin-bottom: 0.8rem;
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 0.5rem;
      flex-wrap: wrap;
    }

    .hero-image img {
      max-width: 100%;
      height: auto;
      border-radius: 120px;
      box-shadow: 0 12px 30px rgba(180, 70, 120, 0.2);
      border: 3px solid rgba(255, 215, 225, 0.7);
      width: 80px;
      height: 80px;
      object-fit: cover;
    }

    .hero-image .ring-icon {
      font-size: 4rem;
      line-height: 1;
      filter: drop-shadow(0 6px 12px rgba(200, 80, 130, 0.2));
    }

    /* title with clear font */
    h1 {
      font-size: 2.7rem;
      font-weight: 700;
      letter-spacing: -0.3px;
      color: #3e1b2a;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 0.3rem 0.8rem;
      margin: 0.2rem 0 0.2rem;
    }

    h1 span {
      background: #ffdae7;
      padding: 0.1rem 1rem;
      border-radius: 80px;
      font-size: 2rem;
      box-shadow: inset 0 -2px 0 #c96a8a;
    }

    .sub-message {
      font-size: 1.2rem;
      color: #5f3343;
      background: rgba(255, 215, 230, 0.5);
      padding: 0.4rem 1.6rem;
      border-radius: 60px;
      display: inline-block;
      margin: 0.2rem 0 1.4rem 0;
      backdrop-filter: blur(2px);
      font-weight: 400;
      border: 1px solid #ffb8cc;
      letter-spacing: 0.3px;
    }

    .question {
      font-size: 2rem;
      font-weight: 600;
      color: #391a26;
      background: rgba(255, 235, 242, 0.7);
      padding: 0.7rem 1.6rem;
      border-radius: 100px;
      display: inline-block;
      margin: 0.4rem auto 1.8rem auto;
      backdrop-filter: blur(2px);
      border: 1px solid #ffb8d0;
      box-shadow: 0 4px 12px rgba(200, 80, 120, 0.08);
    }

    .button-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 2.2rem 3.5rem;
      margin: 1.2rem 0 0.8rem;
      position: relative;
      min-height: 110px;
    }

    /* base button – clean & clear */
    .btn {
      border: none;
      background: white;
      padding: 0.9rem 2.8rem;
      border-radius: 120px;
      font-size: 2rem;
      font-weight: 600;
      letter-spacing: 0.5px;
      cursor: pointer;
      transition: all 0.12s ease;
      box-shadow: 0 6px 0 #b0b0b0, 0 8px 20px rgba(0, 0, 0, 0.06);
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 12px;
      min-width: 150px;
      border: 2px solid #f0f0f0;
      transform: translateY(0);
      font-family: inherit;
    }

    .btn-yes {
      background: #fbe3ed;
      border-color: #d487a4;
      color: #2f1520;
      box-shadow: 0 6px 0 #b86f8a, 0 8px 24px rgba(190, 80, 120, 0.2);
    }

    .btn-yes:hover {
      background: #ffdae7;
      transform: scale(1.02) translateY(-2px);
      box-shadow: 0 8px 0 #b86f8a, 0 14px 32px rgba(200, 80, 120, 0.25);
    }

    .btn-yes:active {
      transform: scale(0.96) translateY(3px);
      box-shadow: 0 3px 0 #b86f8a;
    }

    .btn-no {
      background: #eef2f7;
      border-color: #9aa9b9;
      color: #1f2b36;
      box-shadow: 0 6px 0 #7b8a9a, 0 8px 20px rgba(50, 60, 80, 0.1);
      position: relative;
      transition: all 0.08s ease;
    }

    .btn-no:hover {
      background: #e0e7f0;
      transform: scale(1.02) translateY(-2px);
      box-shadow: 0 8px 0 #7b8a9a, 0 12px 28px rgba(50, 60, 80, 0.12);
    }

    .btn-no:active {
      transform: scale(0.94) translateY(4px);
      box-shadow: 0 2px 0 #7b8a9a;
    }

    /* fleeing button – absolute positioning */
    .btn-no--flee {
      transition: left 0.12s ease, top 0.12s ease, transform 0.1s ease;
    }

    /* response area – clear and image friendly */
    .response-area {
      margin-top: 2.2rem;
      padding: 1.6rem 1.2rem;
      background: rgba(255, 240, 247, 0.7);
      backdrop-filter: blur(4px);
      border-radius: 70px;
      border: 1px solid #ffc1d4;
      font-size: 1.6rem;
      min-height: 100px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: #401e2d;
      transition: 0.2s ease;
      box-shadow: inset 0 2px 8px rgba(200, 80, 120, 0.04);
    }

    .response-area .big-emoji {
      font-size: 3.8rem;
      line-height: 1.2;
    }

    .response-area .message {
      font-weight: 600;
      margin: 0.3rem 0 0.2rem;
      letter-spacing: -0.2px;
    }

    .response-area .sub {
      font-size: 1rem;
      opacity: 0.8;
      font-weight: 300;
    }

    .hidden {
      display: none !important;
    }

    .footer {
      margin-top: 1.8rem;
      font-size: 0.95rem;
      color: #7c5a68;
      border-top: 1px dashed #e3b6c8;
      padding-top: 1.2rem;
      display: flex;
      justify-content: center;
      gap: 0.6rem;
      flex-wrap: wrap;
    }

    .footer span {
      background: #ffeef4;
      padding: 0.2rem 1.4rem;
      border-radius: 60px;
      font-weight: 400;
    }

    /* responsive */
    @media (max-width: 500px) {
      .proposal-card { padding: 1.6rem 1rem; }
      h1 { font-size: 2.1rem; }
      .question { font-size: 1.5rem; padding: 0.5rem 1rem; }
      .btn { font-size: 1.5rem; min-width: 120px; padding: 0.7rem 1.4rem; }
      .button-group { gap: 1.2rem; }
      .hero-image .ring-icon { font-size: 3rem; }
      .hero-image img { width: 64px; height: 64px; }
    }
  </style>
</head>
<body>
<div class="proposal-card" id="proposalCard">

  <!-- IMAGE + ICON section (clear and beautiful) -->
  <div class="hero-image">
    <!-- you can replace the src with your own image (e.g. ring, couple, hearts) -->
    <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Ccircle cx='50' cy='50' r='45' fill='%23fad5e5'/%3E%3Ctext x='50' y='68' font-size='60' text-anchor='middle' fill='%23b34b6e'%3E💍%3C/text%3E%3C/svg%3E" 
         alt="ring" style="width:80px;height:80px;border-radius:50%;">
    <span class="ring-icon">💞</span>
    <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Ccircle cx='50' cy='50' r='45' fill='%23fce1ec'/%3E%3Ctext x='50' y='70' font-size='60' text-anchor='middle' fill='%23b34b6e'%3E💗%3C/text%3E%3C/svg%3E" 
         alt="heart" style="width:80px;height:80px;border-radius:50%;">
  </div>

  <h1>
    <span>💗</span> a special question <span>💗</span>
  </h1>
  <div class="sub-message">for you, with all my heart</div>

  <div class="question" id="questionText">
    💖 will you marry me? 💖
  </div>

  <!-- BUTTONS -->
  <div class="button-group" id="buttonGroup">
    <button class="btn btn-yes" id="yesBtn"><i class="fas fa-check-circle" style="font-size:1.7rem;"></i> Yes</button>
    <button class="btn btn-no btn-no--flee" id="noBtn"><i class="fas fa-times-circle"></i> No</button>
  </div>

  <!-- RESPONSE AREA (hidden by default) -->
  <div id="responseArea" class="response-area hidden">
    <div class="big-emoji">💞</div>
    <div class="message" id="responseMessage">you said YES! 💍</div>
    <div class="sub" id="responseSub">forever starts now 🌸</div>
  </div>

  <div class="footer">
    <span><i class="fas fa-heart" style="color:#b34b6e;"></i> click yes · no runs away <i class="fas fa-heart" style="color:#b34b6e;"></i></span>
  </div>
</div>

<script>
  (function() {
    const yesBtn = document.getElementById('yesBtn');
    const noBtn = document.getElementById('noBtn');
    const responseArea = document.getElementById('responseArea');
    const responseMessage = document.getElementById('responseMessage');
    const responseSub = document.getElementById('responseSub');
    const questionText = document.getElementById('questionText');
    const bigEmoji = document.querySelector('.big-emoji');
    const originalQuestion = questionText.innerHTML;

    // ----- flee logic: move no button to random position -----
    function fleeNoButton() {
      if (noBtn.disabled) return;

      const btnRect = noBtn.getBoundingClientRect();
      const btnWidth = btnRect.width || 140;
      const btnHeight = btnRect.height || 70;
      const margin = 20;

      const maxX = window.innerWidth - btnWidth - margin;
      const maxY = window.innerHeight - btnHeight - margin;
      const minX = margin;
      const minY = margin;

      let randomX = Math.floor(Math.random() * (maxX - minX + 1)) + minX;
      let randomY = Math.floor(Math.random() * (maxY - minY + 1)) + minY;

      // avoid overlapping "Yes" button too much (extra playful)
      const yesRect = yesBtn.getBoundingClientRect();
      const yesCenterX = yesRect.left + yesRect.width / 2;
      const yesCenterY = yesRect.top + yesRect.height / 2;
      const dx = (randomX + btnWidth/2) - yesCenterX;
      const dy = (randomY + btnHeight/2) - yesCenterY;
      const distance = Math.hypot(dx, dy);
      if (distance < 160) {
        const angle = Math.atan2(dy, dx);
        const pushX = Math.cos(angle) * 90;
        const pushY = Math.sin(angle) * 90;
        randomX = Math.min(maxX, Math.max(minX, randomX + pushX));
        randomY = Math.min(maxY, Math.max(minY, randomY + pushY));
      }

      noBtn.style.position = 'fixed';
      noBtn.style.left = randomX + 'px';
      noBtn.style.top = randomY + 'px';
      noBtn.style.zIndex = 999;
      noBtn.style.transform = 'scale(1)';
      noBtn.style.boxShadow = '0 8px 0 #7b8a9a, 0 14px 30px rgba(0,0,0,0.18)';
    }

    function resetNoButtonPosition() {
      noBtn.style.position = '';
      noBtn.style.left = '';
      noBtn.style.top = '';
      noBtn.style.zIndex = '';
      noBtn.style.transform = '';
      noBtn.style.boxShadow = '';
    }

    // ----- handle No click + hover (flee & tease) -----
    function handleNoInteraction(e) {
      if (noBtn.disabled) return;
      if (yesBtn.disabled && yesBtn.innerHTML.includes('done')) return;

      // flee!
      fleeNoButton();

      // playful message
      if (!questionText.innerHTML.includes('catch me')) {
        questionText.innerHTML = '😄 catch me if you can!';
      }

      responseArea.classList.remove('hidden');
      bigEmoji.textContent = '🏃‍♀️💨';
      responseMessage.innerHTML = '🙈 the "No" button is fast!';
      responseSub.innerHTML = 'keep trying … or just say YES 💗';

      if (e && e.type === 'click') {
        responseMessage.innerHTML = '😆 almost! you clicked "No" … it ran away!';
        responseSub.innerHTML = 'press YES, it\'s the only way 💍';
        noBtn.innerHTML = '🙈 no!';
      } else if (e && e.type === 'mouseover') {
        noBtn.innerHTML = '🏃‍♂️';
      }
    }

    // ----- handle Yes click (acceptance) -----
    function handleYesClick(e) {
      e.preventDefault();

      // reset no button to normal flow
      resetNoButtonPosition();
      noBtn.innerHTML = '❌ No';
      questionText.innerHTML = originalQuestion;

      // show final proposal response
      responseArea.classList.remove('hidden');
      bigEmoji.textContent = '💞🥂';
      responseMessage.innerHTML = '💍 YES! a thousand times yes! 💍';
      responseSub.innerHTML = 'you made me the happiest person alive ✨🌹';

      // disable both buttons (make it final)
      noBtn.disabled = true;
      noBtn.style.opacity = '0.5';
      noBtn.style.cursor = 'default';
      noBtn.style.pointerEvents = 'none';
      yesBtn.disabled = true;
      yesBtn.innerHTML = '✅ done! 💖';
      yesBtn.style.background = '#d4b0c2';
      yesBtn.style.boxShadow = '0 4px 0 #9a7b8a';
      yesBtn.style.cursor = 'default';
    }

    // ----- attach events -----
    yesBtn.addEventListener('click', handleYesClick);

    // No button: click & hover both trigger flee
    noBtn.addEventListener('click', function(e) {
      e.preventDefault();
      e.stopPropagation();
      if (noBtn.disabled) return;
      handleNoInteraction(e);
    });

    noBtn.addEventListener('mouseover', function(e) {
      if (noBtn.disabled) return;
      if (yesBtn.disabled && yesBtn.innerHTML.includes('done')) return;
      handleNoInteraction(e);
    });

    noBtn.addEventListener('mouseleave', function() {
      if (noBtn.disabled) return;
      if (!noBtn.innerHTML.includes('catch')) {
        noBtn.innerHTML = '❌ No';
      }
    });

    // window resize: keep fleeing button inside viewport
    window.addEventListener('resize', function() {
      if (noBtn.style.position === 'fixed') {
        const rect = noBtn.getBoundingClientRect();
        const margin = 20;
        const maxX = window.innerWidth - rect.width - margin;
        const maxY = window.innerHeight - rect.height - margin;
        let left = parseInt(noBtn.style.left, 10);
        let top = parseInt(noBtn.style.top, 10);
        if (isNaN(left)) left = rect.left;
        if (isNaN(top)) top = rect.top;
        left = Math.min(maxX, Math.max(margin, left));
        top = Math.min(maxY, Math.max(margin, top));
        noBtn.style.left = left + 'px';
        noBtn.style.top = top + 'px';
      }
    });

    // extra: prevent context menu on no button
    noBtn.addEventListener('contextmenu', (e) => e.preventDefault());

    // initial state: response hidden, no button normal
    responseArea.classList.add('hidden');
    resetNoButtonPosition();
    noBtn.disabled = false;
    noBtn.style.opacity = '1';
    noBtn.style.pointerEvents = 'auto';
    noBtn.innerHTML = '❌ No';
    yesBtn.disabled = false;
    yesBtn.innerHTML = '✅ Yes';
    yesBtn.style.background = '#fbe3ed';
    yesBtn.style.boxShadow = '0 6px 0 #b86f8a, 0 8px 24px rgba(190, 80, 120, 0.2)';
    bigEmoji.textContent = '💞';
    responseMessage.innerHTML = 'you said YES! 💍';
    responseSub.innerHTML = 'forever starts now 🌸';
    questionText.innerHTML = originalQuestion;
  })();
</script>
</body>
</html>
