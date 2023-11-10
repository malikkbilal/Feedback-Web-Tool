<?php

namespace App\Http\Controllers;

use App\Http\Requests\CommentValidationRequest;
use App\Models\Comment;
use App\Models\Feedback;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * Handle the submission of comments.
     *
     * @param Request $request
     * @param Feedback $feedback
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(CommentValidationRequest $request, Feedback $feedback)
    {
        if ($feedback->comments_enabled) {
            $validatedData = $request->validated();
            $content = $this->processCommentContent($validatedData['content']);
            $comment = Comment::create([
                'content' => $content,
                'user_id' => auth()->user()->id,
                'feedback_id' => $feedback->id,
            ]);
            $comment->load('user:id,name');
            return response()->json($comment, 201);
        } else {
            return response()->json(['message' => 'Comments are not allowed for this feedback.'], 403);
        }
    }

    private function processCommentContent($content)
    {
        $content = $this->mentionUsers($content);
        return $content;
    }

    private function mentionUsers($content)
    {
        $content = preg_replace('/@([a-zA-Z0-9_]+)/', '<a href="/profile/$1">@$1</a>', $content);
        return $content;
    }

    /**
     * Handle updating comments.
     *
     * @param Request $request
     * @param Comment $comment
     * @return \Illuminate\Http\JsonResponse
     */

     public function update(CommentValidationRequest $request, Comment $comment)
     {
         if ($comment->feedback->comments_enabled) {
             $validatedData = $request->validated();
             $content = $this->processCommentContent($validatedData['content']);
             $comment->update([
                 'content' => $content,
             ]);

             $comment->load('user:id,name');

             return response()->json($comment);
         } else {
             return response()->json(['message' => 'Updates are not allowed for this comment.'], 403);
         }
     }

    /**
     * Handle deleting comments.
     *
     * @param Comment $comment
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Comment $comment)
    {
        if ($comment->feedback->comments_enabled) {
            $comment->delete();
            return response()->json(['message' => 'Comment deleted']);
        } else {
            return response()->json(['message' => 'Deletions are not allowed for this comment.'], 403);
        }
    }

      /**
     * Enables or disables comments on feedback items.
     *
     * @param Feedback $feedback
     * @return \Illuminate\Http\JsonResponse
     */
    public function toggleCommentStatus(Feedback $feedback)
    {
        $feedback->comments_enabled = !$feedback->comments_enabled;
        $feedback->save();
        return response()->json(['message' => 'Comment status toggled']);
    }

    // public function searchComments(Request $request)
    // {
    //     $query = $request->input('query');
    //     $comments = Comment::where('content', 'LIKE', '%' . $query . '%')->get();
    //     return response()->json($comments);
    // }
}
