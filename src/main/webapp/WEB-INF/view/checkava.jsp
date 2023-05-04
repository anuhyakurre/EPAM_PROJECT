<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

  <title>HEAVENSGATE</title>

  <!-- Google font -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
  <link type="text/css" rel="stylesheet" href="css/checkstyle.css" />

</head>

<body>
  <div id="booking" class="section">
    <div class="section-center">
      <div class="container">
        <div class="row">
          <div class="booking-form">
            <div class="form-header">
              <h1>Check Availability...!!!</h1>
            </div>
            <form>
              <div class="form-group">
                <input class="form-control" type="text" placeholder="Place...">
                <span class="form-label">Destination</span>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <input class="form-control" type="date" required>
                    <span class="form-label">Check In</span>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <input class="form-control" type="date" required>
                    <span class="form-label">Check Out</span>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <select class="form-control" required>
                      <option value="" selected hidden>No Of Rooms</option>
                      <option>1</option>
                      <option>2</option>
                      <option>3</option>
                    </select>
                    <span class="select-arrow"></span>
                    <span class="form-label">Rooms</span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <select class="form-control" required>
                      <option value="" selected hidden>No Of Adults</option>
                      <option>1</option>
                      <option>2</option>
                      <option>3</option>
                    </select>
                    <span class="select-arrow"></span>
                    <span class="form-label">Adults</span>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <select class="form-control" required>
                      <option value="" selected hidden>No Of Children</option>
                      <option>0</option>
                      <option>1</option>
                      <option>2</option>
                    </select>
                    <span class="select-arrow"></span>
                    <span class="form-label">Children</span>
                  </div>
                </div>
              
              </div>
              <div class="form-btn">
                <a href="/roomsview" class="submit-btn">       check availability</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="js/jquery.min.js"></script>
  <script>
    $('.form-control').each(function () {
      floatedLabel($(this));
    });

    $('.form-control').on('input', function () {
      floatedLabel($(this));
    });

    function floatedLabel(input) {
      var $field = input.closest('.form-group');
      if (input.val()) {
        $field.addClass('input-not-empty');
      } else {
        $field.removeClass('input-not-empty');
      }
    }
  </script>
  </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>