```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A private, romantic and consensual intimate invitation.">
    <title>Private Invitation ❤️</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(
                135deg,
                #667eea 0%,
                #764ba2 50%,
                #f093fb 100%
            );
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            padding: 20px;
        }

        .proposal-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 60px 60px 40px 40px;
            box-shadow: 0 30px 80px rgba(0, 0, 0, 0.3);
            padding: 50px 40px 35px;
            max-width: 700px;
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
            0%   { color: #ff6b6b; }
            16%  { color: #feca57; }
            33%  { color: #48dbfb; }
            50%  { color: #1dd1a1; }
            66%  { color: #5f27cd; }
            83%  { color: #ee5a24; }
            100% { color: #ff6b6b; }
        }

        .sub-message {
            font-size: 19px;
            font-weight: 600;
            color: #6c5ce7;
            background: rgba(108, 92, 231, 0.1);
            padding: 10px 30px;
            border-radius: 50px;
            display: inline-block;
            margin: 10px 0 20px;
            border: 2px solid #a29bfe;
        }

        .question {
            font-size: 27px;
            font-weight: 700;
            padding: 20px 30px;
            border-radius: 80px;
            display: inline-block;
            margin: 10px auto 30px;
            background: linear-gradient(
                135deg,
                #ff6b6b,
                #ee5a24,
                #feca57,
                #48dbfb,
                #a29bfe,
                #fd79a8
            );
            background-size: 300% 300%;
            animation: gradientMove 4s ease infinite;
            color: white;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
            line-height: 1.4;
        }

        @keyframes gradientMove {
            0%   { background-position: 0% 50%; }
            50%  { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .date-details {
            background: rgba(108, 92, 231, 0.08);
            border-radius: 30px;
            padding: 20px;
            margin: 10px 0 20px;
            border: 2px dashed #a29bfe;
        }

        .date-details .detail {
            font-size: 18px;
            color: #2d3436;
            padding: 8px 0;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            flex-wrap: wrap;
        }

        .date-details .detail .icon {
            font-size: 24px;
        }

        .date-details .detail .label {
            font-weight: 700;
            color: #6c5ce7;
        }

        .consent-note {
            margin-top: 12px;
            padding: 12px 18px;
            border-radius: 22px;
            background: rgba(0, 184, 148, 0.08);
            border: 1px solid rgba(0, 184, 148, 0.35);
            color: #2d3436;
            font-size: 15px;
            line-height: 1.5;
        }

        .button-group {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 25px;
            margin: 25px 0 15px;
            min-height: 90px;
            flex-wrap: wrap;
        }

        .btn {
            border: none;
            padding: 18px 50px;
            border-radius: 60px;
            font-size: 22px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.15s ease;
            min-width: 150px;
            font-family: inherit;
            letter-spacing: 1px;
            text-transform: uppercase;
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
        }

        .btn-no:hover {
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 10px 35px rgba(225, 112, 85, 0.5);
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
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .highlight-yes {
            color: #00b894;
        }

        .highlight-no {
            color: #e17055;
        }

        .response-area .sub {
            font-size: 18px;
            color: #2d3436;
            opacity: 0.85;
            margin-top: 5px;
            font-weight: 500;
        }

        .response-emoji-text {
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
            font-size: 15px;
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

        .floating-hearts {
            position: fixed;
            pointer-events: none;
            z-index: 9999;
        }

        .heart-particle {
            position: absolute;
            font-size: 24px;
            animation: floatUp 3s ease-in forwards;
        }

        @keyframes floatUp {
            0% {
                transform: translateY(0) scale(1);
                opacity: 1;
            }

            100% {
                transform: translateY(-200px) scale(1.5);
                opacity: 0;
            }
        }

        @media (max-width: 550px) {
            .proposal-card {
                padding: 30px 20px;
            }

            .rainbow-title {
                font-size: 30px;
            }

            .question {
                font-size: 20px;
                padding: 14px 20px;
            }

            .btn {
                font-size: 18px;
                padding: 14px 30px;
                min-width: 120px;
            }

            .button-group {
                gap: 15px;
            }

            .response-area .message {
                font-size: 22px;
            }

            .date-details .detail {
                font-size: 15px;
            }
        }
    </style>
</head>

<body>

<div class="proposal-card">

    <div class="rainbow-title">
        <span class="letter">P</span>
        <span class="letter">R</span>
        <span class="letter">I</span>
        <span class="letter">V</span>
        <span class="letter">A</span>
        <span class="letter">T</span>
        <span class="letter">E</span>
        <span class="letter">&nbsp;</span>
        <span class="letter">I</span>
        <span class="letter">N</span>
        <span class="letter">V</span>
        <span class="letter">I</span>
        <span class="letter">T</span>
        <span class="letter">A</span>
        <span class="letter">T</span>
        <span class="letter">I</span>
        <span class="letter">O</span>
        <span class="letter">N</span>
    </div>

    <div class="multi-color-text" style="font-size: 22px; margin: 5px 0 15px;">
        <span class="c1">F</span>
        <span class="c2">O</span>
        <span class="c3">R</span>
        <span class="c4">&nbsp;</span>
        <span class="c5">A</span>
        <span class="c6">N</span>
        <span class="c7">&nbsp;</span>
        <span class="c8">I</span>
        <span class="c1">N</span>
        <span class="c2">T</span>
        <span class="c3">I</span>
        <span class="c4">M</span>
        <span class="c5">A</span>
        <span class="c6">T</span>
        <span class="c7">E</span>
        <span class="c8">&nbsp;</span>
        <span class="c1">E</span>
        <span class="c2">V</span>
        <span class="c3">E</span>
        <span class="c4">N</span>
        <span class="c5">I</span>
        <span class="c6">N</span>
        <span class="c7">G</span>
    </div>

    <div class="sub-message"> ❤️ A PRIVATE SEXUAL INVITATION ❤️ </div>

    <div class="question" id="questionText">
        WOULD YOU LIKE TO SPEND<br>
        A PRIVATE, INTIMATE EVENING WITH ME?
    </div>

    <div class="date-details">

        <div class="detail">
            <span class="icon">📅</span>
            <span class="label">When:</span>
            <span>This Saturday at 7:00 PM</span>
        </div>

        <div class="detail">
            <span class="icon">📍</span>
            <span class="label">Setting:</span>
            <span>A private and comfortable evening together</span>
        </div>

        <div class="detail">
            <span class="icon">💋</span>
            <span class="label">Plan:</span>
            <span>Romance, closeness, chemistry and time just for us</span>
        </div>

        <div class="detail">
            <span class="icon">🌹</span>
            <span class="label">Mood:</span>
            <span>Relaxed, private and completely at your pace</span>
        </div>

        <div class="consent-note">
            ❤️ Only if you genuinely want this. No pressure, no expectations,
            and "NO" is always completely okay.
        </div>

    </div>

    <div class="button-group" id="buttonGroup">
        <button class="btn btn-yes" id="yesBtn">
            YES ❤️
        </button>

        <button class="btn btn-no" id="noBtn">
            NO
        </button>
    </div>

    <div id="responseArea" class="response-area hidden" aria-live="polite">

        <div class="response-emoji-text" id="responseEmoji">
            💞
        </div>

        <div class="message" id="responseMessage">
            <span class="highlight-yes">YES!</span>
            I'D LOVE THAT TOO ❤️
        </div>

        <div class="sub" id="responseSub">
            Let's make it special, comfortable and mutual.
        </div>

    </div>

    <div class="footer">
        <span>PRIVATE · MUTUAL · CONSENSUAL</span>
        <span class="span2">MADE WITH LOVE ❤️</span>
    </div>

</div>

<script>
(function () {

    const yesBtn = document.getElementById("yesBtn");
    const noBtn = document.getElementById("noBtn");

    const responseArea = document.getElementById("responseArea");
    const responseMessage = document.getElementById("responseMessage");
    const responseSub = document.getElementById("responseSub");
    const responseEmoji = document.getElementById("responseEmoji");

    const questionText = document.getElementById("questionText");

    const originalQuestion = questionText.innerHTML;

    function createHearts() {

        const heartContainer = document.createElement("div");
        heartContainer.className = "floating-hearts";

        document.body.appendChild(heartContainer);

        const symbols = [
            "❤️",
            "💕",
            "💗",
            "💖",
            "💞",
            "✨",
            "🌹",
            "💝"
        ];

        for (let i = 0; i < 20; i++) {

            const heart = document.createElement("div");
            heart.className = "heart-particle";

            heart.textContent =
                symbols[Math.floor(Math.random() * symbols.length)];

            heart.style.left =
                Math.random() * 100 + "vw";

            heart.style.top =
                Math.random() * 100 + "vh";

            heart.style.animationDuration =
                (Math.random() * 2 + 2) + "s";

            heart.style.fontSize =
                (Math.random() * 20 + 16) + "px";

            heartContainer.appendChild(heart);

            setTimeout(() => {
                heart.remove();
            }, 4000);
        }

        setTimeout(() => {
            heartContainer.remove();
        }, 4500);
    }

    function handleYesClick(event) {

        event.preventDefault();

        responseArea.classList.remove("hidden");

        responseEmoji.textContent = "💞";

        responseMessage.innerHTML =
            '<span class="highlight-yes">YES!</span> I\'D LOVE THAT TOO ❤️';

        responseSub.textContent =
            "Let's make it special, comfortable and mutual.";

        questionText.innerHTML =
            "IT'S A YES ❤️<br>LET'S MAKE IT A BEAUTIFUL NIGHT.";

        createHearts();

        yesBtn.disabled = true;
        noBtn.disabled = true;

        yesBtn.textContent = "ACCEPTED ❤️";

        yesBtn.style.background =
            "linear-gradient(135deg, #6c5ce7, #a29bfe)";

        yesBtn.style.boxShadow =
            "0 4px 0 #4834d4";

        noBtn.style.opacity = "0.5";
    }

    function handleNoClick(event) {

        event.preventDefault();

        responseArea.classList.remove("hidden");

        responseEmoji.textContent = "🤍";

        responseMessage.innerHTML =
            '<span class="highlight-no">THAT\'S OKAY.</span>';

        responseSub.textContent =
            "Thank you for being honest. No pressure, ever.";

        questionText.innerHTML =
            "NO WORRIES ❤️<br>YOUR COMFORT COMES FIRST.";

        noBtn.disabled = true;
        yesBtn.disabled = true;

        noBtn.textContent = "NO ❤️";
        yesBtn.textContent = "THANK YOU";
    }

    yesBtn.addEventListener("click", handleYesClick);

    noBtn.addEventListener("click", handleNoClick);

    responseArea.classList.add("hidden");

    yesBtn.disabled = false;
    noBtn.disabled = false;

    yesBtn.textContent = "YES ❤️";
    noBtn.textContent = "NO";

    questionText.innerHTML = originalQuestion;

})();
</script>

</body>
</html>
```
