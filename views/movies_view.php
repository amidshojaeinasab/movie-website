<?php
require("./views/partials/_header.php");
require("./views/partials/_nav.php");
?>
<main class="list">
  <div class="list-top">
    <h1>Movies</h1>
  </div>

  <div class="list-items-container">
    <?php foreach ($movies as $movie): ?>
      <div class="list-item">
        <img
          class="list-item-image"
          src="/movie-website-master/public/<?= $movie["image_path"] ?>"
          alt="<?= $movie["title"] ?>" />
        <div class="list-item-details">
          <p class="item-title"><?= $movie["title"] ?></p>
          <div class="list-item-details-year-rating">
            <h5>2022</h5>
            <img src="/images/tmdb.svg" alt="TMDB" />
            <h5><?= $movie["rate"] ?></h5>
          </div>
        </div>
      </div>
    <?php endforeach; ?>
  </div>
</main>
<?php
require("./views/partials/_footer.php");
?>