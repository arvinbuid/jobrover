<?php if (isset($errors)): ?>
  <?php foreach ($errors as $error): ?>
    <div class="bg-red-100 p-2 my-4"><?= $error ?></div>
  <?php endforeach; ?>
<?php endif; ?>
