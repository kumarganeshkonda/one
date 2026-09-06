<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Will You Be Mine Forever?</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 20px;
        }

        .proposal-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 60px 60px 40px 40px;
            box-shadow: 0 30px 80px rgba(0, 0, 0, 0.3);
            padding: 50px 40px 35px;
            max-width: 650px;
            width: 100%;
            text-align: center;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .rainbow-title {
            font-size: 42px;
            font-weight: 800;
            margin-bottom: 10px;
            letter-spacing: -1px;
        }

        .rainbow-title .letter {
            display: inline-block;
            animation: rainbow 3s linear infinite;
        }

        @keyframes rainbow {
            0% { color: #ff6b6b; }
            16% { color: #feca57; }
            33% { color: #48dbfb; }
            50% { color: #1dd1a1; }
            66% { color: #5f27cd; }
            83% { color: #ee5a24; }
            100% { color: #ff6b6b; }
        }

        .sub-message {
            font-size: 20px;
            font-weight: 500;
            color: #6c5ce7;
            background: rgba(108, 92, 231, 0.1);
            padding: 10px 30px;
            border-radius: 50px;
            display: inline-block;
            margin: 10px 0 20px;
            border: 2px solid #a29bfe;
        }

        .question {
            font-size: 32px;
            font-weight: 700;
            padding: 18px 30px;
            border-radius: 80px;
            display: inline-block;
            margin: 10px auto 30px;
            background: linear-gradient(135deg, #ff6b6b, #ee5a24, #feca57, #48dbfb, #a29bfe, #fd79a8);
            background-size: 300% 300%;
            animation: gradientMove 4s ease infinite;
            color: white;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
        }

        @keyframes gradientMove {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .button-group {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 35px;
            margin: 25px 0 15px;
            min-height: 100px;
            position: relative;
            flex-wrap: wrap;
        }

        .btn {
            border: none;
            padding: 18px 50px;
            border-radius: 60px;
            font-size: 24px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.15s ease;
            min-width: 150px;
            font-family: inherit;
            letter-spacing: 1px;
            text-transform: uppercase;
            position: relative;
            color: white;
        }

        .btn-yes {
            background: linear-gradient(135deg, #00b894, #00cec9);
            box-shadow: 0 6px 25px rgba(0, 206, 201, 0.4);
        }

        .btn-yes:hover {
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 10px 35px rgba(0, 206, 201, 0.5);
        }

        .btn-yes:active {
            transform: translateY(2px) scale(0.97);
        }

        .btn-no {
            background: linear-gradient(135deg, #fd79a8, #e17055);
            box-shadow: 0 6px 25px rgba(225, 112, 85, 0.4);
            position: relative;
        }

        .btn-no:hover {
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 10px 35px rgba(225, 112, 85, 0.5);
        }

        .btn-no--flee {
            transition: left 0.1s ease, top 0.1s ease;
        }

        .response-area {
            margin-top: 30px;
            padding: 25px;
            background: linear-gradient(135deg, #dfe6e9, #b2bec3);
            border-radius: 50px;
            min-height: 120px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
            border: 3px solid #636e72;
        }

        .response-area .message {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .response-area .message .highlight-yes {
            color: #00b894;
        }

        .response-area .message .highlight-no {
            color: #e17055;
        }

        .response-area .sub {
            font-size: 18px;
            color: #2d3436;
            opacity: 0.8;
            margin-top: 5px;
            font-weight: 500;
        }

        .response-area .response-emoji-text {
            font-size: 40px;
            margin-bottom: 5px;
        }

        .hidden {
            display: none !important;
        }

        .footer {
            margin-top: 25px;
            padding-top: 20px;
            border-top: 3px dashed #dfe6e9;
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .footer span {
            padding: 8px 25px;
            border-radius: 50px;
            font-size: 16px;
            font-weight: 600;
            background: linear-gradient(135deg, #fd79a8, #fdcb6e);
            color: white;
        }

        .footer .span2 {
            background: linear-gradient(135deg, #00b894, #00cec9);
        }

        .multi-color-text {
            font-size: 18px;
            font-weight: 600;
        }

        .multi-color-text .c1 { color: #ff6b6b; }
        .multi-color-text .c2 { color: #feca57; }
        .multi-color-text .c3 { color: #48dbfb; }
        .multi-color-text .c4 { color: #1dd1a1; }
        .multi-color-text .c5 { color: #5f27cd; }
        .multi-color-text .c6 { color: #ee5a24; }
        .multi-color-text .c7 { color: #00b894; }
        .multi-color-text .c8 { color: #e17055; }

        .btn:disabled {
            opacity: 0.6;
            cursor: not-allowed;
            transform: none !important;
        }

        @media (max-width: 550px) {
            .proposal-card { padding: 30px 20px; }
            .rainbow-title { font-size: 30px; }
            .question { font-size: 22px; padding: 14px 20px; }
            .btn { font-size: 18px; padding: 14px 30px; min-width: 120px; }
            .button-group { gap: 15px; }
            .response-area .message { font-size: 22px; }
        }
    </style>
</head>
<body>

<div class="proposal-card">
    <div class="rainbow-title">
        <span class="letter">A</span>
        <span class="letter"></span>
        <span class="letter">S</span>
        <span class="letter">P</span>
        <span class="letter">E</span>
        <span class="letter">C</span>
        <span class="letter">I</span>
        <span class="letter">A</span>
        <span class="letter">L</span>
        <span class="letter"></span>
        <span class="letter">Q</span>
        <span class="letter">U</span>
        <span class="letter">E</span>
        <span class="letter">S</span>
        <span class="letter">T</span>
        <span class="letter">I</span>
        <span class="letter">O</span>
        <span class="letter">N</span>
    </div>

    <div class="multi-color-text" style="font-size: 22px; margin: 5px 0 15px;">
        <span class="c1">F</span>
        <span class="c2">O</span>
        <span class="c3">R</span>
        <span class="c4"></span>
        <span class="c5">Y</span>
        <span class="c6">O</span>
        <span class="c7">U</span>
        <span class="c8"></span>
        <span class="c1">W</span>
        <span class="c2">I</span>
        <span class="c3">T</span>
        <span class="c4">H</span>
        <span class="c5"></span>
        <span class="c6">A</span>
        <span class="c7">L</span>
        <span class="c8">L</span>
        <span class="c1"></span>
        <span class="c2">M</span>
        <span class="c3">Y</span>
        <span class="c4"></span>
        <span class="c5">H</span>
        <span class="c6">E</span>
        <span class="c7">A</span>
        <span class="c8">R</span>
        <span class="c1">T</span>
    </div>

    <div class="sub-message">
        A QUESTION FROM THE HEART
    </div>

    <div class="question" id="questionText">
        WILL YOU BE MINE FOREVER?
    </div>

    <div class="button-group" id="buttonGroup">
        <button class="btn btn-yes" id="yesBtn">YES</button>
        <button class="btn btn-no btn-no--flee" id="noBtn">NO</button>
    </div>

    <div id="responseArea" class="response-area hidden">
        <div class="response-emoji-text" id="responseEmoji">💞</div>
        <div class="message" id="responseMessage">
            <span class="highlight-yes">YES!</span> FOREVER AND ALWAYS!
        </div>
        <div class="sub" id="responseSub">You made me the happiest person alive</div>
    </div>

    <div class="footer">
        <span>CLICK YES · NO RUNS AWAY</span>
        <span class="span2">MADE WITH LOVE</span>
    </div>
</div>

<script>
    (function() {
        const yesBtn = document.getElementById('yesBtn');
        const noBtn = document.getElementById('noBtn');
        const responseArea = document.getElementById('responseArea');
        const responseMessage = document.getElementById('responseMessage');
        const responseSub = document.getElementById('responseSub');
        const responseEmoji = document.getElementById('responseEmoji');
        const questionText = document.getElementById('questionText');
        const originalQuestion = questionText.innerHTML;

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

            const yesRect = yesBtn.getBoundingClientRect();
            const yesCenterX = yesRect.left + yesRect.width / 2;
            const yesCenterY = yesRect.top + yesRect.height / 2;
            const dx = (randomX + btnWidth/2) - yesCenterX;
            const dy = (randomY + btnHeight/2) - yesCenterY;
            const distance = Math.hypot(dx, dy);
            
            if (distance < 160) {
                const angle = Math.atan2(dy, dx);
                const pushX = Math.cos(angle) * 100;
                const pushY = Math.sin(angle) * 100;
                randomX = Math.min(maxX, Math.max(minX, randomX + pushX));
                randomY = Math.min(maxY, Math.max(minY, randomY + pushY));
            }

            noBtn.style.position = 'fixed';
            noBtn.style.left = randomX + 'px';
            noBtn.style.top = randomY + 'px';
            noBtn.style.zIndex = 999;
            noBtn.style.transform = 'scale(1)';
            noBtn.style.boxShadow = '0 8px 0 #e17055, 0 15px 35px rgba(0,0,0,0.2)';
        }

        function resetNoButtonPosition() {
            noBtn.style.position = '';
            noBtn.style.left = '';
            noBtn.style.top = '';
            noBtn.style.zIndex = '';
            noBtn.style.transform = '';
            noBtn.style.boxShadow = '';
        }

        function handleNoInteraction(e) {
            if (noBtn.disabled) return;
            if (yesBtn.disabled && yesBtn.innerHTML.includes('DONE')) return;

            fleeNoButton();

            if (!questionText.innerHTML.includes('CATCH')) {
                questionText.innerHTML = 'CATCH ME IF YOU CAN!';
            }

            responseArea.classList.remove('hidden');
            responseEmoji.textContent = '🏃';
            responseMessage.innerHTML = '<span class="highlight-no">NO!</span> THE BUTTON IS FAST!';
            responseSub.innerHTML = 'KEEP TRYING ... OR JUST SAY YES';

            if (e && e.type === 'click') {
                responseMessage.innerHTML = '<span class="highlight-no">ALMOST!</span> YOU CLICKED NO ... IT RAN AWAY!';
                responseSub.innerHTML = 'PRESS YES, ITS THE ONLY WAY';
                noBtn.innerHTML = 'NO!';
            } else if (e && e.type === 'mouseover') {
                noBtn.innerHTML = 'RUN';
            }
        }

        function handleYesClick(e) {
            e.preventDefault();

            resetNoButtonPosition();
            noBtn.innerHTML = 'NO';
            questionText.innerHTML = originalQuestion;

            responseArea.classList.remove('hidden');
            responseEmoji.textContent = '💞';
            responseMessage.innerHTML = '<span class="highlight-yes">YES!</span> FOREVER AND ALWAYS!';
            responseSub.innerHTML = 'You made me the happiest person alive';

            noBtn.disabled = true;
            noBtn.style.opacity = '0.4';
            noBtn.style.cursor = 'default';
            noBtn.style.pointerEvents = 'none';
            
            yesBtn.disabled = true;
            yesBtn.innerHTML = 'DONE!';
            yesBtn.style.background = 'linear-gradient(135deg, #6c5ce7, #a29bfe)';
            yesBtn.style.boxShadow = '0 4px 0 #4834d4';
            yesBtn.style.cursor = 'default';
        }

        yesBtn.addEventListener('click', handleYesClick);

        noBtn.addEventListener('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            if (noBtn.disabled) return;
            handleNoInteraction(e);
        });

        noBtn.addEventListener('mouseover', function(e) {
            if (noBtn.disabled) return;
            if (yesBtn.disabled && yesBtn.innerHTML.includes('DONE')) return;
            handleNoInteraction(e);
        });

        noBtn.addEventListener('mouseleave', function() {
            if (noBtn.disabled) return;
            if (!noBtn.innerHTML.includes('CATCH')) {
                noBtn.innerHTML = 'NO';
            }
        });

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

        noBtn.addEventListener('contextmenu', (e) => e.preventDefault());

        responseArea.classList.add('hidden');
        resetNoButtonPosition();
        noBtn.disabled = false;
        noBtn.style.opacity = '1';
        noBtn.style.pointerEvents = 'auto';
        noBtn.innerHTML = 'NO';
        yesBtn.disabled = false;
        yesBtn.innerHTML = 'YES';
        yesBtn.style.background = 'linear-gradient(135deg, #00b894, #00cec9)';
        yesBtn.style.boxShadow = '0 6px 25px rgba(0, 206, 201, 0.4)';
        responseEmoji.textContent = '💞';
        responseMessage.innerHTML = '<span class="highlight-yes">YES!</span> FOREVER AND ALWAYS!';
        responseSub.innerHTML = 'You made me the happiest person alive';
        questionText.innerHTML = originalQuestion;
    })();
</script>
</body>
</html>
