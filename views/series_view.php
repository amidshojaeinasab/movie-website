<?php 
require("./views/partials/_header.php");
require("./views/partials/_nav.php");
?>
      <!-- end header -->
      <main class="list">
        <div class="list-top">
          <h1>Tv Series</h1>
        </div>

        <div class="list-items-container">

        <?php foreach ($series as $series): ?>
      <div class="list-item">
        <img
          class="list-item-image"
          src="/movie-website-master/public/<?= $series["image_path"] ?>"
          alt="<?= $series["title"] ?>" />
        <div class="list-item-details">
          <p class="item-title"><?= $series["title"] ?></p>
          <div class="list-item-details-year-rating">
            <h5>2022</h5>
            <img src="/images/tmdb.svg" alt="TMDB" />
            <h5><?= $series["rate"] ?></h5>
          </div>
        </div>
      </div>
    <?php endforeach; ?>
          
        </div>
      </main>
<?php 
require("./views/partials/_footer.php");
?>
