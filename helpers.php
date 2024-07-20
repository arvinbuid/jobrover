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

function loadView($view, $array = [])
{
  $viewPath = basePath("App/views/{$view}.view.php");

  if (file_exists($viewPath)) {
    extract($array);
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
  $loadPath = basePath("App/views/partials/{$partial}.php");

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

/**
 * Format salary
 *
 * @param string $salary
 * @param string Formatted Salary
 */

function formatSalary($salary)
{
  return '₱' . number_format(floatval($salary));
}

/**
 * Sanitize Data
 *
 * @param string $dirty
 * @return string
 */

function sanitize($dirty)
{
  return filter_var($dirty, FILTER_SANITIZE_SPECIAL_CHARS);
}
