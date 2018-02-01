<nav id="main-nav">
  <div id="Categories">
    <h1 id="main-teams">Teams<h1>
  <?php
  foreach($teams as $key => $team)
  {
    ?>
    <a href="index.php?teamId=<?php echo $team["teamId"]; ?>"><h2 id="Category1"><?php echo $team["teamName"]; echo $team["HowManyHeros"] ?></h2></a>
    <?php
  }
   ?>
</div>
  </nav>
