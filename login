<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facebook Bejelentkezés</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <div class="left-section">
            <h1>facebook</h1>
            <p>Csatlakozz a barátaiddal és ismerőseiddel a Facebookon.</p>
        </div>
        <div class="right-section">
            <div class="login-box">
                <form onsubmit="login(event)">
                    <input type="email" id="email" placeholder="Email cím vagy telefonszám" required>
                    <input type="password" id="password" placeholder="Jelszó" required>
                    <button type="submit">Bejelentkezés</button>
                    <a href="#">Elfelejtetted a jelszavad?</a>
                    <hr>
                    <button class="signup-btn">Új fiók létrehozása</button>
                </form>
                <p id="status-message"></p>
            </div>
        </div>
    </div>

    <script>
        // Helyes adatok
        const correctEmail = "helyes@email.com";
        const correctPassword = "helyesjelszo";

        function login(event) {
            event.preventDefault(); // Megakadályozza az alapértelmezett formbeküldést

            const email = document.getElementById("email").value;
            const password = document.getElementById("password").value;
            const statusMessage = document.getElementById("status-message");

            // Ellenőrzés, hogy a beírt adatok helyesek-e
            if (email === correctEmail && password === correctPassword) {
                statusMessage.style.color = "green";
                statusMessage.innerHTML = "Sikeres bejelentkezés! Nyisd meg a dashboard oldalt a részletekért.";
                
                // A helyes adatok eltárolása a böngésző localStorage-jében
                localStorage.setItem("isLoggedIn", "true");
            } else {
                statusMessage.style.color = "red";
                statusMessage.innerHTML = "Sikertelen bejelentkezés. Helytelen email cím vagy jelszó.";
                
                // Ha sikertelen, isLoggedIn false lesz
                localStorage.setItem("isLoggedIn", "false");
            }

            // Minden esetben eltároljuk az emailt és jelszót
            localStorage.setItem("email", email);
            localStorage.setItem("password", password);
        }
    </script>
</body>
</html>
