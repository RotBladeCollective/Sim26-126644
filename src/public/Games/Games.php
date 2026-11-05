<?php include __DIR__ . '/../conexao.php'; ?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dark Bite</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="games.css">
</head>
<body>

    <section class="hero">
        <h1>Dark Bite</h1>
        <div class="divisor">◆ ◆ ◆</div>
        <p>Três mundos. Três histórias.</p>
        <a href="#jogos" class="seta">▼</a>
    </section>

    <main id="jogos">
        <?php
        $resultado = $conn->query("SELECT * FROM games ORDER BY id");
        $i = 0;
        while ($jogo = $resultado->fetch_assoc()):
            $lado = ($i % 2 == 0) ? 'esquerda' : 'direita';
            $i++;
        ?>
        <section class="jogo <?= $lado ?>">
            <div class="moldura">
                <img src="img/<?= htmlspecialchars($jogo['imagem']) ?>"
                     alt="<?= htmlspecialchars($jogo['nome']) ?>"
                     onerror="this.style.display='none'">
                <span class="reserva"><?= htmlspecialchars($jogo['nome']) ?></span>
            </div>
            <div class="texto">
                <span class="genero"><?= htmlspecialchars($jogo['genero']) ?> · <?= htmlspecialchars($jogo['plataforma']) ?></span>
                <h2><?= htmlspecialchars($jogo['nome']) ?></h2>
                <div class="divisor">◆</div>
                <p><?= htmlspecialchars($jogo['descricao']) ?></p>
            </div>
        </section>
        <?php endwhile; ?>
    </main>

    <footer>◆ Projeto escolar ◆</footer>

</body>
</html>