<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Professional DevOps Solutions">
    <title>E&E Technologies - DevOps Engineering</title>

    <spring:url value="/resources/core/css/hello.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
            --light-color: #ecf0f1;
            --dark-color: #2c3e50;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            line-height: 1.6;
        }
        
        .navbar {
            background-color: var(--primary-color) !important;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .navbar-brand {
            font-weight: 700;
            color: white !important;
            font-size: 1.5rem;
        }
        
        .jumbotron {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 4rem 2rem;
            margin-bottom: 0;
            border-radius: 0;
        }
        
        .jumbotron h1 {
            font-weight: 700;
            margin-bottom: 1.5rem;
        }
        
        .jumbotron p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }
        
        .btn-primary {
            background-color: var(--accent-color);
            border-color: var(--accent-color);
            padding: 0.75rem 1.5rem;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .btn-primary:hover {
            background-color: #c0392b;
            border-color: #c0392b;
            transform: translateY(-2px);
        }
        
        .feature-box {
            padding: 2rem;
            border-radius: 8px;
            background-color: white;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            margin-bottom: 2rem;
            transition: transform 0.3s ease;
        }
        
        .feature-box:hover {
            transform: translateY(-5px);
        }
        
        .feature-box h2 {
            color: var(--primary-color);
            margin-bottom: 1rem;
        }
        
        .contact-info {
            background-color: var(--light-color);
            padding: 2rem;
            border-radius: 8px;
        }
        
        .contact-info h3 {
            color: var(--secondary-color);
        }
        
        footer {
            background-color: var(--dark-color);
            color: white;
            padding: 2rem 0;
            margin-top: 3rem;
        }
        
        .social-icons a {
            color: white;
            margin-right: 1rem;
            font-size: 1.2rem;
            transition: color 0.3s ease;
        }
        
        .social-icons a:hover {
            color: var(--secondary-color);
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-code-branch me-2"></i>E&E Technologies
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
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="jumbotron">
        <div class="container text-center py-5">
            <h1 class="display-4">${title}</h1>
            <p class="lead">
                <c:if test="${not empty msg}">
                    Hello ${msg}
                </c:if>
                <c:if test="${empty msg}">
                    Welcome to E&E Technologies - Your DevOps Partner
                </c:if>
            </p>
            <div class="mt-4">
                <a class="btn btn-primary btn-lg me-3" href="#" role="button">
                    <i class="fas fa-rocket me-2"></i>Our Services
                </a>
                <a class="btn btn-outline-light btn-lg" href="#" role="button">
                    <i class="fas fa-phone-alt me-2"></i>Contact Us
                </a>
            </div>
        </div>
    </div>

    <div class="container py-5">
        <div class="row mb-5">
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-cloud-upload-alt fa-3x mb-3 text-primary"></i>
                    <h2>Cloud Solutions</h2>
                    <p>Expert cloud migration and management services for AWS, Azure, and Google Cloud.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-cogs fa-3x mb-3 text-primary"></i>
                    <h2>CI/CD Pipelines</h2>
                    <p>Automated deployment pipelines to accelerate your development lifecycle.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-shield-alt fa-3x mb-3 text-primary"></i>
                    <h2>DevSecOps</h2>
                    <p>Integrated security practices throughout your DevOps workflow.</p>
                </div>
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-8">
                <h2 class="mb-3">Master DevOps Engineering</h2>
                <p class="lead">We provide cutting-edge DevOps solutions to streamline your software delivery process and infrastructure management.</p>
                <div class="contact-info mt-4">
                    <h3><i class="fas fa-phone me-2"></i>Contact Us: +91 9980923216</h3>
                    <h3 class="mt-3"><i class="fas fa-envelope me-2"></i>info@eetech.com</h3>
                </div>
            </div>
            <div class="col-md-4">
                <img src="https://via.placeholder.com/400x300" alt="DevOps Illustration" class="img-fluid rounded">
            </div>
        </div>
    </div>

    <footer class="text-center">
        <div class="container">
            <div class="social-icons mb-3">
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-github"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
            <p>&copy; 2025 E&E Technologies. All rights reserved.</p>
            <p class="mb-0">Delivering excellence in DevOps solutions</p>
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
        
        // Navbar background change on scroll
        window.addEventListener('scroll', function() {
            const navbar = document.querySelector('.navbar');
            if (window.scrollY > 50) {
                navbar.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
            } else {
                navbar.style.boxShadow = 'none';
            }
        });
    </script>
</body>
</html>
