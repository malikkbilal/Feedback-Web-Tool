<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Feedback>
 */
class FeedbackFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence,
            'description' => $this->faker->paragraph,
            'category' => $this->faker->randomElement(['Bug Report', 'Feature Request', 'Improvement', 'General Feedback']),
            'vote_count' => $this->faker->numberBetween(0, 100),
            'comments_enabled' => $this->faker->boolean,
            'user_id' => User::inRandomOrder()->first()->id,
        ];
    }
}
