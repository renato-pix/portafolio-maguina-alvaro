<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Portafolio - Alvaro Renato Maguiña Sutacuro</title>
    <style>
        :root {
            --bg-color: #0f172a;
            --card-bg: rgba(30, 41, 59, 0.7);
            --accent: #38bdf8;
            --accent-hover: #818cf8;
            --text-color: #f8fafc;
            --subtext: #94a3b8;
            --completed: #10b981;
            --pending: #64748b;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
        }

        body {
            background: radial-gradient(circle at top left, #1e1b4b, #0f172a);
            color: var(--text-color);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .container {
            width: 100%;
            max-width: 850px;
            background: var(--card-bg);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
            animation: slideUp 0.8s cubic-bezier(0.16, 1, 0.3, 1) forwards;
        }

        header h1 {
            font-size: 2.2rem;
            background: linear-gradient(90deg, var(--accent), var(--accent-hover));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 6px;
        }

        header p {
            color: var(--subtext);
            margin-bottom: 30px;
            font-size: 1rem;
        }

        .weeks-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(360px, 1fr));
            gap: 14px;
            max-height: 60vh;
            overflow-y: auto;
            padding-right: 8px;
        }

        /* Scrollbar personalizado */
        .weeks-grid::-webkit-scrollbar {
            width: 6px;
        }
        .weeks-grid::-webkit-scrollbar-thumb {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 4px;
        }

        .week-card {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 12px;
            padding: 16px 20px;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            display: flex;
            justify-content: space-between;
            align-items: center;
            opacity: 0;
            animation: fadeIn 0.4s ease forwards;
        }

        .week-card:hover {
            transform: translateY(-3px) scale(1.01);
            background: rgba(255, 255, 255, 0.08);
            border-color: var(--accent);
            box-shadow: 0 10px 20px -5px rgba(56, 189, 248, 0.2);
        }

        .week-card a {
            color: var(--text-color);
            text-decoration: none;
            font-weight: 600;
            font-size: 0.95rem;
            flex-grow: 1;
        }

        .badge {
            font-size: 0.75rem;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: 20px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .badge-completed {
            background: rgba(16, 185, 129, 0.2);
            color: var(--completed);
            border: 1px solid var(--completed);
        }

        .badge-pending {
            background: rgba(100, 116, 139, 0.2);
            color: var(--pending);
            border: 1px solid var(--pending);
        }

        /* Animaciones */
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateX(-15px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>E-Portafolio Personal</h1>
            <p><strong>Estudiante:</strong> Alvaro Renato Maguiña Sutacuro | <strong>Asignatura:</strong> Desarrollo Web</p>
        </header>

        <section>
            <div class="weeks-grid">
                <!-- Semana 1 (Completada) -->
                <div class="week-card" style="animation-delay: 0.05s;">
                    <a href="semanas/semana01.jsp">Semana 01: Fundamentos de un Proyecto Web</a>
                    <span class="badge badge-completed">Activo</span>
                </div>

                <!-- Semanas 2 a 16 (Pendientes) -->
                <div class="week-card" style="animation-delay: 0.1s;"><a href="semanas/semana02.jsp">Semana 02: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.15s;"><a href="semanas/semana03.jsp">Semana 03: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.2s;"><a href="semanas/semana04.jsp">Semana 04: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.25s;"><a href="semanas/semana05.jsp">Semana 05: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.3s;"><a href="semanas/semana06.jsp">Semana 06: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.35s;"><a href="semanas/semana07.jsp">Semana 07: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.4s;"><a href="semanas/semana08.jsp">Semana 08: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.45s;"><a href="semanas/semana09.jsp">Semana 09: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.5s;"><a href="semanas/semana10.jsp">Semana 10: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.55s;"><a href="semanas/semana11.jsp">Semana 11: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.6s;"><a href="semanas/semana12.jsp">Semana 12: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.65s;"><a href="semanas/semana13.jsp">Semana 13: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.7s;"><a href="semanas/semana14.jsp">Semana 14: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.75s;"><a href="semanas/semana15.jsp">Semana 15: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
                <div class="week-card" style="animation-delay: 0.8s;"><a href="semanas/semana16.jsp">Semana 16: Por definir</a><span class="badge badge-pending">Pendiente</span></div>
            </div>
        </section>
    </div>
</body>
</html>