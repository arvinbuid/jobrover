<?php

/**
 * Get the base path
 *
 * @param string $path
 * @return string
 */

function basePath($path = '')
{
  return __DIR__ . '/' . $path;
}

/**
 * Load a view
 *
 * @param string $view
 * @return void
 */

function loadView($view)
{
  $viewPath = basePath("views/{$view}.view.php");

  if (file_exists($viewPath)) {
    require $viewPath;
  } else {
    echo "File {$view} does not exist.";
  }
}

/**
 * Load a partial
 *
 * @param string $partial
 * @return void
 */

function loadPartial($partial)
{
  $loadPath = basePath("views/partials/{$partial}.php");

  if (file_exists($loadPath)) {
    require $loadPath;
  } else {
    echo "File {$partial} does not exist.";
  }
}

/**
 * Inspect a value(s)
 *
 * @param string $value
 * @return void
 */

function inspectValue($value)
{
  echo '<pre>';
  var_dump($value);
  echo '</pre>';
}

/**
 * Inspect a value(s) and die
 *
 * @param string $value
 * @return void
 */

function inspectAndDie($value)
{
  echo '<pre>';
  die(var_dump($value));
  echo '</pre>';
}
