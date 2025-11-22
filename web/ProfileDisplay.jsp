<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Profile Summary</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
      html, body {
          height: 100%;
          margin: 0;
          padding: 0;
      }
      .profile-pic {
          width: 120px;
          height: 120px;
          object-fit: cover;
          border-radius: 50%;
          border: 4px solid #ffffff;
          box-shadow: 0 4px 10px rgba(0,0,0,0.2);
      }
      .card-custom {
          max-width: 500px;
          margin: auto;
          background: rgba(255,255,255,0.9);
          padding: 30px;
          border-radius: 15px;
      }
      .btn-purple {
          background: linear-gradient(to right, black, purple);
          color: #fff;
          border: none;
      }
      .bg-image {
          background-image: url('assets/img/header-bg.jpg');
          background-size: cover;
          background-repeat: no-repeat;
          background-position: center;
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
      }
      table th {
          width: 40%;
      }
  </style>
</head>
<body>

    

<section class="bg-image">

    <div class="text-center w-100">
 <!-- Profile Image -->
        <div class="mb-4">
            <img 
              src="https://ui-avatars.com/api/?name=${sessionScope.name}&background=800080&color=FAF9F6&size=200"
              alt="Profile Picture"
              class="profile-pic"
            />
        </div>

        <!-- Profile Card -->
        <div class="card shadow-sm card-custom">

            <h2 class="text-center mb-4">Profile Summary</h2>

            <table class="table table-striped">
                <tbody>
                    <tr><th>Name</th><td>${sessionScope.name}</td></tr>
                    <tr><th>Student ID</th><td>${sessionScope.studentID}</td></tr>
                    <tr><th>Program</th><td>${sessionScope.program}</td></tr>
                    <tr><th>Email</th><td>${sessionScope.email}</td></tr>
                    <tr><th>Hobbies</th><td>${sessionScope.hobbies}</td></tr>
                    <tr><th>Introduction</th><td> ${sessionScope.intro}</td></tr>
                </tbody>
            </table>

            <a href="index.html" class="btn btn-purple w-100 mt-3">Back to Homepage</a>

        </div>
    </div>

</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
