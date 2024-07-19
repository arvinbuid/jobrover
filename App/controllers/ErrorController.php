<?php

namespace App\Controllers;

class ErrorController
{
  /**
   * 404 not found
   *
   * @return void
   */
  public static function notFound($status, $message = 'Resource not found.')
  {
    loadView('error', [
      'status' => $status,
      'message' => $message,
    ]);
  }
  /**
   * 403 not authorized
   *
   * @return void
   */
  public static function notAuthorized(
    $status,
    $message = 'Unauthorized resource access.'
  ) {
    loadView('error', [
      'status' => $status,
      'message' => $message,
    ]);
  }
}
