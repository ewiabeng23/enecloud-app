<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Enterprise DevOps Solutions">
    <title>E&E Technologies | DevOps Engineering</title>

    <spring:url value="/resources/core/css/hello.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        :root {
            --primary: #0a192f;
            --secondary: #172a45;
            --accent: #64ffda;
            --text-primary: #ccd6f6;
            --text-secondary: #8892b0;
            --white: #e6f1ff;
        }
        
        body {
            font-family: 'Calibre', 'Inter', sans-serif;
            background-color: var(--primary);
            color: var(--text-primary);
            line-height: 1.6;
            min-height: 100vh;
        }
        
        .navbar {
            background-color: rgba(10, 25, 47, 0.9) !important;
            backdrop-filter: blur(10px);
            padding: 1.5rem 0;
            border-bottom: 1px solid rgba(100, 255, 218, 0.1);
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
            color: var(--white);
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
            background: rgba(100, 255, 218, 0.1);
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
            background-color: rgba(100, 255, 218, 0.1);
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
            border: 1px solid rgba(100, 255, 218, 0.1);
        }
        
        .feature-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px -15px rgba(2, 12, 27, 0.7);
            border-color: var(--accent);
        }
        
        .feature-box i {
            font-size: 2.5rem;
            color: var(--accent);
            margin-bottom: 1.5rem;
        }
        
        .feature-box h2 {
            color: var(--white);
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
            border: 1px solid rgba(100, 255, 218, 0.1);
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
            border-top: 1px solid rgba(100, 255, 218, 0.1);
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
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-code me-2"></i>E&E CloudTech Solutions
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="jumbotron text-center">
        <div class="container">
            <h1 class="display-4 mb-4">${title}</h1>
            <p class="lead">
                <c:if test="${not empty msg}">
                    Hello <span class="highlight">${msg}</span>
                </c:if>
                <c:if test="${empty msg}">
                    Transforming Businesses Through <span class="highlight">DevOps Excellence</span>
                </c:if>
            </p>
            <div class="mt-5">
                <a class="btn btn-primary btn-lg me-3" href="#services" role="button">
                    <i class="fas fa-server me-2"></i>Explore Course
                </a>
                <a class="btn btn-outline btn-lg" href="#contact" role="button">
                    <i class="fas fa-paper-plane me-2"></i>Get In Touch
                </a>
            </div>
        </div>
    </div>

    <div class="container py-5" id="services">
        <h2 class="section-title text-center">Our <span class="highlight">Services</span></h2>
        <div class="row">
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-cloud"></i>
                    <h2>Cloud Architecture</h2>
                    <p>Design and implementation of scalable, secure cloud infrastructure on AWS, Azure, and GCP.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-tasks"></i>
                    <h2>CI/CD Automation</h2>
                    <p>End-to-end pipeline automation with Jenkins, GitLab CI, and GitHub Actions for rapid deployments.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-lock"></i>
                    <h2>Infrastructure Security</h2>
                    <p>Comprehensive security hardening and compliance for your cloud-native applications.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5" id="about">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h2 class="section-title">Master <span class="highlight">DevOps Engineering</span></h2>
                <p class="lead">We specialize in enterprise-grade DevOps transformations that deliver measurable business value.</p>
                <p>Our team of certified experts brings decades of experience implementing DevOps practices at scale for Fortune 500 companies and high-growth startups alike.</p>
                
                <div class="contact-info mt-5">
                    <h3 class="mt-3"><i class="fas fa-envelope me-2"></i>peoplecentre@enecloudtech.com</h3>
                    <p class="mt-3">Available 24/7 for critical infrastructure support</p>
                </div>
            </div>
            <div class="col-md-6">
                <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" alt="DevOps Process" class="img-fluid rounded shadow">
            </div>
        </div>
    </div>

    <footer id="contact">
        <div class="container text-center">
            <div class="social-icons mb-4">
                <a href="#"><i class="fab fa-github"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-dev"></i></a>
            </div>
            <p>&copy; 2025 <span class="highlight">E&E Technologies</span>. All rights reserved.</p>
            <p class="text-muted">Designed and built with <i class="fas fa-heart text-danger"></i> by our DevOps team</p>
        </div>
    </footer>

    <spring:url value="/resources/core/css/hello.js" var="coreJs" />
    <spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="${bootstrapJs}"></script>
    <script src="${coreJs}"></script>
    <script>
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
        
        // Navbar scroll effect
        window.addEventListener('scroll', function() {
            const navbar = document.querySelector('.navbar');
            if (window.scrollY > 50) {
                navbar.style.padding = '1rem 0';
                navbar.style.backgroundColor = 'rgba(10, 25, 47, 0.95)';
            } else {
                navbar.style.padding = '1.5rem 0';
                navbar.style.backgroundColor = 'rgba(10, 25, 47, 0.9)';
            }
        });
        
        // Animation on scroll
        const observerOptions = {
            threshold: 0.1
        };
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('animate__animated', 'animate__fadeInUp');
                    observer.unobserve(entry.target);
                }
            });
        }, observerOptions);
        
        document.querySelectorAll('.feature-box').forEach(box => {
            observer.observe(box);
        });
    </script>
</body>
</html>
