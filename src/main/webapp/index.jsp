<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>💍 proposal · yes or no</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    body {
      background: linear-gradient(145deg, #fde9f0 0%, #f8dbe8 100%);
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Segoe UI', Roboto, system-ui, -apple-system, BlinkMacSystemFont, sans-serif;
      padding: 1rem;
      margin: 0;
    }
    .proposal-card {
      background: rgba(255, 250, 252, 0.8);
      backdrop-filter: blur(6px);
      -webkit-backdrop-filter: blur(6px);
      border-radius: 60px 60px 40px 40px;
      box-shadow: 0 20px 50px rgba(180, 80, 120, 0.25), 0 8px 20px rgba(0,0,0,0.05);
      padding: 3rem 2.5rem 2.8rem;
      max-width: 620px;
      width: 100%;
      text-align: center;
      transition: 0.25s ease;
      border: 1px solid rgba(255, 220, 230, 0.5);
    }
    h1 {
      font-size: 2.6rem;
      font-weight: 600;
      letter-spacing: -0.5px;
      color: #4a1e2c;
      margin-bottom: 0.5rem;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 0.3rem 0.6rem;
    }
    h1 span {
      background: #ffd9e4;
      padding: 0.1rem 0.8rem;
      border-radius: 60px;
      font-size: 2rem;
      box-shadow: inset 0 -2px 0 #c96a8a;
    }
    .sub-message {
      font-size: 1.25rem;
      color: #6b3b4b;
      background: rgba(255, 215, 225, 0.5);
      padding: 0.5rem 1.2rem;
      border-radius: 40px;
      display: inline-block;
      margin-bottom: 2rem;
      backdrop-filter: blur(2px);
      font-weight: 400;
      border: 1px solid #ffb8cc;
    }
    .ring-icon {
      font-size: 3.4rem;
      display: block;
      margin: 0.2rem 0 0.8rem 0;
    }
    .question {
      font-size: 1.9rem;
      font-weight: 500;
      color: #3c1d28;
      background: rgba(255, 235, 240, 0.7);
      padding: 0.7rem 1.2rem;
      border-radius: 80px;
      display: inline-block;
      margin: 0.5rem auto 1.8rem auto;
      backdrop-filter: blur(2px);
      border: 1px solid #ffb0c8;
    }
    .button-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 2rem 3rem;
      margin: 1.5rem 0 1rem 0;
      position: relative;
      min-height: 100px;
    }
    .btn {
      border: none;
      background: white;
      padding: 0.9rem 2.8rem;
      border-radius: 120px;
      font-size: 1.9rem;
      font-weight: 600;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.15s ease;
      box-shadow: 0 6px 0 #b0b0b0, 0 8px 20px rgba(0,0,0,0.1);
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      min-width: 140px;
      border: 2px solid #f0f0f0;
      transform: translateY(0);
    }
    .btn-yes {
      background: #f9e1e9;
      border-color: #d487a4;
      color: #3d1c29;
      box-shadow: 0 6px 0 #b86f8a, 0 8px 20px rgba(190, 80, 120, 0.25);
    }
    .btn-yes:hover {
      background: #ffdae7;
      transform: scale(1.02) translateY(-2px);
      box-shadow: 0 8px 0 #b86f8a, 0 12px 28px rgba(200, 80, 120, 0.3);
    }
    .btn-yes:active {
      transform: scale(0.96) translateY(3px);
      box-shadow: 0 3px 0 #b86f8a;
    }
    .btn-no {
      background: #eaeef5;
      border-color: #9aa9b9;
      color: #1e2a36;
      box-shadow: 0 6px 0 #7b8a9a, 0 8px 20px rgba(60, 70, 90, 0.15);
      position: relative;
      transition: all 0.08s ease;
    }
    .btn-no:hover {
      background: #dce3ec;
      transform: scale(1.02) translateY(-2px);
      box-shadow: 0 8px 0 #7b8a9a, 0 12px 28px rgba(60, 70, 90, 0.15);
    }
    .btn-no:active {
      transform: scale(0.94) translateY(4px);
      box-shadow: 0 2px 0 #7b8a9a;
    }
    /* "No" button will be repositioned by JS — this keeps it fluid */
    .btn-no--flee {
      transition: left 0.12s ease, top 0.12s ease, transform 0.1s ease;
    }
    .response-area {
      margin-top: 2.4rem;
      padding: 1.4rem 1rem;
      background: rgba(255, 240, 245, 0.6);
      backdrop-filter: blur(4px);
      border-radius: 60px;
      border: 1px solid #ffc1d4;
      font-size: 1.6rem;
      min-height: 80px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: #4c2635;
      transition: 0.2s ease;
    }
    .response-area .big-emoji {
      font-size: 3.2rem;
      line-height: 1.2;
    }
    .response-area .message {
      font-weight: 500;
      margin: 0.4rem 0 0.2rem;
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
      font-size: 0.9rem;
      color: #896a78;
      letter-spacing: 0.5px;
      border-top: 1px dashed #e3b6c8;
      padding-top: 1.4rem;
    }
    .footer span {
      background: #ffeef4;
      padding: 0.2rem 1rem;
      border-radius: 50px;
    }
    @media (max-width: 480px) {
      .proposal-card { padding: 1.8rem 1rem; }
      h1 { font-size: 2.2rem; }
      .question { font-size: 1.4rem; }
      .btn { font-size: 1.5rem; min-width: 110px; padding: 0.7rem 1.8rem; }
      .button-group { gap: 1.2rem; }
    }
  </style>
</head>
<body>

<div class="proposal-card" id="proposalCard">
  <span class="ring-icon">💍✨</span>
  <h1>
    <span>💗</span> a special question <span>💗</span>
  </h1>
  <div class="sub-message">for you, with all my heart</div>

  <div class="question" id="questionText">
    💖 will you marry me? 💖
  </div>

  <div class="button-group" id="buttonGroup">
    <!-- YES button -->
    <button class="btn btn-yes" id="yesBtn">✅ Yes</button>
    
    <!-- NO button (will be moved by JS) -->
    <button class="btn btn-no btn-no--flee" id="noBtn">❌ No</button>
  </div>

  <!-- response area (hidden initially) -->
  <div id="responseArea" class="response-area hidden">
    <div class="big-emoji">💞</div>
    <div class="message" id="responseMessage">you said YES! 💍</div>
    <div class="sub" id="responseSub">forever starts now 🌸</div>
  </div>

  <div class="footer">
    <span>💕 click yes · no runs away 💕</span>
  </div>
</div>

<script>
  (function() {
    const proposalCard = document.getElementById('proposalCard');
    const yesBtn = document.getElementById('yesBtn');
    const noBtn = document.getElementById('noBtn');
    const responseArea = document.getElementById('responseArea');
    const responseMessage = document.getElementById('responseMessage');
    const responseSub = document.getElementById('responseSub');
    const questionText = document.getElementById('questionText');

    // original question text backup
    const originalQuestion = questionText.innerHTML;

    // ----- helper: get available space inside button group -----
    function getAvailableRect() {
      const groupRect = document.getElementById('buttonGroup').getBoundingClientRect();
      // we need padding/margin awareness: use the group's client rect, but we also need to consider button size
      // we will compute boundaries relative to the group, but we use viewport for simplicity + clamp
      // actually we want to keep the button inside the viewport AND inside the group visual area
      // we'll use a combination: we keep the button inside the viewport, but also try to stay inside the card.
      // For better UX: we'll keep it inside the viewport, with some padding.
      const padding = 20;
      return {
        left: padding,
        top: padding,
        right: window.innerWidth - padding,
        bottom: window.innerHeight - padding,
        // also we want to avoid overlapping the yes button too much, but it's fine
      };
    }

    // ----- move the No button to a random location (flee) -----
    function fleeNoButton() {
      // ensure the button is visible and has dimensions
      const btnRect = noBtn.getBoundingClientRect();
      const btnWidth = btnRect.width || 120;   // fallback if not rendered
      const btnHeight = btnRect.height || 60;

      // get viewport boundaries with some margin
      const margin = 25;
      const maxX = window.innerWidth - btnWidth - margin;
      const maxY = window.innerHeight - btnHeight - margin;
      const minX = margin;
      const minY = margin;

      // generate random position (but ensure it stays within viewport)
      let randomX = Math.floor(Math.random() * (maxX - minX + 1)) + minX;
      let randomY = Math.floor(Math.random() * (maxY - minY + 1)) + minY;

      // Extra: try to avoid overlapping the yes button (optional)
      const yesRect = yesBtn.getBoundingClientRect();
      const yesCenterX = yesRect.left + yesRect.width / 2;
      const yesCenterY = yesRect.top + yesRect.height / 2;
      // if the random position is too close to yes button, shift it
      const dx = (randomX + btnWidth/2) - yesCenterX;
      const dy = (randomY + btnHeight/2) - yesCenterY;
      const distance = Math.hypot(dx, dy);
      if (distance < 150) {
        // push it away
        const angle = Math.atan2(dy, dx);
        const pushX = Math.cos(angle) * 80;
        const pushY = Math.sin(angle) * 80;
        randomX = Math.min(maxX, Math.max(minX, randomX + pushX));
        randomY = Math.min(maxY, Math.max(minY, randomY + pushY));
      }

      // apply position using fixed positioning (so it can flee anywhere)
      noBtn.style.position = 'fixed';
      noBtn.style.left = randomX + 'px';
      noBtn.style.top = randomY + 'px';
      noBtn.style.zIndex = 999;
      // ensure it doesn't get hidden behind other elements
      noBtn.style.transform = 'scale(1)';
      // add a tiny shadow to make it pop
      noBtn.style.boxShadow = '0 8px 0 #7b8a9a, 0 12px 30px rgba(0,0,0,0.2)';
    }

    // ----- reset No button position (back to normal flow) -----
    function resetNoButtonPosition() {
      noBtn.style.position = '';
      noBtn.style.left = '';
      noBtn.style.top = '';
      noBtn.style.zIndex = '';
      noBtn.style.transform = '';
      noBtn.style.boxShadow = '';
      // re-apply default style (but we keep the class)
    }

    // ----- handle "No" click: flee + show playful message -----
    function handleNoClick(e) {
      e.preventDefault();
      e.stopPropagation();

      // If user somehow clicks "No" (e.g., with keyboard or touch), we flee and show a teasing message.
      // we also update the question to tease
      questionText.innerHTML = '😏 really? try catching me!';
      
      // flee to random position
      fleeNoButton();

      // also show a small hint in response area (but not the final proposal response)
      // we show a playful message but keep the proposal response hidden until Yes
      responseArea.classList.remove('hidden');
      responseMessage.innerHTML = '😜 nope! you have to press YES 💕';
      responseSub.innerHTML = 'the "No" button is shy ... keeps running!';
      // make it playful but not the final acceptance
      document.querySelector('.big-emoji').textContent = '🏃‍♀️💨';

      // also change the No button text to "🙈 catch me!"
      noBtn.innerHTML = '🙈 catch me!';
      // ensure yes button still works
    }

    // ----- handle "Yes" click: show the proposal acceptance -----
    function handleYesClick(e) {
      e.preventDefault();
      
      // Reset No button position (back to flow) 
      resetNoButtonPosition();
      // restore original No button text
      noBtn.innerHTML = '❌ No';
      // restore question
      questionText.innerHTML = originalQuestion;

      // hide any previous playful message and show the final proposal response
      responseArea.classList.remove('hidden');
      responseMessage.innerHTML = '💍 YES! a thousand times yes! 💍';
      responseSub.innerHTML = 'you made me the happiest person alive ✨🌹';
      document.querySelector('.big-emoji').textContent = '💞🥂';

      // disable No button (make it harmless) — but we keep it but visually disabled
      noBtn.disabled = true;
      noBtn.style.opacity = '0.6';
      noBtn.style.cursor = 'default';
      noBtn.style.pointerEvents = 'none'; // prevent any further clicks

      // also change yes button style to show it's done
      yesBtn.innerHTML = '✅ done! 💖';
      yesBtn.style.background = '#d4b0c2';
      yesBtn.style.boxShadow = '0 4px 0 #9a7b8a';
      yesBtn.disabled = true;
      yesBtn.style.cursor = 'default';

      // extra: add confetti-like effect (optional) but we keep it simple
    }

    // ----- attach event listeners -----
    yesBtn.addEventListener('click', handleYesClick);

    // For No button: we want it to flee on click, but also on mouseover (to be extra playful)
    // But we only flee on click (as requested: "when i click the no option ... shifted")
    // However, we add a mouseover effect to make it even more playful? But specification says "when click no option, it shifts"
    // We'll also add mouseover to make it shift before click (extra fun) — but we keep primary click.
    // But we must be careful: if user hovers, it moves, then they can't click -> that's even better.
    // But the spec says "when i click the no option" -> we'll make it flee on click, but we add a mouseover flee too for extra fun.
    // However some users might try to click quickly; we make it flee on both click and mouseover (to be extra)
    // To strictly follow spec: we make it flee on click. But we also add a mouseover flee to make it more playful.
    // We will implement both: on mouseover it flees, on click it flees again (and shows teasing message).
    // That way the button is nearly impossible to press.

    function fleeOnInteraction(e) {
      // if button is disabled, ignore
      if (noBtn.disabled) return;
      // if the proposal is accepted (yes clicked) we don't flee
      if (yesBtn.disabled && yesBtn.innerHTML.includes('done')) return;

      // Flee!
      fleeNoButton();

      // Also change the question to tease a little (if not already)
      if (!questionText.innerHTML.includes('catch me')) {
        questionText.innerHTML = '😄 catch me if you can!';
      }

      // Show playful response (but not final)
      responseArea.classList.remove('hidden');
      responseMessage.innerHTML = '🙈 the "No" button is fast!';
      responseSub.innerHTML = 'keep trying ... or just say YES 💗';
      document.querySelector('.big-emoji').textContent = '💨';
      
      // if it's a click, we show extra teasing
      if (e.type === 'click') {
        responseMessage.innerHTML = '😆 almost! but you clicked "No" ... it ran away!';
        responseSub.innerHTML = 'press YES, it\'s the only way 💍';
      }
    }

    // we need to differentiate between click and mouseover
    noBtn.addEventListener('click', function(e) {
      e.preventDefault();
      e.stopPropagation();
      if (noBtn.disabled) return;
      fleeOnInteraction(e);
      // also change no button text to "🙈"
      noBtn.innerHTML = '🙈 no!';
      // after a short time, revert text? not necessary, it's fun.
    });

    noBtn.addEventListener('mouseover', function(e) {
      // only flee if not disabled and not already accepted
      if (noBtn.disabled) return;
      if (yesBtn.disabled && yesBtn.innerHTML.includes('done')) return;
      // flee on hover too (makes it extra hard)
      fleeOnInteraction(e);
      // change text to "🏃"
      noBtn.innerHTML = '🏃‍♂️';
    });

    // reset no button text when mouse leaves (but keep the fun)
    noBtn.addEventListener('mouseleave', function() {
      if (noBtn.disabled) return;
      // if it's not disabled, restore text but keep the fun
      if (!noBtn.innerHTML.includes('catch')) {
        noBtn.innerHTML = '❌ No';
      }
    });

    // also we want to reset if user clicks away? not needed.

    // Prevent default context menu on no button (optional)
    noBtn.addEventListener('contextmenu', (e) => e.preventDefault());

    // When window resizes, we might want to keep button inside viewport.
    // We'll add a resize listener to ensure no button is not out of bounds
    window.addEventListener('resize', function() {
      if (noBtn.style.position === 'fixed') {
        // if the button is fixed, clamp it to viewport
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

    // Additional: if user clicks on "Yes" we reset no button state (already in handleYesClick)
    // But we also need to reset the no button if yes is clicked after no was teased.
    // Already handled in handleYesClick.

    // Initialize: ensure no button is in normal flow
    resetNoButtonPosition();
    // set initial response area hidden
    responseArea.classList.add('hidden');
    // ensure no button is enabled
    noBtn.disabled = false;
    noBtn.style.opacity = '1';
    noBtn.style.cursor = 'pointer';
    noBtn.style.pointerEvents = 'auto';
    noBtn.innerHTML = '❌ No';
    yesBtn.disabled = false;
    yesBtn.style.cursor = 'pointer';
    yesBtn.innerHTML = '✅ Yes';
    yesBtn.style.background = '#f9e1e9';
    yesBtn.style.boxShadow = '0 6px 0 #b86f8a, 0 8px 20px rgba(190, 80, 120, 0.25)';
    document.querySelector('.big-emoji').textContent = '💞';
    responseMessage.innerHTML = 'you said YES! 💍';
    responseSub.innerHTML = 'forever starts now 🌸';
    questionText.innerHTML = originalQuestion;
  })();
</script>
</body>
</html>
