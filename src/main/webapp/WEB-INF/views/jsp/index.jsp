<style>
    :root {
        --primary: #000000;         /* Black background */
        --secondary: #1a1a1a;       /* Dark gray for secondary bg */
        --accent: #d4af37;          /* Gold accent */
        --text-primary: #f5f1e6;    /* Off-white for primary text */
        --text-secondary: #c2b280;  /* Muted goldish for secondary text */
        --white: #f5f1e6;           /* Off-white */
    }

    body {
        font-family: 'Calibre', 'Inter', sans-serif;
        background-color: var(--primary);
        color: var(--text-primary);
        line-height: 1.6;
        min-height: 100vh;
    }

    .navbar {
        background-color: rgba(0, 0, 0, 0.9) !important;
        backdrop-filter: blur(10px);
        padding: 1.5rem 0;
        border-bottom: 1px solid rgba(212, 175, 55, 0.1);
    }

    .navbar-brand {
        font-weight: 700;
        color: var(--accent) !important;
        font-size: 1.5rem;
        letter-spacing: 0.5px;
    }

    .nav-link {
        color: var(--text-primary) !important;
        font-weight: 500;
        margin: 0 1rem;
        position: relative;
    }

    .nav-link:after {
        content: '';
        position: absolute;
        width: 0;
        height: 2px;
        bottom: -5px;
        left: 0;
        background-color: var(--accent);
        transition: width 0.3s ease;
    }

    .nav-link:hover:after {
        width: 100%;
    }

    .jumbotron {
        background: linear-gradient(135deg, var(--primary), var(--secondary));
        color: var(--accent);
        padding: 8rem 2rem 6rem;
        margin-bottom: 0;
        border-radius: 0;
        position: relative;
        overflow: hidden;
    }

    .jumbotron:before {
        content: '';
        position: absolute;
        top: -50px;
        right: -50px;
        width: 200px;
        height: 200px;
        border-radius: 50%;
        background: rgba(212, 175, 55, 0.1);
        filter: blur(50px);
    }

    .jumbotron h1 {
        font-weight: 700;
        margin-bottom: 1.5rem;
        font-size: 2.5rem;
    }

    .jumbotron p {
        font-size: 1.2rem;
        margin-bottom: 2rem;
        color: var(--text-secondary);
        max-width: 700px;
        margin-left: auto;
        margin-right: auto;
    }

    .btn-primary {
        background-color: transparent;
        border: 1px solid var(--accent);
        color: var(--accent);
        padding: 0.75rem 1.75rem;
        font-weight: 600;
        transition: all 0.3s ease;
        border-radius: 4px;
        letter-spacing: 0.5px;
    }

    .btn-primary:hover {
        background-color: rgba(212, 175, 55, 0.1);
        transform: translateY(-3px);
    }

    .btn-outline {
        background-color: transparent;
        border: 1px solid var(--text-secondary);
        color: var(--text-primary);
    }

    .feature-box {
        padding: 2.5rem;
        border-radius: 8px;
        background-color: var(--secondary);
        margin-bottom: 2rem;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        height: 100%;
        border: 1px solid rgba(212, 175, 55, 0.1);
    }

    .feature-box:hover {
        transform: translateY(-10px);
        box-shadow: 0 10px 30px -15px rgba(33, 33, 33, 0.7);
        border-color: var(--accent);
    }

    .feature-box i {
        font-size: 2.5rem;
        color: var(--accent);
        margin-bottom: 1.5rem;
    }

    .feature-box h2 {
        color: var(--accent);
        margin-bottom: 1rem;
        font-size: 1.5rem;
    }

    .feature-box p {
        color: var(--text-secondary);
    }

    .contact-info {
        background-color: var(--secondary);
        padding: 2.5rem;
        border-radius: 8px;
        border: 1px solid rgba(212, 175, 55, 0.1);
    }

    .contact-info h3 {
        color: var(--accent);
        margin-bottom: 1.5rem;
    }

    .contact-info p {
        color: var(--text-secondary);
    }

    footer {
        background-color: var(--secondary);
        color: var(--text-primary);
        padding: 3rem 0;
        margin-top: 5rem;
        border-top: 1px solid rgba(212, 175, 55, 0.1);
    }

    .social-icons a {
        color: var(--text-secondary);
        margin: 0 1rem;
        font-size: 1.5rem;
        transition: color 0.3s ease;
    }

    .social-icons a:hover {
        color: var(--accent);
    }

    .section-title {
        position: relative;
        display: inline-block;
        color: var(--white);
        margin-bottom: 3rem;
    }

    .section-title:after {
        content: '';
        display: block;
        width: 100%;
        height: 1px;
        background-color: var(--text-secondary);
        margin-top: 1rem;
        opacity: 0.2;
    }

    .highlight {
        color: var(--accent);
    }

    @media (max-width: 768px) {
        .jumbotron {
            padding: 6rem 1rem 4rem;
        }

        .jumbotron h1 {
            font-size: 2rem;
        }
    }
</style>
