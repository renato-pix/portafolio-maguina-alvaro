<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 02 - Desarrollo Web</title>
    <style>
        :root {
            --bg-color: #0f172a;
            --card-bg: rgba(30, 41, 59, 0.7);
            --accent: #38bdf8;
            --accent-hover: #818cf8;
            --text-color: #f8fafc;
            --subtext: #94a3b8;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
        }

        body {
            background: radial-gradient(circle at top right, #1e1b4b, #0f172a);
            color: var(--text-color);
            min-height: 100vh;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 100%;
            max-width: 800px;
            background: var(--card-bg);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
            animation: zoomIn 0.5s cubic-bezier(0.16, 1, 0.3, 1) forwards;
        }

        .btn-back {
            display: inline-flex;
            align-items: center;
            color: var(--accent);
            text-decoration: none;
            font-weight: 600;
            margin-bottom: 25px;
            transition: transform 0.2s ease;
        }

        .btn-back:hover {
            transform: translateX(-5px);
        }

        h1 {
            font-size: 2rem;
            margin-bottom: 12px;
            background: linear-gradient(90deg, var(--accent), var(--accent-hover));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        p {
            color: var(--subtext);
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .card-action {
            background: rgba(255, 255, 255, 0.03);
            border: 1px dashed rgba(255, 255, 255, 0.15);
            border-radius: 12px;
            padding: 30px;
            text-align: center;
        }

        .btn-action {
            display: inline-block;
            background: linear-gradient(135deg, var(--accent), var(--accent-hover));
            color: #0f172a;
            padding: 14px 28px;
            border-radius: 10px;
            text-decoration: none;
            font-weight: 700;
            box-shadow: 0 4px 20px rgba(56, 189, 248, 0.3);
            transition: all 0.3s ease;
        }

        .btn-action:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 30px rgba(56, 189, 248, 0.5);
        }

        @keyframes zoomIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="../index.jsp" class="btn-back">← Volver al e-portafolio</a>
        <h1>Semana 02: Título de la Semana 02</h1>
        <p>Evidencia y material correspondiente a las actividades desarrolladas en la segunda sesión de aprendizaje.</p>
        
        <div class="card-action">
            <!-- Sustituye el # con el enlace real a tu trabajo, presentación o infografía -->
            <a href="#" target="_blank" class="btn-action">Ver Recurso / Evidencia</a>
        </div>
    </div>
</body>
</html>