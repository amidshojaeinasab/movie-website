<?php 
require("./views/partials/_header.php");
require("./views/partials/_nav.php");
?>
      <main class="list">
        <div class="list-top">
          <h1 class="list-top-title-people">Popular People</h1>
        </div>
        <div class="list-items-container">
          <?php foreach ($actors as $actor):?>
          <div class="list-item-people">
            <img
              class="list-item-image"
              src="/movie-website-master/public/<?= $actor["image"] ?>"
              alt="<?= $actor["family"] ?>" />
            <div class="list-item-details-people">
              <p class="item-title-people"><?= $actor["name"]. " ". $actor["family"] ?></p>
            </div>
          </div>
            <?php endforeach;?>
        </div>
      </main>
   
<?php 
require("./views/partials/_footer.php");
?>