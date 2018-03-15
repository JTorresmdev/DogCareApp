//
//  CardClass.swift
//  DogCare
//
//  Created by Justin Torres on 2/14/18.
//  Copyright © 2018 Justin Torres. All rights reserved.
//

import Foundation
import UIKit

class CardClass {

    //Each info part of the Card
    var title: String?
    var cover: String?
    var number: String?
    var body: String?
    var audioName: String?
    
    //Initializer needed to call CardClass with all properties
    init(title: String?, cover: String?, number: String?, body: String?, audioName: String?) {
        self.title = title
        self.cover = cover
        self.number = number
        self.body = body
        self.audioName = audioName
    }
    //RED CARDS START//////////////////////////////////
    //Function to provide all of the Red Card information in String Form
    static func redCards() -> [CardClass] {
        var dogCareCards = [CardClass]()
        dogCareCards.append(CardClass(title: "Knock, Knock! Who's There?", cover: "red55image", number: "55", body: """
Knock, knock!
Who’s there?
Thank.
Thank who?
Thank YOU for buying these cards!

Did you know that we have four other boxes of cards with different messages on how to treat yourself and others? Please check them out!

Would your family like to donate to the Happy Kids-Happy Pets fund so we can help even more animals?
If so, visit our online donation page.
""", audioName: "red55"))
        dogCareCards.append(CardClass(title: "Shelter Dogs Need a Home!", cover: "red1image", number: "1", body: """
There are many mutts and purebred dogs that need loving homes, just like yours. So when you’re ready to add a dog to your family, don’t forget to check the shelter, foster parents, or adoption events to find your very own special dog.

My family says I’m special because I came from the shelter. Your dog will be too!

What are some things that are so special about adopting a dog from the shelter?
""", audioName: "red1"))
        dogCareCards.append(CardClass(title: "Why Mutts are Wonderful", cover: "red2image", number: "2",
                                      body: """
A mutt is a dog that is not a “purebred.” It is a mixture of dog breeds. I’m a mutt. My grandfather was a Beagle; my grandmother was a mix of Maltese, Lhasa Apso, and something else. They each gave me their best qualities.

There is no other dog exactly like me. Even my brothers and sisters don’t look like me, but we are each perfect. My human family tells me they love me. That is all that matters. Oh yeah, a couple more things...I love myself, and I love my family too.

How many wonderful mutts do you know? Can you name them?
""", audioName: "red2"))
        dogCareCards.append(CardClass(title: "Fleas, Fleas, Go Away!", cover: "red3image", number: "3",
                                      body: """
Fleas, fleas, go away - and don’t come back another day! Has anyone ever had fleas on them? They bite, and it hurts! We’d rather have bees than fleas. At least we could enjoy snapping at them.

We don’t mind the flea medicine our human mom puts on our backs every month; anything but a flea! She also gives us heart worm medicine every month. It tastes so good and protects our hearts. But remember, it’s only for us pets!

How do you make sure your pets are protected from fleas and heartworm?
""", audioName: "red3"))
        dogCareCards.append(CardClass(title: "Purebred or Mixed?", cover: "red4image", number: "4", body: """
My human mom used to only want a purebred dog. That means a dog with a mommy and daddy who come from the same breed. She was clueless about those of us who come from a mixture of dogs. She didn’t know how smart, friendly, and sweet we are.

The proof came when she met me and fell in love. I taught her that it’s about the dog, not the purebreed. Now she loves mixed breeds as well as purebreds. We even have a new little sister who is a Chi-Peek-a-Boo or something like that. Who knows? Who cares? Whatever!

Does it matter to you if your dog is a purebred or mixed?
""", audioName: "red4"))
        dogCareCards.append(CardClass(title: "So you want a Dog?", cover: "red5image", number: "5", body: """
My human brother, Johnny, wanted a dog. He promised Mom and Dad that he would handle all the responsibilities that come with owning a dog. So they got Me.

But he doesn’t do anything he promised he would do. He said he would walk me, feed me, and make sure I always had plenty of clean water. But he hardly does any of that. I sure am glad my human mommy takes care of me. If I had to wait for Johnny, I’d be in trouble!

What do you think about Johnny not keeping his promise?
""", audioName: "red5"))
        dogCareCards.append(CardClass(title: "Everyone Needs Space and Time", cover: "red6image", number: "6", body: """
Please don’t leave me in a cage that is too small. I need to stretch my legs and move around. Think about how bored, cramped, and lonely you would feel being in a small cage for so many hours.

Make sure you have time for me. When you do leave for a long time, please exercise me before you go and give me plenty of room to be comfortable until you return home. Better yet, how about my own room while you’re gone?

Do you give your pet enough space, exercise, love, and time?
""", audioName: "red6"))
        dogCareCards.append(CardClass(title: "Dogs' Needs", cover: "red7image", number: "7", body: """
Do you know what dogs need? They need food, clean water, lots of exercise, and potty breaks. They also need to be kept warm enough in the winter and cool enough in the summer. And don’t forget to socialize them when they are young, so they learn to get along with other people and dogs...maybe even cats! It’s also very important that they be taken to the vet regularly for all of their shots and check-ups.

Most of all, dogs need plenty of attention, understanding, and LOVE!

Can you think of anything else a dog needs?
""", audioName: "red7"))
        dogCareCards.append(CardClass(title: "Im Older Now", cover: "red8image", number: "8", body: """
I can’t chase balls anymore - and some days my hips and bones really ache. Please make sure the vet gives me medicine for pain as needed. Now I just want to sit in the sun and remember all those squirrels I kept out of the backyard.

Please be very gentle and don’t push on me. Also make sure I have a padded, comfortable bed so I don’t feel the hard floor.

Please understand that I need to move slower and take shorter walks. I am truly sorry if I have occasional accidents in the house.

And please know that I love you and I know that you love me. Life is still good.

What are some nice things to do for older dogs?
""", audioName: "red8"))
        dogCareCards.append(CardClass(title: "Waggy Tail", cover: "red9image", number: "9", body: """
How much is that doggie in the window, the one with the waggly tail? Just for your information, when my tail is wagging, it usually means I am happy and feeling safe. And that is a good sign. It means I probably won’t bite.

I guess there can always be exceptions to the rule. I can change my mind if I get scared or someone is annoying me. Also if my hair stands up on my back, keep in mind that I might be scared or angry.

Can you tell a dog’s mood by his tail or hair?
""", audioName: "red9"))
        dogCareCards.append(CardClass(title: "We Don't Get It!", cover: "red10image", number: "10", body: """
We don’t get how someone could be mean to animals! We are loyal and would do anything for you. We love you so much, we don’t care if you sing off-key or even when you smell garlicky. Why would anyone want to hurt us?

We’ve heard our human mommy say she is shocked when she hears about someone hurting an animal. She can’t imagine how someone could do that! We just want to be your best friend!

Do you have a pet who is your best friend?
""", audioName: "red10"))
        dogCareCards.append(CardClass(title: "Pick It Up", cover: "red11image", number: "11", body: """
What’s the big deal about picking up my poop? I’m ready to keep walking and my human mommy has to stop, get the bag, scoop it up, and then hold it until we find a trash can. Can we go already? Oh, I forgot, I’m supposed to be working on my manners and being nice to others. But this dog was made for walking! Let’s go!

P.S. I really do know that it is nice and respectful for Mom to “pick up” after me on our walks.

Do you pick up after your pet?
""", audioName: "red11"))
        dogCareCards.append(CardClass(title: "Did I Hear the Word \"Treat?\"", cover: "red12image", number: "12", body: """
My human mom says treats are good for my teeth, even though they do still need to be brushed. I just love the crunch and the taste.

It’s about time for breakfast. Do you know what comes after that? The “T” word - TREAT! I can hardly wait! Sometimes I grab it and go hide under the bed to eat. I know it’s not good manners to grab, but no dog is perfect.

Do you think Mom might give me two treats today?
""", audioName: "red12"))
        dogCareCards.append(CardClass(title: "Too Tight?", cover: "red13image", number: "13", body: """
I am super-glad my human mom checks my collar regularly to see if it fits me just right. Not too tight so I can breathe easily and be comfortable; not too loose so I don’t catch it on anything or slip out of it.

Don’t forget, I wear my collar around my neck 24/7 so it has to be a perfect fit.

How often do you check your pet’s collar to make sure it’s comfy?
""", audioName: "red13"))
        dogCareCards.append(CardClass(title: "Ouch! That Hurts!", cover: "red14image", number: "14", body: """
Sometimes my human baby sister hurts me. Ouch! I know she is little and doesn’t know better, but it would be nice if my parents made sure she didn’t pull my ears and tail, poke my eyes, yank my fur, climb on me, or hold me too tight.

Also, they need to make sure she does not hit me or throw her toys at me. I don’t like it one bit! I am part of the family too. I hope my parents watch her until she is old enough to know to be more gentle with me.

Do you make sure your younger brother or sister is gentle with your pets?
""", audioName: "red14"))
        dogCareCards.append(CardClass(title: "Spay or Neuter", cover: "red15image", number: "15", body: """
Spaying and neutering are operations that a vet does to stop pets from having more kittens or puppies. Girl pets are spayed. Boy pets are neutered. This is a very important operation. Why? There are way too many animals without homes.

You can see them on the streets or in shelters. Many animals are put to sleep if they can’t find homes. Puppies and kittens are so cute, but they do grow up and will have more babies. So please spay and neuter your pet!

Have you ever heard of spaying and neutering?
""", audioName: "red15"))
        dogCareCards.append(CardClass(title: "We Love to Socialize", cover: "red16image", number: "16", body: """
Our human mother makes play dates for us all the time. We get to meet new dogs, new kids, and occasionally a cat! You know why she does it? She says it makes us well-adjusted. It helps us get along with everyone.

She calls it socializing. What a big word! Wonder what she has on the calendar for tomorrow?

Do you socialize your pet?
""", audioName: "red16"))
        dogCareCards.append(CardClass(title: "Help, I'm Lost and Can't Find My Way Home", cover: "red17image", number: "17", body: """
My family wants to be sure that if I get lost, I can make it home again. That’s why I wear an ID tag on my collar with my name on it. I also have a chip inside of me with my telephone number on it. That way my family can find me. I love my family.

Well, now I am lost and can’t find my way home. Will you help me find my family? Please call the number on my collar or take me to the vet to read the microchip inside of me.

Does your pet have a collar with an ID tag on it? A microchip?
""", audioName: "red17"))
        dogCareCards.append(CardClass(title: "Shhh!", cover: "red18image", number: "18", body: """
My favorite trick is to speak softly. Some people think that dogs have to bark loudly. What’s up with that? When I speak softly, it sounds so much nicer!

Please encourage me to speak softly or use my “indoor voice.” I am so cute when I do that. I only bark loudly if a stranger comes to the door. My human daddy says I’m the best guard dog in the world.

How can you teach your dog to speak softly?
""", audioName: "red18"))
        dogCareCards.append(CardClass(title: "We Eat When We're Hungry", cover: "red19image", number: "19", body: """
When we were young, our human mommy would always leave out a bowl of good quality, dry dog food for us. There was always plenty of food, so we didn’t feel the need to gobble it up all at once. We learned to only eat when we were hungry.

Of course our vet might not agree with that. Some people feed their dog once a day, but we think twice a day is better. 24 hours is a long time to wait! We also think if dogs are hungry, it’s okay to give them vegetables to help fill them up.
P.S. We love when Mommy gives us a tablespoon of olive oil to keep our joints healthy.

How often do you feed your dog? Do you know if he/she likes veggies?
""", audioName: "red19"))
        dogCareCards.append(CardClass(title: "Two is Better Than One", cover: "red20image", number: "20", body: """
I was seriously on a mission. My human family and I picked out a new brother at the shelter today. It might be a little more work, but it’s worth it whenever we can get a dog out of the shelter. We’re going to have a great life together with long walks, car trips, playing fetch in the backyard, and lots of love. I’m so excited. I can hardly hide it...my tail is going 90 miles an hour!
Mission accomplished!

Next time you get a pet, what do you think about going to your local shelter, humane society, or a place that adopts or fosters rescued animals?
""", audioName: "red20"))
        dogCareCards.append(CardClass(title: "It's Cold Outside", cover: "red21image", number: "21", body: """
Please, please don’t leave me out in the cold during winter! If for some reason I can’t stay in the house, make sure I have an insulated doghouse, shed, or garage with a rubber flap for the door so I can go in and out...and give me plenty of hay or blankets to snuggle into.

Make sure to keep the hay changed out often and blankets clean. Keeping me warm is what it’s all about!

How do you keep your pets warm in the winter?
Do you need to ask your vet for some ideas?
""", audioName: "red21"))
        dogCareCards.append(CardClass(title: "Betty Lou Says, \"Keep Me Warm and Cozy\"", cover: "red22image", number: "22", body: """
It’s time to go shopping and to check out the latest styles at the pet store. I need a new coat. They have a special sale going on now!

Sometimes in the winter, it gets really cold, and my human mommy puts two coats on me or a sweater with a coat. She buys one larger than the other so she can keep me warm and cozy. But don’t let me get too hot either. Yippee Skippee! I can’t wait to wear my new coat.

Does your dog have a nice, warm winter coat?
""", audioName: "red22"))
        dogCareCards.append(CardClass(title: "Max and Me", cover: "red23image", number: "23", body: """
I met the greatest dog, Max, yesterday. I wanted to run up and sniff him right away. But Mom held me back. “See the yellow ribbon on his leash?” she asked me. “It means he needs more time to introduce himself to you. Maybe he’s shy. Maybe he’s aggressive. The yellow ribbon tells us to approach him slowly.”

Max told me later that people and dogs who come on too fast give him the heebie-jeebies. We made sure to ask the owner; she said it was fine and we walked up slowly. Now Max and I are buddies. My mom is so smart!

Do you ask the owner if it’s OK before you go up to their dog?
""", audioName: "red23"))
        dogCareCards.append(CardClass(title: "Don't Leave Me Tied Up!", cover: "red24image", number: "24", body: """
Please, never tie me to a tree. Not good. Put yourself in my shoes, I mean paws. Seriously, tied to a tree for hours, day after day? If a mean dog was trying to bite me, I couldn’t run away. It is terribly uncomfortable, and it hurts my neck. It’s also lonely. Even worse, I’m outside in the wet rain, hot sun, or cold winter and snow. There’s no where to go.

In time it could also make me very mean; I could show my teeth, jump on people walking by, and bite them. Why have a dog if it has to be tied to a tree everyday? How about bringing me inside with the family or a fenced-in yard instead?

How would you feel if you saw a dog tied to a tree day after day?
""", audioName: "red24"))
        dogCareCards.append(CardClass(title: "I Hear Ya'!", cover: "red25image", number: "25", body: """
Yikes! It’s loud out here!
Please keep the music down!
My ears are much more sensitive than yours. You can’t imagine how loud noise hurts my ears. Think of poor little ol’ me.

Did you also know I hear thunder way before you do? So if you see me shaking before you hear anything you’ll know why!

Did you know dogs have very sensitive ears?
""", audioName: "red25"))
        dogCareCards.append(CardClass(title: "How Hot Is It?", cover: "red26image", number: "26", body: """
Do not...repeat, DO NOT...leave us in a locked car. It is not fun when the sun is beating down. It could get to be up to 105 degrees or more inside the car, even if it is only 85 degrees outside!

We could start to have trouble breathing. If you see someone else’s dog locked in a hot car, ask your mom or dad to call 911 and report it. If it is too cold in the car, we could freeze! It is best to NEVER leave a pet locked in the car because you don’t know how hot or cold it really is inside the car.

Did you know not to ever leave your pet locked in a car?
""", audioName: "red26"))
        dogCareCards.append(CardClass(title: "Something to Chew On", cover: "red27image", number: "27", body: """
Please don’t get mad at me if I chew something up. I still have a lot of “puppy” in me! Give me something for my teething. My teeth are hurting, and it makes me feel better to chew on something.

Just know that I will grow out of it one day. If you give me a rawhide bone, make sure I don’t choke when I get near the end of it!

Do you make sure your puppy has plenty of toys to chew on?
""", audioName: "red27"))
        dogCareCards.append(CardClass(title: "Blind and Full of Love", cover: "red28image", number: "28", body: """
Don’t feel sorry for me. I may be blind, but my nose is still working at 100%. Smell is a powerful sense to us dogs. My “sniffer” is almost as important to me as your eyes are to you.

However, you may need to help me a little. Keep me on a short leash so I don’t wander into traffic. Stop when there are steps or curbs that I have to step up or down on and let me get my bearings first.

Finally, give me lots of TLC (Tender Loving Care). You’d do that anyway, wouldn’t you? So you see, blindness is not such a big deal for me - as long as I have you in my life!

Did you know dogs rely on their sense of smell?
""", audioName: "red28"))
        dogCareCards.append(CardClass(title: "Don't Make Me Wait Too Long", cover: "red29image", number: "29", body: """
We older dogs have to go to the bathroom more often than when we were younger. Frequently I need to wake up my human mommy or daddy during the night so they can let me outside to go potty. I’m so glad they understand and don’t get mad at me or make me wait a long time to go out.

Some people say, “My dog can hold it for hours and hours.” Maybe they can, but it sure is NOT comfortable!

Do you remember how it felt when you had to “hold it” for a long time?
""", audioName: "red29"))
        dogCareCards.append(CardClass(title: "Antifreeze", cover: "red30image", number: "30", body: """
Yum Yum! We hear antifreeze smells wonderful and tastes really sweet - so it would be very tempting to try some. But it’s also very poisonous; many dogs and cats have died after licking only an itsy bit off a street or driveway!

Please ask your mom and dad to store antifreeze away from your pet. And always check to make sure none has leaked from the car. Or better yet, ask your parents to buy the new brands that don’t smell or taste as good to us. Their car will run just fine - and so will we. Thank you!

Have you ever heard of dogs licking antifreeze?
""", audioName: "red30"))
        dogCareCards.append(CardClass(title: "No Bones About It!", cover: "red31image", number: "31", body: """
I love bones. I really do. They clean my teeth, exercise my jaw, and give me a workout. But not all bones are good for me. Some can even be dangerous! Chicken or steak bones can splinter in my stomach.

Also remember that when you give me a rawhide bone, stay with me and make sure I don’t choke on it.

Are you careful what kind of bones you give your dog?
""", audioName: "red31"))
        dogCareCards.append(CardClass(title: "Don't Stop at the Nose", cover: "red32image", number: "32", body: """
Some people say your dog is healthy if his nose is cool and moist…but that’s not necessarily true. What’s going on inside of him is even more important. Don’t stop at his nose, but also look in his mouth for nice pink gums (not blue-ish).

Also make sure that his eyes are clear and that there are no yellow spots on the inside of his ears. This is a sign of a possible infection...or something worse. Bad breath and runny poop are also things to look for. Keep an eye out for these symptoms in your dog!

Do you know what signs to look for that warn if your dog is not healthy?
""", audioName: "red32"))
        dogCareCards.append(CardClass(title: "Betty Lou Says, \"I Do Love My Comfort\"", cover: "red33image", number: "33", body: """
My human mom, Betty, makes sure I have everything I need. Today she is going to get me a new bed. What a sight to see her trying the beds out for comfort in the store! “This bed is too hard,” she says. “This bed is too soft. This bed is just right!” Sounds like another story I’ve heard before.

Do you know what story I’m talking about? Isn’t it funny my human mom and I have the same name?
""", audioName: "red33"))
        dogCareCards.append(CardClass(title: "No Teasing Please", cover: "red34image", number: "34", body: """
It’s not a good idea to play with me while I’m eating or chewing on my bones. I might get angry. You wouldn’t like it if I snatched your hamburger away from you, would you? Well I don’t like when you play around with my food. After all, food is a serious business!

So let’s make a deal. Don’t tease me while I’m eating my food or bones and I’ll keep thinking you are the greatest human in the whole world. OK?

Do you know not to tease me when I’m eating?
""", audioName: "red34"))
        dogCareCards.append(CardClass(title: "When the New Baby Comes Home...", cover: "red35image", number: "35", body: """
My human mom and dad were expecting a baby boy for months. I knew he was coming and they prepared me for it. They told me they might not have as much time to spend with me and I might feel lonely. They said they still love me, but the baby would need a lot of their time.

When the baby finally came home, I still got hugs, treats, and walks. I also got a new, important job - to protect the baby. When he’s older I can show him how to catch balls, ride in cars, and pee on trees. Until then, I’ll keep him company and protect him. It’s a very big job!

Do you know there is always plenty of love to go around?
""", audioName: "red35"))
        dogCareCards.append(CardClass(title: "When Walks Are Not Enough", cover: "red36image", number: "36", body: """
I’m what you call a high-energy dog. I need exercise every day. I’ve got to run...jump...swim...catch Frisbees...chase balls - whatever! A walk may be fine for other dogs but not for me, thank you. If I don’t get serious exercise everyday, I’ll be into everything. I may eat the furniture, run around in circles, and get into all kinds of trouble. I’ll drive my human family crazy!

So grab a ball and throw it (but no sudden stops for my knees, please)! Let me run with you while you take your bike to the park. Help me get rid of my extra energy!

Do you know any dogs like me?
""", audioName: "red36"))
        dogCareCards.append(CardClass(title: "Small Dogs", cover: "red37image", number: "37", body: """
I’m a small guy with short legs that carry all my weight. I cannot jump off furniture without the risk of breaking a bone! (Hello, did you notice that I hurt my leg?)

I shouldn’t roughhouse with humans or dogs much bigger than I am. They may hurt me. I need extra gentleness from children who might injure me without meaning to do so. I could get more fragile as I get older. I may be fragile, but I’m fierce. Just ask Jake, the Great Dane. He’s afraid of me!

Did you know you have to be extra careful with most small dogs?
""", audioName: "red37"))
        dogCareCards.append(CardClass(title: "When a New Pet Arrives...", cover: "red38image", number: "38", body: """
I heard my human mom and dad are bringing home a new pet today. I am so excited! Mom wants to be sure that my new sister feels welcomed and not overwhelmed, so she is introducing us slowly to each other.

Mom said she’ll keep me on a leash because I might scare my new sister by jumping on her. She says I need to be calm. Calm is tough, but I’ll try! If I get too excited, Mom says she’ll put me in the backyard to give my sister time to relax and get comfortable. I’ll try really, really hard to be calm. I’m proud to be a big brother!

Have you ever introduced two pets to one another?
""", audioName: "red38"))
        dogCareCards.append(CardClass(title: "Know your Limits", cover: "red39image", number: "39", body: """
The kid next door rides his bicycle and lets his dog, Bill, race after him. They have a great time for an hour every afternoon and Bill gets a lot of exercise. That wouldn’t work for me. Not one bit.

Bill is built for running - but I’m not. I’m built for snuggling in somebody’s lap. I just couldn’t run like Bill, ever! I shouldn’t even try; it wouldn’t be healthy for me. Thank goodness my human mom understands that. We take walks everyday, and that is plenty enough exercise for me. A dog needs to know his limits - and so does his human family.

Do you know how much exercise is right for your dog?
""", audioName: "red39"))
        dogCareCards.append(CardClass(title: "Do Unto Other Dogs...", cover: "red40image", number: "40", body: """
We just heard something called “The Golden Rule.” It says, “Do unto other dogs as you would have other dogs do unto you.” We couldn’t have said it better!

If you want us to be gentle, you have to be gentle with us. If you want us to be well-adjusted, you need to adjust your time with us. If you want us to be happy, you need to treat us well. Wow! How simple is that? Just treat us with respect and you’ll get great dogs back!

Do you treat your pet the way you want to be treated?
""", audioName: "red40"))
        dogCareCards.append(CardClass(title: "Get the Right Dog", cover: "red41image", number: "41", body: """
Not every dog is perfect for your family. Finding the right dog means many wonderful years together.
• Size: Some dogs can be too big or too small for your home. Be sure to pick one that fits into your space.
• Exercise: Some dogs need to run and some only need soft laps and walks.
• Cost: Food, vet bills, grooming, and training can be expensive. What can you afford?
• Care: Dogs need food, water, walks, baths, training, and LOVE. How much time are you willing to give?

Consider everyone in your family. Kids can hurt tiny dogs. But big, clumsy dogs can hurt kids. Everyone needs to be safe.
""", audioName: "red41"))
        dogCareCards.append(CardClass(title: "Different Weather", cover: "red42image", number: "42", body: """
My family just moved to Florida. They told me I’d never be cold again. Now we have to think about other things, like being left alone in a hot car - even for 10 minutes! That could be very dangerous. Also, I can get fleas and ticks all year long. Ugh!

And there are these weird things called “alligators” and “pythons,” so I have to be on a leash when I’m out. I have to drink plenty of water. I have to be careful when I’m out in the sun too. Don’t forget that hot concrete can burn my feet!

How can you protect your dog from the hot sun?
""", audioName: "red42"))
        dogCareCards.append(CardClass(title: "Ask My Vet", cover: "red43image", number: "43", body: """
If I get hurt or sick and you don’t know what to do, ask my vet. If I need medicine, before you give me YOUR medicine, ask my vet. If you need to know how to housebreak me or where to get good obedience training, ask my vet. If you need a kind and honest dog walker, doggie daycare, or a weekend babysitter, ask the vet.

The vet is an expert on all “dog things!” He may even know a bit about our cat. She just threw up under the couch!

What questions can you ask your vet?
""", audioName: "red43"))
        dogCareCards.append(CardClass(title: "No More Unwanted Puppies!", cover: "red44image", number: "44", body: """
I was rescued from a puppy mill. Thank goodness! I spent five years just having puppies. It was awful. No grass. No sunshine. Just lots of puppies...way too many puppies! The nice people who rescued me took me to the vet to “fix” me so I would never have any more puppies. I’m happy now. No more unwanted puppies!

Have you ever heard of a puppy mill?
""", audioName: "red44"))
        dogCareCards.append(CardClass(title: "A Safe Walk", cover: "red45image", number: "45", body: """
When we are taking our walks, please keep an eye on us. Our noses find the most interesting things to investigate! We may try to wander off to check them but, but they may not be good for us. That’s when we need you to keep us safe.

We could be checking out a snake or a cat, so make sure to keep us close. If we walk near an ant hill - pull us away! If we find a dead mouse or toad, you may want to distract us. If there is broken glass ahead, walk us around it. And please stop us from drinking from a puddle. Also watch out for the traffic. Thanks for taking such good care of us.

You didn’t know there were so many things we could get into, did you?
""", audioName: "red45"))
        dogCareCards.append(CardClass(title: "I Can Get Really Sick", cover: "red46image", number: "46", body: """
I don’t want to sound like a scaredy cat (I mean dog!), but I can get sick - really sick - if you feed me the wrong things. Grapes, chocolate, onions, and avocados are definitely no-no’s for me. Also, don’t give me any pills like vitamins or aspirin without checking with my vet first.

Please don’t leave poisons out that kill rats, mice, ants, or insects. I might get into them. They smell great, but they can kill me!

Does your mommy or daddy keep these things in a safe place?
""", audioName: "red46"))
        dogCareCards.append(CardClass(title: "Allergies", cover: "red47image", number: "47", body: """
Just because I’m a dog doesn’t mean I can’t have allergies. I can get allergies just like you! For example, I’m allergic to fleas. When they bite, it makes me itch so badly that I’ll tear my fur off from scratching myself. So my human family takes me to the vet to prescribe special medicine for me.

Some of my friends have allergies too. Tex gets a rash when he eats certain foods. Fritzie sneezes when he gets a snoot full of dust. Allergies like these are medical problems - and nothing to sneeze at! They are no fun. If your dog has allergieslike we do, please take him to a vet.

Do you know anybody with allergies?
""", audioName: "red47"))
        dogCareCards.append(CardClass(title: "Check the Concrete", cover: "red48image", number: "48", body: """
Hi, I'm Miss Betty Lou Two Shoes. I do not like walking on hot pavement. Ouch! Ouch! It burns my feet. That's why I wear these cute little boots. Just joking! (But they really do sell booties for dogs to walk on hot concrete.)

Always check the concrete with your hands or feet to see how hot it is before you go for a walk with your dog. And don't forget we have this hot fur too. You might want to think about a cool, early morning or late evening walk. Remember my water. Oh yeah, and please bring my stroller in case I get tired!

Have you ever walked barefoot on hot concrete?
""", audioName: "red48"))
        dogCareCards.append(CardClass(title: "Rescue Groups", cover: "red49image", number: "49", body: """
Hi, I’m Miss Betty Lou Two Shoes. I do not like walking on hot pavement. Ouch! Ouch! It burns my feet. That’s why I wear these cute little boots. Just joking! (But they really do sell booties for dogs to walk on hot concrete.)

Always check the concrete with your hands or feet to see how hot it is before you go for a walk with your dog. And don’t forget we have this hot fur too. You might want to think about a cool early, morning or late evening walk. Remember my water. Oh yeah, and please bring my stroller in case I get tired!

Have you ever walked barefoot on hot concrete?
""", audioName: "red49"))
        dogCareCards.append(CardClass(title: "Fostering", cover: "red50image", number: "50", body: """
I was in foster care, doggie-style. A foster home is a short-term place where I lived after I was rescued and before I was placed in my “forever” home.

Thank goodness for my foster parents! They taught me good manners and helped me get over my nervousness. They showed me that people (AND CATS) could be trusted. They fed me well, loved me constantly, and showed me it was OK to play and not hide in a corner. They helped me become the awesome dog I am today!

Did you know rescue groups need more foster families? Interested? Ask your parents to contact a local rescue group. Every dog in foster care is a dog saved!
""", audioName: "red50"))
        dogCareCards.append(CardClass(title: "Be Nice to Bugs", cover: "red51image", number: "51", body: """
If you see a bug crawling along, doing its thing, DON’T STEP ON IT! LEAVE IT ALONE! The bug has a place to go and a job to do...just like you do. It wants to live too!

If a bug is in our house, our human mommy catches it with a net and takes it outside whenever she can. It makes her feel good to save the bug. Join us! It’s easy! Start by not stepping on bugs.

Have you ever thought about why you shouldn't step on a bug?
""", audioName: "red51"))
        dogCareCards.append(CardClass(title: "On Being Thankful", cover: "red52image", number: "52", body: """
I am so thankful. A nice lady saw me on the side of the road. I was starving. I was lost and scared. I had fleas all over me. I was really in bad shape and needed help...FAST!

The nice lady picked me up and took me to her vet. She saved my life. I was at the vet for a long time and he made me good as new again. And best of all, I found a home! The nice lady adopted me. I call her “Mom.” Could I be any luckier? Life is so wonderful now. I even have a new doggie brother. I love my whole family and my family loves me.

What do you think of my happy story?
""", audioName: "red52"))
        dogCareCards.append(CardClass(title: "Train Your Dog to Be Nice", cover: "red53image", number: "53", body: """
Did you know that some people train dogs to be mean and to fight? What’s up with that? I once heard a dog saying, “I’m sorry I hurt you. I didn’t mean to. My owner taught me to be mean. He wants me to growl and fight, but I don’t want to! I would rather be nice.”

I agree with that. No one wants to be hurt!

Can you believe that some people train their dogs to fight?
""", audioName: "red53"))
        dogCareCards.append(CardClass(title: "Visit Our Website", cover: "red54image", number: "54", body: """
Visit us at www.happykids-happypets.com to see if we have a contest going on! You could win a Happy Kids-Happy Pets surprise mystery package!

All you have to do is send in your own story about how you care for your dog. You can write this by yourself or with the help of a friend or family member. Hurry and ask your parents if you can go to our website!
""", audioName: "red54"))
        
        return dogCareCards
    }
    //RED CARDS END/////////////
    
    
    //YELLOW CARDS START///////////////
    //Function to provide all of the Yellow Card information in String Form
    static func yellowCards() -> [CardClass] {
        var dogBreedCards = [CardClass]()
        //Temp cards to test
        dogBreedCards.append(CardClass(title: "Thank You!", cover: "yellow55image", number: "55", body: """
Hi! I'm a Chihuahua and my name is Betty Lou. I want to thank you for buying our cards! Did you know we have four other boxes of cards, each with different messages on how to treat ourselves and others? Please check them out. They are all great - I can't make up my mind which ones I love the best!

We are raising money to help animals in need. Ask your parents if they would like to make a donation. If so, have them visit our website donation page. 50% of all profits from the cards and 100% of all donations go to animal welfare/spay/neuter.

Thank you again!
""", audioName: "yellow55"))
        
        dogBreedCards.append(CardClass(title: "Airedale Terrier", cover: "yellow1image", number: "1", body: """
I'm almost always black and tan, with wiry hair that needs brushing every day.

I have tons of energy and it's easy for me to get bored. Please give me lots of attention and exercise. If you don't, I might try to entertain myself by tearing things up. And if i do that, I'll be in big trouble!

You can't just leave me alone all day or stick me outside and think I'll lie down and sleep. Remember, I'm full of energy and I might do something like dig up the flower garden. Oops! That means more trouble!

I like to be in charge of things, but I know my human parents wouldn't necessarily like that.
""", audioName: "yellow1"))
        
        dogBreedCards.append(CardClass(title: "Alaskan Husky", cover: "yellow2image", number: "2", body: """
Like my name says, Alaska is where I came from. I was bred for pulling sleds.

I'm a mixture of Husky, Irish Setter, and wolf. I'm BIG and STRONG!

I am very smart, but stubborn and often feel like I can do things by myself. I am obedient, loyal, loving, and I enjoy spending time outdoors playing games like fetch.

Dogs in my breed have brown or blue eyes, and some can even have one brown eye and one blue eye. Imagine that!

My favorite thing to do? Digging and howling...ah-ooooooo!
""", audioName: "yellow2"))
        
        dogBreedCards.append(CardClass(title: "American Eskimo", cover: "yellow3image", number: "3", body: """
I am sooo handsome! I have a beautiful white coat, sweet experssion, and black eyes. I'm full of energy and I love lots of exercise, especially in the snow.

I like to bark! Many people say Eskies can "talk" to them.

I am very smart and easy to train. I love doing tricks for you, but only when I feel like it. Obedience training is a must for me when I'm a puppy.

Chewing is one of my favorite things to do, so make sure I always have lots of chew toys to keep me from munching on "off limit" stuff, like shoes and chairs!
""", audioName: "yellow3"))
        
        dogBreedCards.append(CardClass(title: "Australian Sheperd", cover: "yellow4image", number: "4", body: """
Give me something or someone to play with. I am definitely not happy being a couch potato. I love going for walks, running, jumping, and just plain old playing!

All that energy makes me hungry...
I just LOVE TO EAT!

I'm very smart and you can train me in no time. I promise I won't dissapoint you if you just give me time and attention. I am very special and deserve a special owner.

My loyalty, personality, and sense of humor make me different from everyone else.
""", audioName: "yellow4"))
        
        dogBreedCards.append(CardClass(title: "Basenji", cover: "yellow5image", number: "5", body: """
I really am a dog even though I don‛t smell like one. OK, so I sometimes act like a cat. I wash my face like a cat, I love to chill out on the couch, and I can be independent too.

I can climb like a monkey and crow like a rooster. I‛m like four pets in one! And get this…I don‛t bark! But that doesn‛t mean I don‛t make any noise. I can whine, growl, and even scream.

I can be quite a handful if you know what I mean...especially when I tear up your things.

It will take lots of patience having me in the family, but don‛t worry, I‛M WORTH IT!
""", audioName: "yellow5"))
        
        dogBreedCards.append(CardClass(title: "Basset Hound", cover: "yellow6image", number: "6", body: """
Just because I have big, droopy ears and sad-looking eyes doesn‛t mean I‛m lazy or unhappy. I'm one of the most easygoing of all dog breeds.

I love to run and play. I‛m very loving and have oodles of personality. I‛m a wonderful, gentle family pet, and I LOVE children.

If you leave me alone for too long, your neighbors will get a dose of my deep, musical voice!

Beware...as adorable as I am, I slobber a lot and can have a strong doggy odor, but it won‛t matter because you‛ll love me so much.

Oh. And I love food.
If you leave it out, I'll find it
""", audioName: "yellow6"))
        
        dogBreedCards.append(CardClass(title: "Beagle", cover: "yellow7image", number: "7", body: """
Everyone loves a Beagle. I‛m so cute! Except I do shed a lot. Oh well. Besides, I make up for it with my “easy-care” short coat.

I was born to run...and HUNT. There‛s nothing - not even food - that I like better than a good chase and I‛ll follow my nose for miles.

Please fence me in so I don‛t wander away...although I might try digging under the fence to escape!

I just LOVE children and other dogs. In fact, if you teach me when I‛m young, I‛ll even learn to love a cat.
""", audioName: "yellow7"))
        
        dogBreedCards.append(CardClass(title: "Bernese", cover: "yellow8image", number: "8", body: """
Besides my outstanding good looks, I am calm, easygoing, and friendly. What more could you ask for?

I have long, silky hair that needs a lot of grooming, because I do shed quite a bit. And I enjoy cold weather because my coat is so thick and heavy.

I‛m a great family dog and I love kids. I also love being the center of attention, so include me in everything!

I‛m easy to train because I want to please you. But you can really hurt my feelings, so be kind and patient with me.

I have a great sense of humor - so let's have fun together
""", audioName: "yellow8"))
        
        dogBreedCards.append(CardClass(title: "Bichon Frise", cover: "yellow9image", number: "9", body: """
I look like a white snowball with jet-black eyes and nose. If you don‛t wash my face often, I can get brown tear stains that look like I‛ve been crying...BOO HOO.

I‛m really very lively and happy as long as you give me lots of love and attention. I am a very social little dog and don‛t do well when left alone for a long time. I just want to be with you!

If you want a super-easy pup to live with, that‛s me! I‛ll play games and snuggle with you on your lap (and on your pillow).

Remember, I may look like a stuffed toy, but I‛m not, so please be gentle with me.
""", audioName: "yello9"))
        
        dogBreedCards.append(CardClass(title: "Bloodhound", cover: "yellow10image", number: "10", body: """
My nose is so powerful that I can sniff out just about anything. Just try to hide that treat from me and you‛ll see what I mean.

I do better with older kids and adults, because I tend to be too big and clumsy for small children. I don‛t like anyone messing with my food or toys. Don‛t forget that!

I‛m also the “Slobber King.” One shake of my head and drool flies across the room!

I must admit, I am very vocal.
I love to talk, bark, and howl.

I‛ll try to chew and swallow anything that fits in my mouth, so watch over me.
""", audioName: "yellow10"))
        
        dogBreedCards.append(CardClass(title: "Border Collie", cover: "yellow11image", number: "11", body: """
Because I am super smart and was born to run after sheep, you must give me lots and lots of exercise...like walking and playing fetch or frisbee. I might drive you nuts with naughty behavior if I just lie around.

Some people say I'm hard to train because I am always watching and thinking about every move you make. I can also be a little jumpy about loud noises and sudden touches.

I learn very quickly. I can learn how to do anything I set my mind to...like escaping from the yard by picking the lock on the gate!
""", audioName: "yellow11"))
        
        dogBreedCards.append(CardClass(title: "Boston Terrier", cover: "yellow12image", number: "12", body: """
I was made for city life...but I‛m also quite ready to enjoy country adventures. Wherever I live, please protect me in hot weather as it can make it hard for me to breathe.

I don‛t like long walks but a short one is good for me. I also love playing indoors or in the yard, especially if I can chase balls!

You must make me believe that training is fun. I‛m very smart and if I‛m in the mood, I will learn new tricks.

Your parents will like this one: I‛m a very quiet dog. Although, because of my short, smooshy face, I tend to snort and snore a lot. But you will still love me in spite of it - or maybe even because of it!
""", audioName: "yellow12"))
        
        dogBreedCards.append(CardClass(title: "Boxer", cover: "yellow13image", number: "13", body: """
We have square jaws and lots of muscles. We also bubble over with energy. We love to bounce and jump, and we'll never grow up! Please make us a part of as many family activities as you can. And make sure we socialize with other dogs.

Sometimes we can be a bit stubborn, but mostly we're sweet, playful, and fun-loving.

Showing off is just our style! We need lots of exercise and our special person must spend lots of time with us.

Please give us chew toys and lots of things to do. If not, we can get bored and into mischief...like chewing on things that are not ours!
""", audioName: "yellow13"))
        
        dogBreedCards.append(CardClass(title: "Bulldog", cover: "yellow14image", number: "14", body: """
I have a big head, short legs, thick body, and a squooshed-in, wrinkly face. Sounds awful, huh? It‛s not. I may not be the most beautiful dog around, but I‛m definitely the cutest!

Even though I always seem to have a sad look on my face, I am really very happy.

My loving, sweet nature makes me a great family pet. I don‛t need too much exercise, but please don‛t let me become a couch potato...bor-ing!

Training? I am very strong-minded, but I do know how to cooperate.

You will always feel safe when I‛m around. I‛m a great watchdog and will always “have your back.”
""", audioName: "yellow14"))
        
        dogBreedCards.append(CardClass(title: "Cairn Terrier", cover: "yellow15image", number: "15", body: """
Let‛s see who can walk the farthest...I bet I‛ll win!

I look just like Toto in the “Wizard of Oz.” Have you seen that movie? You‛ll love it.

I can be bossy, busy, and lively. I don't enjoy just lying around. So give me lots of exercise for my mind and body. Me, a lap dog? No way!

I have a tendency to bark a lot and would love to dig up the yard.

Make sure you keep me on a leash for walks. I am a terrier, you know, so that means I love to chase critters!
""", audioName: "yellow15"))
        
        dogBreedCards.append(CardClass(title: "Cavalier King Charles Spaniel", cover: "yellow16image", number: "16", body: """
As our name says, we were King Charles II of England‛s favorite dog. Pretty cool, huh?
We're also called “peoples‛ dogs” because we enjoy humans of all kinds, shapes, and sizes.

Our best exercise is getting on and off your lap. But if you want us to really move, just give us something to chase! We do enjoy going for walks, but always on a leash.

Sometimes we don't remember the rules. We don‛t mean to chew the pillow or bark at the neighbors. We just forget that we're not supposed to do those things.
""", audioName: "yellow16"))
        
        dogBreedCards.append(CardClass(title: "Chihuahua", cover: "yellow17image", number: "17", body: """
I am the world‛s smallest breed and a bit of a picky eater...unless, of course, it‛s a treat. But don‛t worry,
I won‛t starve.

Brrrr...I don‛t like cold weather, so make sure to keep plenty of sweaters on hand!

I don‛t need much exercise and long walks make me tired.

Some of us are very affectionate and some of us are not. But we all love to be the center of attention!
""", audioName: "yellow17"))
        
        dogBreedCards.append(CardClass(title: "Chinese Crested", cover: "yellow18image", number: "18", body: """
Are you ready for this? I'm BALD...seriously! NO HAIR, except a little bit on the tips of my ears and on my tail. But I still need a good bath every couple of weeks. Buy me a cute sweater to keep me warm in cool weather.

Just because I'm small doesn't mean I'm not a good athlete. I‛m very good at jumping and climbing and I can escape from almost any type of pen, even if it has a six foot fence! I'm very smart, loyal, playful, and enjoy cuddling on the couch. I will fill your life with love, laughter, and entertainment.

And guess what? My brother or sister can be the "powder puff" type of my breed, which is VERY hairy with a long, silky coat.

Imagine that!
""", audioName: "yellow18"))
        
        dogBreedCards.append(CardClass(title: "Chow Chow", cover: "yellow19image", number: "19", body: """
I look like an angry lion but I'm really not. Check out my tongue! It‛s a dark, bluish-black color.

Mom and Dad will like that I am naturally clean, easy to housebreak, and quiet.

Keep me away from small animals since
I am a strong hunter.

I do best around older children. I don't like to be teased or treated badly, but neither does anyone else.

Make sure I learn to obey the rules whenI'm a puppy. Otherwise, I‛ll think I'm the boss! Treat me with love and respect and I will do the same to you.
""", audioName: "yellow19"))
        
        dogBreedCards.append(CardClass(title: "Cocker Spaniel", cover: "yellow20image", number: "20", body: """
Our tails almost never stop wagging. That‛s why we‛re called “wiggle butts!” We‛re sooo happy and like to check out everything around us, so it‛s often hard to keep our attention for training. Sometimes we‛d rather watch an airplane in the sky than go potty!
We‛re just as happy snuggling on the couch with our favorite adults as we are romping in the yard with the kids. But we can be sensitive to loud noises, so we often do best in a quieter home with older children.

We must admit we need a LOT of grooming, with a LOT of brushing and clipping. We do shed a lot, but we are sooo beautiful that you won‛t mind!
""", audioName: "yellow20"))
        
        dogBreedCards.append(CardClass(title: "Dachshund", cover: "yellow21image", number: "21", body: """
Sometimes I am called a “wiener dog” or a “hot dog." Funny, huh?

I have short legs but I still like long walks. Just slow down a bit! I shouldn‛t jump too much or get too heavy because it can hurt my back. Also be very careful when you pick me up.

I have a big bark for my size and I like to use it. Just tell me to be quiet. Shhh...

I love, and I mean LOVE, to dig. I will even dig my way under your blanket. Make sure there is plenty of air for me to breathe!
""", audioName: "yellow22"))
        
        dogBreedCards.append(CardClass(title: "Doberman Pinscher", cover: "yellow22image", number: "22", body: """
I can be a great buddy for the right person, but I do need proper training. I have worked for the military and police departments.

Do not leave me to entertain myself, because that probably means trouble. I need lots of time and attention from you.

I am a big dog and I also need lots of space to run and play. I love to gallop!

I usually do okay with other pets, but I sometimes like to boss them.

Sorry, I can‛t promise I won‛t chase cats!
""", audioName: "yellow22"))
        
        dogBreedCards.append(CardClass(title: "French Bulldog", cover: "yellow23image", number: "23", body: """
They call me big-eared, with a frog face. What I really am is a sweet-natured clown with a great sense of humor.

My favorite activity is being a couch potato!

I‛m quiet but love to have fun. I tend to get too hot during the summer, so I like cool weather much better.

I often snort, wheeze, and snore. And (please don‛t laugh), I do have a tendency to pass a lot of gas. Phewy!!!

But my sweet, good-natured, adorable personality makes up for all of that!
""", audioName: "yellow23"))
        
        dogBreedCards.append(CardClass(title: "German Pointer", cover: "yellow24image", number: "24", body: """
I have beautiful, silky hair, but it doesn‛t require much...just a bath once a month and a brush once a week and I will look great!

I need something to keep me busy - I am a very, very active dog and need to be with a very active family. I need to run out all my energy every single day. I love to run across wide, open spaces.

I am mostly a hunting dog. I prefer to live in a country setting, but a big fenced-in yard in the city will also do.

I am very smart and love to learn, so teach me lots of new tricks!
""", audioName: "yellow24"))
        
        dogBreedCards.append(CardClass(title: "German Shepard", cover: "yellow25image", number: "25", body: """
I‛m one of the world‛s most popular dogs.

My long coat does shed a lot, so please try to brush me every day to keep my hair looking its best.

I love to exercise. I am not the kind of dog who can be locked up in the house all day.

I am very smart, so it‛s easy to teach me good manners.

Sometimes I work with police officers or the military. 0h, I even have my own badge!
""", audioName: "yellow25"))
        
        dogBreedCards.append(CardClass(title: "Golden Retriever", cover: "yellow26image", number: "26", body: """
I am one of the finest family dogs in the world; cheerful, loving, trustworthy, and friendly. (I ESPECIALLY LOVE KIDS!)

I have a great nose and love to sniff out buried bones.

I am easy to train but can be a little stubborn, so start working with me while I am still a pup.

Give me two brisk walks each day, play fetch with me, and take me out for a good run once a week. I'll be one happy canine!
""", audioName: "yellow26"))
        
        dogBreedCards.append(CardClass(title: "Great Dane", cover: "yellow27image", number: "27", body: """
I'm typically easygoing and mild-mannered. I need lots of love and attention, but I give it too!

It‛s easy to hurt my feelings, so please be gentle and kind when training me.

I‛m an adorable puppy, but teach me when I am young not to jump on people. Don‛t forget...I‛ll be huge when I grow up and able to knock you down!

Being so big also means I can be a bit clumsy at times. It helps to have a good sense of humor when I'm around.

A yard with a strong fence is a must. After all, a giant needs room to run!
""", audioName: "yellow27"))
        
        dogBreedCards.append(CardClass(title: "Havanese", cover: "yellow28image", number: "28", body: """
Peaceful and gentle are the best words to describe me.

I may be a little shy around people I don‛t know, but I‛m an excellent playmate. I love people and other pets too...even CATS!

I can learn anything you want to teach me, especially new tricks. Please be gentle, because I don‛t like to be scolded. I‛m scared of harsh voices. Aren‛t you?
 
I‛m small but I love to bark! That makes me a great watchdog. Give me a window I can look out and I‛ll let you know when anyone gets near our house.
""", audioName: "yellow28"))
        
        dogBreedCards.append(CardClass(title: "Italian Greyhound", cover: "yellow29image", number: "29", body: """
Don‛t you just love my profile?

They call me “the daintiest of all breeds” because I look very fragile. I have the grace of my full-sized cousin, the Greyhound, with the charm of a lap dog. I need LOTS of attention and can even be clingy at times. You can‛t help but love me though, because I‛m so affectionate and sweet. My coat is very soft and only sheds a little bit. You can even use a polishing cloth to clean me so I look shiny and new.

Cold weather really bothers me, so give me a warm bed and a sweater or two to wear outside. Inside you will probably find me enjoying a perfect sunny spot by a window or snuggling under a blanket. Be careful not to sit on me!
""", audioName: "yellow29"))
        
        dogBreedCards.append(CardClass(title: "Keeshond", cover: "yellow30image", number: "30", body: """
My smiling face, beautiful coat, and sweet nature make me a wonderful family dog. I LOVE being with people, especially children!

I bark my head off at strange noises, but I won't catch any bad guys. Instead, I‛ll let them in and show them around our lovely house. Goodness! I‛d never think about biting them.

I do know how to act mean. I just curl my lip and show my teeth, pretending to snarl, but I‛m really just smiling and happy to see you.

Keep a brush handy! My thick coat needs lots of brushing to keep away the tangles.
Maybe thin my hair out a bit?
""", audioName: "yellow30"))
        
        dogBreedCards.append(CardClass(title: "Labrador Retriever", cover: "yellow31image", number: "31", body: """
I love to play in the water and I'm a great swimmer. Oh please, take me swimming or let me jump in the pool or lake from time to time. Please, Please, Please!

I am always eager to make you happy. But you‛ll want to give me plenty of exercise because “a tired dog is a good dog!”

I can be a very silly puppy and become quite full of myself.

I will try to get in your lap, even when I am fully grown. I love to cuddle and may forget that I can weigh over 60 pounds!
""", audioName: "yellow31"))
        
        dogBreedCards.append(CardClass(title: "Lhasa Apso", cover: "yellow32image", number: "32", body: """
My name means HAIRY BARKING DOG! Yes, I have beautiful long hair that needs lots of care, and, yes, I do like to bark.

I may look small and cute, but I have a mind of my own. I can be tough and strong-willed. So be sure to start my training early.

I am a little nervous with strangers and I take my job as a watchdog very seriously. Be careful because I definitely know how to bite! I really don‛t like to play rough and might snap at you if you tease me.

Make sure there‛s lots of time to play and cuddle, so I can give you my heart.
""", audioName: "yellow32"))
        
        dogBreedCards.append(CardClass(title: "Maltese", cover: "yellow33image", number: "33", body: """
I am said to be the “Ultimate Lapdog.”
I just love laps!

I am a smart, loveable little dog. If you treat me like a toy, I could become a little spoiled, always demanding your attention.
So, what‛s wrong with that?

I don‛t shed, so you won‛t have to vacuum all the time. And you probably won‛t sneeze around me either.

I can be a bit difficult to housebreak, so a doggy door leading to a covered potty yard would be great.

Zipping around a fenced yard is fun.
And, yes, I do like to bark!
""", audioName: "yellow33"))
        
        dogBreedCards.append(CardClass(title: "Miniature Schnauzer", cover: "yellow34image", number: "34", body: """
I LOVE MY FAMILY! I want to be with them all the time - and that includes a spot on the bed! No worries, I don‛t snore.

I don‛t believe in shedding, which means I‛m usually great for people with allergies. I still need a good combing once a week.

Some people say I‛m stubborn and high-energy…but I can also be calm and very sweet-natured.

I love to catch mice, so a small, furry toy would be a nice present for me. Then you‛ll really see all my energy!
""", audioName: "yellow34"))
        
        dogBreedCards.append(CardClass(title: "Papillon", cover: "yellow35image", number: "35", body: """
Are you looking for a calm, quiet, cuddly lapdog? Then keep looking, because that‛s not me! I am quite active and don‛t like to sit still very long.

My name comes from the French word for “butterfly” because my ears stand up and look like butterfly wings.

I‛m happy as long as I‛m with you, either playing or just sitting by your side, but not for too long. Throw me that squeaky toy will you? Oh, and these are “MY” toys so NEVER try to take them from me!

I am very smart and learn good manners in no time. In fact, I can even make up my own games to keep myself entertained!
""", audioName: "yellow35"))
        
        dogBreedCards.append(CardClass(title: "Pembroke Welsh Corgi", cover: "yellow36image", number: "36", body: """
They say I‛m a “big dog in a small body.” I have VERY big ears and VERY short legs. Cute, huh?

I was bred to be a cattle dog and was taught to nip at cows‛ heels to keep them moving. So watch out! I might nip at YOUR heels too! In fact, I love to chase anything that moves...bikes, squirrels, joggers...you get the idea.

I am bossy and can get easily excited. Give me lots of toys and exercise to keep me happy. I LOVE going to the park! And guess what? I'm a heavy shedder, but you only need to brush me once a week. Woo-hoo!

I get along well with other pets. And I especially love cows and horses, so I would be great on a farm!
""", audioName: "yellow36"))
        
        dogBreedCards.append(CardClass(title: "Pomeranian", cover: "yellow37image", number: "37", body: """
I‛m sooo cute - just a little ball-of-fluff! I‛m very playful with lots of energy and have a bubbly personality. I like to be the life of the party!

I am smart and quick to learn but can get into mischief - so keep an eye on me. You need to teach me when to be quiet, because I love the sound of my own voice!

Please know that I don‛t have a lot of patience for rough play. That is why I prefer adults and older children.

You will need to have a good vacuum cleaner because I do shed a lot. Cuddling on your lap and being close to you is what I want most.
""", audioName: "yellow37"))
        
        dogBreedCards.append(CardClass(title: "Portuguese Water Dog", cover: "yellow38image", number: "38", body: """
As you can tell from my name, I LOVE swimming and diving whenever possible. I also love running and long walks. I wish I could learn to ride a bike!

My coat is curly, and here's the good news...I don't shed too much. At least not on your clothes or furniture. Still, you must brush me often to remove hair mats.

You might find me sitting calmly one minute, and the next minute, I could have a sudden explosion of energy and run as fast as I can through the house!

I am truly a "people" dog. Give me love and I'll give it right back to you.
""", audioName: "yellow38"))
        
        dogBreedCards.append(CardClass(title: "Pug", cover: "yellow39image", number: "39", body: """
Here‛s my list of possible friends: other pets, children, and visitors, as long as you spend more time with me than you do with them. I might get jealous!

I usually forget about exercise, so I would appreciate it if you could remind me every now and then. Oh! Another important thing is don‛t take me outside too long when it‛s really hot or really cold.

My short face makes me have a strange little bark. I also make cute snorting and snuffling sounds.

My favorite thing to do is to act like a clown and entertain the whole family!
""", audioName: "yellow39"))
        
        dogBreedCards.append(CardClass(title: "Rhodesian Ridgeback", cover: "yellow40image", number: "40", body: """
I‛m called a Ridgeback because of a strip of hair that grows in the opposite direction down the middle of my back.
Isn‛t that interesting?

I‛m brave and a super watch dog.
Nobody gets by me!

I do need a lot of attention and exercise. And you should know I tend to be very stubborn. But I am still a wonderful dog.

I am quiet and calm in the house after I grow up but not when I‛m a puppy. So you‛ll have something to look forward to!
""", audioName: "yellow40"))
        
        dogBreedCards.append(CardClass(title: "Rottweiler", cover: "yellow41image", number: "41", body: """
We "Rotties" are very cute as puppies, but remember that I will grow up to be a large, powerful dog. I need a lot of space and exercise. I am very smart and highly trainable, but I need a calm, caring, and confident person to handle me.

I sometimes serve in the military as a police dog. I also help blind people, which makes me feel so good.

The truth is, I prefer to be the only pet in the household. I can be bossy, so it works better that way!

Being large and muscular doesn‛t keep me from wanting to sit on your lap!
""", audioName: "yellow41"))
        
        dogBreedCards.append(CardClass(title: "Shipperke", cover: "yellow42image", number: "42", body: """
I know, I have a funny name...but you will absolutely love me!

I‛m friendly, devoted, and affectionate. Put all that together and you can see why I make such a super companion.

But beware - I am on the stubborn side. I know what I like, and I will always go for it! That‛s why a strong, confident person is best for me.

I‛m a very loud barker and a little busybody, so keep an eye on me at all times. Make sure the backyard fence is strong, because if there‛s a way out - I‛ll find it!
""", audioName: "yellow42"))
        
        dogBreedCards.append(CardClass(title: "Scottish Terrier", cover: "yellow43image", number: "43", body: """
Some people call me “Scottie.” Some say my middle name should be “Stubborn.” I do like doing things my way.

Give me a fenced yard to play in, but keep me away from the garden. I LOVE TO DIG!

My hair needs a lot of brushing and it can grow too long for comfort. I‛ll need regular haircuts, just like you.

Training me may be a little bit hard. Some say I am very strong-willed. But I‛m both playful and loyal, so I'd fit right in with your family.
""", audioName: "yellow43"))
        
        dogBreedCards.append(CardClass(title: "Shetland Sheepdog", cover: "yellow44image", number: "44", body: """
What are some words to describe me? Besides being smart, I‛m gentle, sweetnatured, loving, loyal, and sensitive.

I look like a Collie, but most people know me as a “Sheltie.” I have beautiful, long hair that needs daily grooming.

I might be shy and nervous around strangers if you don‛t train me properly when I‛m a puppy.

Just teaching me something once is usually enough. I learn quickly.

I don't like a lot of loud noise and enjoy a quiet, peaceful home.
""", audioName: "yelow44"))
        
        dogBreedCards.append(CardClass(title: "Shih Tzu", cover: "yellow45image", number: "45", body: """
Did you know that my name means “lion dog” in Chinese?

My coat can be gorgeous, but only if you give me a lot of brushing every day.

I like people best - especially adults, but well-behaved kids are fun to be with too.

Here‛s what I say about exercise: Whatever! I can take it or leave it…mostly I prefer to leave it! What I really love to do is snuggle in your lap.

Rules? What rules? If you want to teach me, make it fun. And just a warning…
I‛m kind of hard to housebreak.
""", audioName: "yellow45"))
        
        dogBreedCards.append(CardClass(title: "Soft Coated Wheaten Terrier", cover: "yellow46image", number: "46", body: """
My name comes from the color of ripe wheat! Mmmm, makes me want a piece of bread.

“Where are your eyes?” you might ask. My hair is covering them! Maybe you can clip the hair in front of my eyes so I can see better. I confess that my soft, silky, curly coat needs a lot of care. But I don‛t shed, and that's a good thing!

I'm a great playmate. Because of my sense of fun and energy that just doesn't quit, I need plenty of exercise to wind me down. Did you know that I am sometimes called a “bouncer?” Yep, I do love to jump and need a yard - with a very high, secure fence! Otherwise, I just might go over it, or under it!
""", audioName: "yellow46"))
        
        dogBreedCards.append(CardClass(title: "Standard Poodle", cover: "yellow47image", number: "47", body: """
I‛m more than just a fancy haircut. I am well-behaved and lots of fun!

Now back to my fancy haircut. I need a lot of grooming; I always want to look my best. Brush me every day to keep the tangles away. OUCH...they hurt!

I am very good-looking, but I‛m never stuck-up. I love to play and take long walks. Those are the things that keep me happy.

I also like to chase cats, squirrels, and anything else that runs. You must teach me to not do that. I can be sensitive and need a person with a good sense of humor!
""", audioName: "yellow47"))
        
        dogBreedCards.append(CardClass(title: "Toy Poodle", cover: "yellow48image", number: "48", body: """
Don‛t even start with me about grooming my hair! I need a trip to the “hairdresser” every 6-8 weeks to keep me perfectly "poofed." But if you want to keep things simple, a regular, easier-to-manage cut will work just as well.

You probably won't sneeze around me because I am one of the most hypo-allergenic of all breeds.

I am very easy to train. I like learning tricks, and I LOVE to have fun!

Because I‛m so small, I don‛t eat a lot. A nibble here and a nibble there is fine. I do need a daily walk to stay healthy, but what I‛d rather do is go SWIMMING! I love to fetch floating toys in the water. Start me young!
""", audioName: "yellow48"))
        
        dogBreedCards.append(CardClass(title: "Vizsla", cover: "yellow49image", number: "49", body: """
Some people call me "Velcro Vizsla" because I like to stick myself to you, especially in your lap!

I‛m as athletic and as light on my feet as a cat. Give me lots of exercise to keep me happy and healthy, and I will be your best friend forever.

I sure like to communicate! I talk, whine, moan, groan, and make other noises to let you know my opinion and how I feel about what's going on.

Train me early and I will get along well with everyone, including other animals.

Make sure I have a box full of toys to carry around in my mouth or I might chew your hand instead...lovingly, of course.
""", audioName: "yellow49"))
        
        dogBreedCards.append(CardClass(title: "Welsh Terrier", cover: "yellow50image", number: "50", body: """
I am a great “people dog” and make a sweet friend for those who appreciate a fun-loving pet with a mind of his own. Make sure to bring your patience along when training me.

I‛m easily distracted and might ignore you. Since I'm a dog who likes being kept busy, I can easily get into trouble if left alone for too long.

It takes a lot of walking to get me tired. Then I‛ll still want to play.

I love to chase, especially small animals. If you choose me as a pet, it‛s best if I don‛t share a home with cats.

Oh, and by the way,
I make a great watchdog too!
""", audioName: "yellow50"))
        
        dogBreedCards.append(CardClass(title: "West Highland White Terrier", cover: "yellow51image", number: "51", body: """
Some people call us “Westies.” We could possibly be the cutest dogs ever, and we are VERY popular! One reason is that we're very, very friendly.

We only come in one color – white, so we need a bath often.

We love to chase after interesting smells, so it‛s important to teach us to “stay” on command. That way we won‛t disappear and get lost. Even better, always have us on a leash, unless we're in the house or in a fenced yard. If we see a squirrel, we're going after it!
""", audioName: "yellow51"))
        
        dogBreedCards.append(CardClass(title: "Weimaraner", cover: "yellow52image", number: "52", body: """
I‛m called“The Grey Ghost” because of my silvery grey coat and light eyes.

I love to play outside and go on long walks. Giving me some time off my leash is also important. That‛s when I can run freely and let my hair down!

High-energy describes me best, so give me plenty of exercise. You need to exercise too, so how about going for a run with me?

I tend to get along with other dogs, but I like to be the boss.

I enjoy attention, love, and affection.
Who doesn‛t?
""", audioName: "yellow52"))
        
        dogBreedCards.append(CardClass(title: "Yorkshire Terrier", cover: "yellow53image", number: "53", body: """
My best quality is that I DON'T SHED! That means I won‛t make you sneeze or get a runny nose!

It‛s very easy for me to get cold, which is why I love to wear sweaters. They always give me that warm, cozy, and snuggly feeling.

I weigh less than 7 pounds...so please be gentle and careful with me. And don‛t tease; it upsets me.

I can be a little bossy, but I do get along with other pets. It‛s small children who truly scare me. I never know if they‛ll step on me or what!

I'm stubborn and I may have a hard time learning to potty outside, but I CAN DO IT!
""", audioName: "yellow53"))
        
        dogBreedCards.append(CardClass(title: "Visit Our Website", cover: "yellow54image", number: "54", body: """
Visit us at www.happykids-happypets.com to see if we have a contest going on. You could win a Happy Kids-Happy Pets surprise mystery package!

All you have to do is send in your own story telling us about your dog. You can write this by yourself or with the help of a friend or family member. Hurry and ask your parents if you can go to our website!
""", audioName: "yellow54"))
        
        
        return dogBreedCards
    }
}
