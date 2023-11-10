<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
}); // Retrieves information about the authenticated user.

Route::post('/register', [AuthController::class, 'register']); // Registers a new user.
Route::post('/login', [AuthController::class, 'login']); // Authenticates a user.
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']); // Logs out the authenticated user.

    Route::post('/feedback', [FeedbackController::class, 'submit']); // Handle the submission of feedback
    Route::delete('/feedback/{feedback}',[FeedbackController::class, 'destroy']); // Delete a feedback item
    Route::post('/feedback/{feedback}/vote', [FeedbackController::class, 'vote']); // Handles user voting on a feedback item.
    Route::delete('/feedback/{feedback}/unvote', [FeedbackController::class, 'unvote']); // Handles removing user vote on a feedback item.

    Route::post('/feedback/{feedback}/comment', [CommentController::class, 'store']); // Handle the submission of comments
    Route::put('/comment/{comment}', [CommentController::class, 'update']); // Handle updating comments
    Route::delete('/comment/{comment}', [CommentController::class, 'destroy']); // Handle deleting comments
    Route::put('/admin/feedback/{feedback}/toggle-comment-status', [CommentController::class, 'toggleCommentStatus']); // Toggle comment status for a feedback item

    Route::get('/admin/users',[AdminController::class, 'listUsers']); // List users for admin management
    Route::delete('/admin/users/{user}',[AdminController::class, 'deleteUser']); // Delete a user
    Route::post('/make-admin/{user}', [AdminController::class, 'makeAdmin']); // Grants admin privileges to a user.

    Route::put('/user/update-profile',[UserController::class, 'updateProfile']); // Handle profile updates


});
Route::get('/feedback', [FeedbackController::class, 'index']); // Display a paginated list of feedback items
Route::get('/feedback/{feedback}', [FeedbackController::class, 'show']);  // Display the details of a specific feedback item

