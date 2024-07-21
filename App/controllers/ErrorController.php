<?php

namespace App\Controllers;

class ErrorController
{
  /**
   * 404 not found
   *
   * @return void
   */
  public static function notFound($message = 'Resource not found.')
  {
    loadView('error', [
      'status' => '404',
      'message' => $message,
    ]);
  }

  /**
   * 403 not authorized
   *
   * @return void
   */
  public static function notAuthorized(
    $message = 'Unauthorized resource access.'
  ) {
    loadView('error', [
      'status' => '403',
      'message' => $message,
    ]);
  }
}
