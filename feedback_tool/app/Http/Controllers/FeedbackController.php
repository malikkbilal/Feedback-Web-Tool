<?php

namespace App\Http\Controllers;

use App\Http\Requests\FeedbackSubmissionRequest;
use App\Models\Feedback;
use App\Models\Vote;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    /**
     * Display a paginated list of feedback items.
     */
    public function index()
    {
        $feedback = Feedback::with(['user:id,name', 'comments.user:id,name', 'votes'])
            ->paginate(10, ['id', 'title', 'category', 'vote_count', 'user_id', 'created_at']);
        return response()->json($feedback);
    }

    /**
     * Display the feedback submission form.
     */
    public function submit(FeedbackSubmissionRequest $request)
    {
        $validatedData = $request->validated();
        $feedback = Feedback::create([
            'title' => $validatedData['title'],
            'description' => $validatedData['description'],
            'category' => $validatedData['category'],
            'user_id' => auth()->user()->id,
        ]);

        return response()->json($feedback, 201);
    }


    /**
     * Display the details of a specific feedback item.
     *
     * @param Feedback $feedback
     */
    public function show(Feedback $feedback)
    {
        $feedback->load(['user:id,name', 'comments.user:id,name', 'votes']);
        return response()->json($feedback);
    }

    public function destroy(Feedback $feedback)
    {
        $feedback->votes()->delete();
        $feedback->comments()->delete();
        $feedback->delete();
        return response()->json(['message' => 'Feedback data deleted successfully']);
    }


    /**
     * Handle the user's vote on a feedback item.
     *
     * @param Request $request
     * @param Feedback $feedback
     * @return \Illuminate\Http\JsonResponse
     */
    public function vote(Request $request, Feedback $feedback)
    {
        $user = auth()->user();
        if ($feedback->votes()->where('user_id', $user->id)->exists()) {
            return response()->json(['message' => 'User has already voted for this feedback'], 422);
        }
        $vote = Vote::create([
            'user_id' => $user->id,
            'feedback_id' => $feedback->id,
        ]);
        $feedback->increment('vote_count');
        return response()->json(['message' => 'Vote submitted successfully']);
    }

    /**
     * Remove the user's vote on a feedback item.
     *
     * @param Feedback $feedback
     * @return \Illuminate\Http\JsonResponse
     */
    public function unvote(Feedback $feedback)
    {
        $user = auth()->user();
        $vote = $feedback->votes()->where('user_id', $user->id)->first();
        if ($vote) {
            $vote->delete();
            $feedback->decrement('vote_count');
            return response()->json(['message' => 'Vote removed successfully']);
        } else {
            return response()->json(['message' => 'User has not voted for this feedback'], 422);
        }
    }
}
