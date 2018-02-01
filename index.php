<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dc-heroes";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = 'SELECT * FROM team';
  $result = $conn->query($sql) or die($conn->error);

  $teams = array();

  if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
      $teams[]= $row;
    }
  }
/*
  echo "<pre>";
  var_dump($teams);
  echo "</pre>";
  die();
  */


  if(isset($_GET['teamId']))
  {
    $teamId = $_GET['teamId'];

  $sql2 = 'SELECT * FROM hero WHERE teamId = ' . $teamId;
    $result2 = $conn->query($sql2) or die($conn->error);

    $heroes = array();

    if ($result2->num_rows > 0) {
      // output data of each row
      while ($row = $result2->fetch_assoc())
      {
        $heroes[]= $row;
      }
    }
  }
  else {
    $sql2 = 'SELECT * FROM hero';
      $result2 = $conn->query($sql2) or die($conn->error);

      $heroes = array();

      if ($result2->num_rows > 0) {
        // output data of each row
        while ($row = $result2->fetch_assoc())
        {
          $heroes[]= $row;
        }
      }
  }
  if(isset($_GET['heroId']))
  {
    $heroId = $_GET['heroId'];

  $sql3 = "SELECT * FROM hero WHERE heroId = '". $heroId. "'";
    $result3 = $conn->query($sql3) or die($conn->error);

    $heroDetails = array();

    if ($result3->num_rows > 0) {
      // output data of each row
      while ($row = $result3->fetch_assoc())
      {
        $heroDetails[]= $row;
      }
    }
  }


  /*
    echo "<pre>";
    var_dump($heroes);
    echo "</pre>";
    die();
    */
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Home">
	<link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" type="text/css" />
	<title>DC Heroes</title>
	<link rel="icon" href="images/DC__HeroeS.ico	" type="image/ico" sizes="16x16">
</head>
<body>
	<header id="main-header">
		<?php include 'inc/header.php';?>
		<div id="main-container">


		<div id="main-menu">
			<?php include 'inc/menu.php'?>
		</div>
		<div id="heroes-list">
			<?php
        foreach($heroes as $hero)
        {
          ?>
          <div id="superheroes1">
            <div id="heroName">
            <?php

          echo $hero['heroName'];
          ?>


        </div>

        <div id="heroDescription">
          <h3>Powers:</h3>
          <?php
          echo $hero['heroPower'];
           ?>


           <a  class="more-info-btn" href="index.php?teamId=<?php echo $hero['teamId']?>&heroId=<?php echo $hero['heroId']; ?>">
                 More info
               </a>

        </div>
          <div id="heroImage">
            <?php
              echo "<img src='" .$hero['heroImage']."'>";

          ?>

        </div>


          </div>
          <?php
        }
        ?>

		</div>

    <?php

      foreach($heroDetails as $heroDetail) {

    ?>

		<div id="first-hero">

		<div id="rate-hero">
      <div class="nameOfHero">
        <?php
      echo $heroDetail['heroName'];
      ?>
      </div>

    <div id="rateHeroImage">
    <?php
      echo "<img src='" .$heroDetail['heroImage']."'>";
  ?><div id="heroPower2">

     <div id="heroDescription2">
       <h3>Powers:</h3>
  </div>
    </div>
		</div>
		<div id="rate-hero1">
      <?php
  echo $heroDetail['heroPower'];
       ?>
       <div id="heroDescription2">
         <h3>Description:</h3>
         <?php
         echo $heroDetail['heroDescription'];
          ?>


      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="frmRate">
  			<fieldset>
  				<div class="rate">
  					<input type="radio" id="rating10" name="rating" value="10" />
  					<label class="lblRating" for="rating10" title="5 stars"></label>

  				    <input type="radio" id="rating9" name="rating" value="9" />
  				    <label class="lblRating half" for="rating9" title="4 1/2 stars"></label>

  				    <input type="radio" id="rating8" name="rating" value="8" />
  				    <label class="lblRating" for="rating8" title="4 stars"></label>

  				    <input type="radio" id="rating7" name="rating" value="7"  />
  				    <label class="lblRating half" for="rating7" title="3 1/2 stars"></label>

  				    <input type="radio" id="rating6" name="rating" value="6" />
  				    <label class="lblRating" for="rating6" title="3 stars"></label>

  				    <input type="radio" id="rating5" name="rating" value="5" />
  				    <label class="lblRating half" for="rating5" title="2 1/2 stars"></label>

  				    <input type="radio" id="rating4" name="rating" value="4" />
  				    <label class="lblRating" for="rating4" title="2 stars"></label>

  				    <input type="radio" id="rating3" name="rating" value="3" />
  				    <label class="lblRating half" for="rating3" title="1 1/2 stars"></label>

  				    <input type="radio" id="rating2" name="rating" value="2" />
  				    <label class="lblRating" for="rating2" title="1 star"></label>

  				    <input type="radio" id="rating1" name="rating" value="1" />
  				    <label class="lblRating half" for="rating1" title="1/2 star"></label>

  				    <input type="radio" id="rating0" name="rating" value="0" />
  				    <label class="lblRating" for="rating0" title="No star"></label><br />
                <h2>Comment</h2>
  				</div>

          <label class="comment1" for="comment"></label>
          <textarea id="comment" name="comment" placeholder="Place here your comment.."></textarea>

  				<div class="divSubmit">
  					<input type="submit" name="submitRating" value="Rate Hero"/>
  					<input type="hidden" name="heroId" value="<?php echo $heroId; ?>"/>
  				</div>
  			</fieldset>
  		</form>
		</div>
		</div>
	</div>
</div>

<?php
}
 ?>
	</body>
</html>
