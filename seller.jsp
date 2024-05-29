<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width, height=device-height, target-densitydpi=device-dpi">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="home.css">
    <script src="script.js"></script>

    <style>
        /* Add your CSS styles here */
        body {
            background-image: url('image1.jpg'); /* Replace with your image URL */
            background-size: cover;
            text-align: center;
            background-attachment: fixed;
        }

        .parent-container {
            background-color: rgba(169, 169, 169, 0.7); /* Gray transparent background */
            text-align: center;
            width: fit-content;
            height: fit-content;
            margin-top: 200px;
            margin-left: 35%;
            padding: 20px;
        }

        .container {
            display: inline-block;
            width: 500px; /* Adjust width as needed */
            background-color: #333;
            color: white;
            margin: 10px;
            padding: 20px;
            border: 1px solid #286090;
            border-radius: 5px;
        }

        .form-control {
            margin-bottom: 10px;
        }

        .button {
            background-color: #5bc0de;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li><a href="index.html">HOME</a></li>
                <li><a href="services.html">SERVICES</a></li>
            </ul>
            <form class="navbar-form navbar-right" style="background-color: rgb(250, 250, 250); padding: 0; margin-top: 10px;">
                <div class="form-group">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" size="90">
                </div>
                <button class="btn btn-danger my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <div class="parent-container">
        <form action="seller.jsp" method="post" enctype="multipart/form-data">
            <div class="container">
                <h1>Enter Car Details</h1>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="model">Model:</label>
                            <input type="text" class="form-control" id="model" name="model" required>
                        </div>
                        <div class="col-md-6">
                            <label for="engine">Engine:</label>
                            <input type="text" class="form-control" id="engine" name="engine" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="fuel">Fuel:</label>
                            <input type="text" class="form-control" id="fuel" name="fuel" required>
                        </div>
                        <div class="col-md-6">
                            <label for="powerTorque">Power & Torque:</label>
                            <input type="text" class="form-control" id="powerTorque" name="powerTorque" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="Acceleration">Acceleration:</label>
                            <input type="text" class="form-control" id="acceleration" name="acceleration" required>
                        </div>
                        <div class="col-md-6">
                            <label for="price">Price:</label>
                            <input type="text" class="form-control" id="price" name="price" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="image">Upload Image:</label>
                    <input type="file" class="form-control" id="image" name="image" required>
                </div>
                <a href="home.html"><button type="submit" class="button">Submit</button></a>
            </div>

                        </form>
                        </div>
                        </body>
                        </html>
                    

                        
