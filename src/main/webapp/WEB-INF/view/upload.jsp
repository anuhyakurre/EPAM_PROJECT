<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link rel="stylesheet" href="css/upload.css">
  </head>
<body>
<div class="login-wrap">
<form action="/upload-image" method="POST" enctype="multipart/form-data">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"><center>UPLOAD IMAGES...!!!</center></label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="name" class="label">Home name</label>
					<input id="name" name="name" type="text" class="input" value="${image.name}">
				</div>
				<div class="group">
					<label for="location" class="label">Location</label>
					<input id="location" name="location" type="text" class="input" value="${image.location}" >
				</div>
                <div class="group">
					<label for="data" class="label">Select file</label>
					<input id="data" type="file" name="data" class="input" multiple="multiple" placeholder="choosefile" value="${image.data}">
				</div>
               
				
				<div class="group">
					<input type="submit" class="button" value="SUBMIT">
				</div>
				
			
		</div>
	</div>
	</form>
</div>
</body>
</html>