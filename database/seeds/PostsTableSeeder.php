<?php

use Illuminate\Database\Seeder;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 1; $i <= 30; $i++) {
            \App\Models\Post::create([
                'user_id' => rand(2,4),
                'category_id' => rand(1,4),
                'title' => "Post #" . $i,
                'cover_image' => $i%11 . '.jpg',
                'preview' => 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.',
                'body' => 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.',
                'views' => rand(1,3000),
                'is_active' => 1,
            ]);
        }
    }
}
