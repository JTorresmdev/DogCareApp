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
    
    //Function to provide all of the Red Card information in String Form
    static func redCards() -> [CardClass] {
        var dogCareCards = [CardClass]()
        dogCareCards.append(CardClass(title: "Knock, Knock! Who's There?", cover: "red55image", number: "55",
                                      body: """
Knock, knock!
Who's there?
Thank.
Thank who?
Thank YOU for buying these cards!

Did you know that we have four other boxes of cards with different messages on how to treat yourself and others?
Please check them out!

Would your family like to donate to the Happy Kids-Happy Pets fund so we can help even more animals? If so, visit our online donation page. 50% of the profits from the sale of these cards and 100% of all donations go to animal welfare/spay/neuter.
""", audioName: "red55"))
        dogCareCards.append(CardClass(title: "Shelter Dogs Need a Home!", cover: "red1image", number: "1",
                                      body: """
There are many mutts and purebred dogs that need loving homes, just like yours. So when you're ready to add a dog to your family, don't forget to check the shelter, foster parents, or adoption events to find your very own special dog.

My Family says I'm special because I came from the shelter. Your dog will be too!

What are some things that are so special about adopting a dog from the shelter?
""", audioName: "red1"))
        dogCareCards.append(CardClass(title: "Why Mutts are Wonderful", cover: "red2image", number: "2",
                                      body: """
A mutt is a dog that is not a "purebred." It is a mixture of dog breeds. I'm a mutt. My grandfather was a Beagle; my grandmother was a mix of Maltese, Lhasa Apso, and something else. They each gave me their best qualities.

There is no other dog exactly like me. Even my brothers and sisters dont look like me, but we are each perfect. My human family tells me then love me. That is all that matters. Oh yeah, a couple more things...I love myself, and I love my family too.

How many wonderful mutts do you know? Can you name them?
""", audioName: "red2"))
        dogCareCards.append(CardClass(title: "Fleas, Fleas, Go Away!", cover: "red3image", number: "3",
                                      body: """
Fleas, fleas, go away - and don't come back another day. Has anyone ever had fleas on them? They bite, and it hurts! We'd rather have bees then fleas. At least we could enjoy snapping at them.

We don't mind the flea medicine our human mom puts on our backs every month: anything but a flea! She also gives us heart worm medicine every month. It tastes so good and protects our hearts.
But remember, it's only for us pets!

How do you make sure your pets are protected from fleas and heartworm?
""", audioName: "red3"))
        dogCareCards.append(CardClass(title: "Purebred or Mixed?", cover: "red4image", number: "4", body: """
My human mom used to only want a purebred dog. That means a dog with a mommy and daddy who come from the same breed. She was clueless about those of us who cmoe from a mixture of dogs. She didn't know how smart, friendly, and sweet we are.

The proof came when she met me and fell in love. I taught her that it's about the dog, not the purebreed. Now she loves mixed breeds as well as purebreds. We even have a new little sister who is a Chi-Peek-a-Boo or something like that. Who knows? Who cares? Whatever!

Does it matter to you if your dog is a purebred or mixed?
""", audioName: "red4"))
        dogCareCards.append(CardClass(title: "So you want a Dog?", cover: "red5image", number: "5", body: """
My human brother, Johnny, wanted a dog. He promised Mom and Dad that he would handle all the responsibilities that come with owning a dog. So they got Me.

But he doesn't do anything he promised he would do. He said he would walk me, feed me, and make sure I always had plenty of clean water. But he hardly does any of that. I sure am glad my human mommy takes care of me. If i had to wait for Johnny, I'd be in trouble!

What do you think about Johnny not keeping his promise?
""", audioName: "red5"))
        dogCareCards.append(CardClass(title: "Everyone Needs Space and Time", cover: "red6image", number: "6", body: """
Please don't leave me in a cage that is too small. I need to stretch my legs and move around. Think about how bored, cramped, and lonely you would feel being in a small cage for so many hours.

Make sure you have time for me. When you do leave for a long time, please exercise me before you go and give me plenty of room to be comfortable until you return home. Better yet, how about my own room while you're gone?

Do you give your pet enough space, exercise, love, and time?
""", audioName: "red6"))
        dogCareCards.append(CardClass(title: "Dogs' Needs", cover: "red7image", number: "7", body: """
Do you know what dogs need? They need food, clean water, lots of exercise, and potty breaks. They also need to be kepty warm enough in the winter and cool enough in the summer. And don't forget to socialize them when they are young, so they learn to get along with other people and dogs...maybe even cats! It's also very important that they be taken to the vet regularly for all of their shots and check-ups/

Most of all, dogs need plenty of attention, understanding, and LOVE!

Can you think of anything else a dog needs?
""", audioName: "red7"))
        dogCareCards.append(CardClass(title: "Im Older Now", cover: "red8image", number: "8", body: """
I can't chase balls anymore - and some days my hips and bones really ache. Please make sure the vet gives me medicine for pain as needed. Now I just want to sit in the sun and remember all those squirrels I kept out of the backyard.

Please be very gentle and don't push on me. Also make sure I have a padded, comfortable bed so I don't feel the hard floor.

Please understand that I need to move slower and take shorter walks. I am truly sorry if I have occasional accidents in the house.

And please know that I love you and I know that you love me. Life is still good.

What are some nice things to do for older dogs?
""", audioName: "red8"))
        dogCareCards.append(CardClass(title: "Waggy Tail", cover: "red9image", number: "9", body: """
How much is that doggie in the window, the one with the waggly tail? Just for your information, when my tail is wagging, it usually means I am happy and feeling safe. And that is a good sign. It means I probably won't bite.

I guess there can always be exceptions to the rule. I can change my mind if I get scared or someone is annoying me. also if my hair stands up on my back, keep in mind that I might be scared or angy.

Can you tell a dog's mood by his tail or hair?
""", audioName: "red9"))
        dogCareCards.append(CardClass(title: "We Don't Get It!", cover: "red10image", number: "10", body: """
We don't get how someone could be mean to animals!
We are loyal and would do anything for you. We love you so much, we dont cre if you sing off-key or even when you smell garlicky. Why would anyone want to hurt us?

We've heard our human mommy say she is shocked when she hears about someone hurting an animal. She can't imaging how someone could do that. We just want to be your best friend!

Do you have a pet who is your best friend?
""", audioName: "red10"))
        dogCareCards.append(CardClass(title: "Pick It Up", cover: "red11image", number: "11", body: """
What's the big deal about picking up my poop? I'm ready to keep walking and my human mommy has to stop, get the bag, scoop it up, and then hold it until we find a trash can. Can we go already? Oh, I forgot, I'm supposed to be working on my manners and being nice to others. But this dog was made for walking! Let's go!

P.S. I really do know that it is nice and respectful for Mom to "pick up" after me on our walks.

Do you pick up after your pet?
""", audioName: "red11"))
        dogCareCards.append(CardClass(title: "Did I Hear the Word \"Treat?\"", cover: "red12image", number: "12", body: """
My human says treats are good for my teeth, even though they do still need to be brushed. I just love the crunch and the taste.

It's about time for breakfast. Do you know what comes after that? The "T" word - TREAT! I can hardly wait! Sometimes I grab it and go hide under the bed to eat. I know it's not good manners to grab, but no dog is perfect.

Do you think Mom might give me two treats today?
""", audioName: "red12"))
        dogCareCards.append(CardClass(title: "Too Tight?", cover: "red13image", number: "13", body: """
I am super-glad my human mom checks my collar regularly to see if it fits me just right. Not too tight so I can breathe easily and be comfortable; not too loose so I don't catch it on anything or slip out of it.

Don't forget, I wear my collar around my neck 24/7 so it has to be a perfect fit.

How often do you check your pets collar to make sure its comfy?
""", audioName: "red13"))
        dogCareCards.append(CardClass(title: "Ouch! That Hurts!", cover: "red14image", number: "14", body: """
Sometimes my human baby sister hurts me. Ouch! I know she is little and doesn't know better, but it would be nice if my parents made sure she didn't pull my ears and tail, poke my eyes, yank my fur, climb on me, or hold me too tight.

Also, they need to make sure she does not hit me or throw her toys at me. I don't like it one bit! I am part of the family too. I hope my parens watch her until she is old enough to know to be more gentle with me.

Do you make sure your younger brother or sister is gentle with your pets?
""", audioName: "red14"))
        dogCareCards.append(CardClass(title: "Spay or Neuter", cover: "red15image", number: "15", body: """
Spaying and neutering are operations that a vet does to stop pets from having more kittens or puppies. Girl pets are spayed. Boy pets are neutered. This is a very important operation. Why? There are way too many animals without homes.

you can see them on the streets or in shelters. Many animals are put to sleep if they can't find homes. Puppies and kittens are so cute, but they do grow up and will have more babies. So please spay and neuter your pet!

Have you ever heard or spaying and neutering?
""", audioName: "red15"))
        dogCareCards.append(CardClass(title: "We Love to Socialize", cover: "red16image", number: "16", body: """
Our human mother makes play dates for us all the time. We get to meet new dogs, new kids, and occasionally a cat! You know why she does it? She says it makes us well-adjusted. It helps us get along with everyone.
She calls it socializing. What a big word! Wonder what she has on the calendar for tomorrow?

Do you socialize your pet?
""", audioName: "red16"))
        dogCareCards.append(CardClass(title: "Help, I'm Lost and Can't Find My Way Home", cover: "red17image", number: "17", body: """
My family wants to be sure that if I get lost, I can make it home again. That's why I wear an ID tage on my collar with my name on it. I also have a chip inside of me with my telephone number on it. That way my family can find me. I love my family.

Well now I am lost and can't find my way home. Will you help me find my family? Please call the number on my collar or take me to the vet to read the microchip inside of me.

Does your pet have a collar with an ID tag on it? A microchip?
""", audioName: "red17"))
        dogCareCards.append(CardClass(title: "Shhh!", cover: "red18image", number: "18", body: """
My favorite trick is to speak softly. Some people think that dogs have to bark loudly. What's up with that? When I speak softly, it sounds much nicer.

Please encourage me to speak softly or use my "indoor voice." I am so cute when I do that. I only bark loudly if a stranger comes to the door. My human daddy says I'm the best guard dog in the world.

How can you teach your dog to speak softly?
""", audioName: "red18"))
        dogCareCards.append(CardClass(title: "We Eat When We're Hungry", cover: "red19image", number: "19", body: """
when we were young, our human mommy would always leave out a bowl of good quality, dry dog food for us. There was always plenty of food, so we didn't feel the need to gobble it up all at once. we learned to only eat when we were hungry.

Of course our vet might not agree with that. Some people feed their dog once a day, but we think twice a day is better. 24 hours is a long time to wait! We also think if dogs are hungry, it's okay to give them vegetables to help fill them up.
P.S. We love when Mommy gives us a tablespoon of olive oil to keep our joints healthy/

How often do you feed your dog? Do you know if he/she likes veggies?
""", audioName: "red19"))
        dogCareCards.append(CardClass(title: "Two is Better Than One", cover: "red20image", number: "20", body: """
I was seriously on a mission. My human family and I picked out a new brother at the shelter today. It might be a little more work, but it's worth it whenever we can get a dog out of the shelter. We're going to have a great life together with long walks, care trips, playing fetch in the backyard, and lots of love. I'm so excited. I can hardly hide it...my tail is going 90 miles an hour!
Mission accomplished!

Next time you get a pet, what do you think about going to your local shelter, humane society, or a place that adops or fosters rescued animals?
""", audioName: "red20"))
        dogCareCards.append(CardClass(title: "It's Cold Outside", cover: "red21image", number: "21", body: """
Please, please don't leave me out in the cold during winter! If for some reason I can't stay in the house, make sure I have an insulated doghouse, shed, or garage with a rubber flap for the door so I can go in and out...and give me plenty of hay or blankets to snuggle into.

Make sure to keep the hay changed out often and blankets clean. Keeping me warm is what it's all about!

How do you keep your pets warm in the winter? Do you need to ask your vet for some ideas?
""", audioName: "red21"))
        dogCareCards.append(CardClass(title: "Betty Lou Says, \"Keep Me Warm and Cozy\"", cover: "red22image", number: "22", body: """
It's time to go shopping and to check out the latest styles at the pet store. I need a new coat. They have a special sale going on now!

Sometimes in the winter, it gets really cold, and my human mommy puts two coats on me or a sweater with a coat. She buys one larger than the other so she can keep me warm and cozy. But don't let me get too hot either. Yippee Skippee! I can't wait to wear my new coat.

Does your dog have a nice, warm winter coat?
""", audioName: "red22"))
        dogCareCards.append(CardClass(title: "Max and Me", cover: "red23image", number: "23", body: """
I met the greatest dog, Max, yesterday. I wanted to run up and sniff him right away. But Mom held me back. "See the yellow ribbon on his leash?" she asked me. "It means he needs more time to introduce himself to you. Maybe he's shy. Maybe he's aggressive. The yellow ribbon tells us to approach him slowly."

Max told me later that people and dogs who come on too fast give him the heebie-jeebies. We made sure to ask the owner; she said it was fine and we walked up slowly. Now Max and I are buddied. My mom is so smart!

Do you ask the owner if it's OK before you go up to their dog?
""", audioName: "red23"))
        dogCareCards.append(CardClass(title: "Don't Leave Me Tied Up!", cover: "red24image", number: "24", body: """
Please, never tie me to a tree. Not good. Put yourself in my shoes, I mean paws. Seriously, tied to a tree for hours, day after day? If a mean dog was trying to bit me, I couldn't run away. It is terribly uncomfortable, and it hurts my neck. It's also lonely. Even worse, I'm outside in the way rain, hot sun, or cold winter and snow. There's nowhere to go.

In time it could also make me very mean; I could show my teeth, jump on people walking by, and bite them. Why have a dog if it has to be tied to a tree everyday? How about bringing me inside with the family or a fenced-in yard instead?

How would you feel if you saw a dog tied to a tree day after day?
""", audioName: "red24"))
        dogCareCards.append(CardClass(title: "I Hear Ya'!", cover: "red25image", number: "25", body: """
Yikes! It's loud out here! Please keep the music down! My ears are much more sensitive than yours. You can't imagine how loud noise hurts my ears. Think of poor little ol' me.

Did you also know I hear thunder way before you do? So if you see me shaking before you hear anything you'll know why!

Did you know dogs have very sensitive ears?
""", audioName: "red25"))
        dogCareCards.append(CardClass(title: "How Hot Is It?", cover: "red26image", number: "26", body: """
Do not...repeat, DO NOT...leave us in a locked car. It is not fun when the sun is beating down. It could get to be up to 105 degrees or more inside the car, even if it is only 85 degrees outside!

We could start to have trouble breathing. If you see someone else's dog locked in a hot car, ask your mom or dad to call 911 and report it. If it is too cold in the car, we could freeze! It is best to NEVER leave a pet locked in the car because you don't know how hot or cold it really is inside the car.

Did you know not to ever leave your pet locked in a car?
""", audioName: "red26"))
        dogCareCards.append(CardClass(title: "Something to Chew On", cover: "red27image", number: "27", body: """
Please don't get mad at me if I chew something up. I still have a lot of "puppy" in me! Give me something for my teething. My teeth are hurting, and it makes me feel better to chew on something.

Just know that I will grow out of it one day. If you give me a rawhide bone, make sure I don't choke when I get near the end of it!

Do you make sure your puppy has plenty of toys to chew on?
""", audioName: "red27"))
        dogCareCards.append(CardClass(title: "Blind and Full of Love", cover: "red28image", number: "28", body: """
Don't feel sorry for me. I may be blind, but my nose is still working at 100%. Smell is a powerful sense to us dogs. My "sniffer" as almost as important to me as your eyes are to you.

However, you may need to help me a little. Keep me on a short leash so I don't wander into traffic. Stop when there are steps or curbs that I have to step up or down on and let me get my bearings first.

Finally, give me lots of TLC(Tender Loving Care). You'd do that anyway, wouldn't you? So you see, blindness is not such a big deal for me - as long as I have you in my life!

Did you know dogs rely on their sense of smell?
""", audioName: "red28"))
        dogCareCards.append(CardClass(title: "Don't Make Me Wait Too Long", cover: "red29image", number: "29", body: """
We older dogs have to go to the bathroom more often then when we were younger. Frequently I need to wake up my human mommy or daddy during the night so they can let me outside to go potty. I'm so glad they understand and don't get mad at me or make me wait a long time to go out.

Some people say, "My dog can hold it for hours and hours." Maybe they can, but it sure is NOT comfortable!

How did you feel when you had to "hold it" for a long time? What happened?
""", audioName: "red29"))
        dogCareCards.append(CardClass(title: "Antifreeze", cover: "red30image", number: "30", body: """
Yum Yum! We hear antifreeze smells wonderful and tastes really sweet - so it would be very tempting to try some. But it's also very poisonous; many dogs and cats have died after licking only an itsy bit off a street or driveway.

Please ask your mmom and dad to store antifreeze away from your pet. And always check to make sure none has leaked from the car. Or better yet, ask your parents to buy the new brands that don't smell or taste as good to us. Their car will run just fine - and so will we. Thank you!

Have you ever heard of dogs licking antifreeze?
""", audioName: "red30"))
        dogCareCards.append(CardClass(title: "No Bones About It!", cover: "red31image", number: "31", body: """
I love bones. I really do. They clean my teeth, exercise my jaw, and give me a workout. But not all bones are good for me. some can even be dangerous! Chicken or steak bones can splinter in my stomach.

also remember that when you give me a rawhide bone, stay with me and make sure I don't choke on it.

Are you careful what kind of bones you give your dog?
""", audioName: "red31"))
        dogCareCards.append(CardClass(title: "Don't Stop at the Nose", cover: "red32image", number: "32", body: """
some people say your dog is healthy if his nose is cool and moist...but that's not necessarily true. What's going on inside of him is even more important. Don't stop at his nose, but also look in his mouth for nice pink gums (not blue-ish)

Also make sure that his eyes are clear and that there are no yellow spots on the inside of his ears. This is a sign of a possible infection...or something worse. Bad breath and runny poop are also things to look for. Keep an eye out for these symptoms in your dog!

Do you know what signs to look for that warn if your dog is not healthy?
""", audioName: "red32"))
        dogCareCards.append(CardClass(title: "Betty Lou Says, \"I Do Love My Comfort\"", cover: "red33image", number: "33", body: """
My human mom, Betty, makes sure I have everything I need. Today she is going to get me a new bed. What a sight to see her trying the beds out for comfort in the store! "This bed is too hard," she says. "This bed is too soft", This bed is just right!" Sounds like another story I've heard before.

Do you know what story I'm talking about? Isn't it funny that my human mom and I have the same name?
""", audioName: "red33"))
        dogCareCards.append(CardClass(title: "No Teasing Please", cover: "red34image", number: "34", body: """
It's not a good idea to play with me while I'm eating or chewing on my bones. I might get angry. You wouldn't like it if I snatched your hamburger away from you, would you? Well I don't like when you play around with my food. After all, foos is a serious business!

So let's make a deal. Don't tease me while I'm eating my food or bones and I'll keep thinking you are the greatest human in the whole world. OK?

Do you know not to tease me when I'm eating?
""", audioName: "red34"))
        dogCareCards.append(CardClass(title: "When the New Baby Comes Home...", cover: "red35image", number: "35", body: """
My human mom and dad were expecting a baby boy for months. I knew he was coming and they prepared me for it. They told me they might not have as much time to spend with me and I might feel lonely. They said they still love me, but the baby would need a lot of their time.

When the baby finally came home, I still got hugs, treats, and walks. I also got a new, important job - to protect the baby. When he's older I can show him how to catch balls, ride in cars, and pee on trees. Until then, I'll keep him company and protet him. It's a very big job!

Do you know there is always plenty of love to go around?
""", audioName: "red35"))
        dogCareCards.append(CardClass(title: "When Walks Are Not Enough", cover: "red36image", number: "36", body: """
I'm what you call a high-energy dog. I need exercise every day. I've got to run...jump...swim...catch Frisbees...chase balls - whatever! A walk may be fine for other dogs but not for me, thank you. If I don't get serious exercise everyday. I'll be into everything. I may eat the furniture, run around in circles, and get into all kinds of trouble. I'll drive my human family crazy!

So grab a ball and throw it (but no sudden stops for my knees, please). Let me run with you while you take your bike to the park. Help me get rid of my extra energy!

Do you know any dogs like me?
""", audioName: "red36"))
        dogCareCards.append(CardClass(title: "Small Dogs", cover: "red37image", number: "37", body: """
I'm a small guy with short legs that carry all my weight. I cannot jump off furniture without risk of breaking a bone. (Hello, did you notice that I hurt my leg?)

I shouldn't roughhouse with humans or dogs much bigger than I am. They may hurt me. I need extra gentleness from children who might infure me without meaning to do so. I could get more fragile as I get older. I may be fragile, but I'm fierce. Just ask Jake, the Great Dane. He's afraid of me!

Did you know you have to extra careful with most small dogs?
""", audioName: "red37"))
        dogCareCards.append(CardClass(title: "When a New Pet Arrives...", cover: "red38image", number: "38", body: """
I heard my human mom and dad are bringing home a new pet today. I am so excited! Mom wans to be sure that my new sister feels welcomed and not overwhelmed, so she is introducing us slowlyto each other.

Mom said she'll keep me on a leash because I might scare my new sister by jumping on her. She says I need to be calm. Calm is tough, but I'll try. It I get too excited, Mom says she'll put me in the backyard to give my sister time to relax and get comfortable. I'll try really, really hard to be calm. I'm proud to be a big brother!

Have you ever introduced two pets to each other?
""", audioName: "red38"))
        dogCareCards.append(CardClass(title: "Know your Limits", cover: "red39image", number: "39", body: """
The kid next door rides his bicycle and lets his dog, Bill, race after him. they have a great time for an hour every afternoon and Bill gets a lot of exercise. That wouldn't work for me. Not one bit.

Bill is built for running - but I'm not. I'm built for snuggling in somebody's lap. I just couldn't run like Bill, ever! I shouldn't even try; it wouldn't be healthy for me. Thank goodness my human mom understands that. We take walks everyday, and that is plenty enough exercise for me. A dog needs to know his limits = and so does his human family.

Do you know how much exercise is right for your dog?
""", audioName: "red39"))
        dogCareCards.append(CardClass(title: "Do Unto Other Dogs...", cover: "red40image", number: "40", body: """
We just heard something called "The Golden Rule." It says, "Do unto other dogs as you would have other dogs do unto you." We couldn't have said it better!

If you want us to be gentle, you have to be gentle with us. If you want us to be well-adjusted, you need to adjust your time with us. If you want us to be happy, you need to treat us well. Wow! How simple is that? Just treat us with respect and you'll get great dogs back.

Do you treat your pet the way you want to be treated?
""", audioName: "red40"))
        dogCareCards.append(CardClass(title: "Get the Right Dog", cover: "red41image", number: "41", body: """
Not every dog is perfect for your family. Finding the right dog means many wonderful years together.
\u{2022} Size: Some dogs can be too big or too small for your home. Be sure to pick one that fits into your space.
\u{2022} Exercise: Some dogs need to run and some only need soft laps and walks.
\u{2022} Cost: Food, vet bills, grooming, and training can be expensive. What can you afford?
\u{2022} Care: Dogs need food, water, walks, baths, training, and LOVE. How much time are you willing to give?

Consider everyone in your family. Kids can hurt tiny dogs. But big, clummsy dogs can hurt kids. Everyone needs to be safe.
""", audioName: "red41"))
        dogCareCards.append(CardClass(title: "Different Weather", cover: "red42image", number: "42", body: """
            My family just moved to Florida. They told me I'd never be cold again. Now we have to think about other things, like being left alone in a hot car - even for 10 minutes! That could be very dangerous. Also, I can get flease and ticks all year long. Ugh!

            And there are these weird things called "alligators" and "pythons," so I have to be on a leash when I'm out. I have to drink plenty of water. I have to be careful when I'm out in the sun too. Dont forget that hot concrete can burn my feet!

            How can you protect your dog from the hot sun?
            """, audioName: "red42"))
        dogCareCards.append(CardClass(title: "Ask My Vet", cover: "red43image", number: "43", body: """
If I get hurt or sick and you don't know what to do, ask my vet. If I need medicine, before you give me YOUR medicine, ask my vet. If you need to know how to housebreak me or where to get good obedience training, ask my vet. If you need a kind and honest dog walker, doggie daycare, or a weekend babysitter, ask the vet.

The vet is an expert on all "dog things." He may even know a bit about our cat. She just threw up under the couch!

What questions can you ask your vet?
""", audioName: "red43"))
        dogCareCards.append(CardClass(title: "No More Unwanted Puppies!", cover: "red44image", number: "44", body: """
I was rescued from a puppy mill. Thank goodness! I spent five years just having puppies. It was awful. No grass. No sunshine. Just lots of puppies...way too many puppies! The nice people who rescued me took me to the vet to "fix" me so I would never have any more puppies. I'm happy now. No more unwanted puppies!

Have you ever heard of a puppy mill?
""", audioName: "red44"))
        dogCareCards.append(CardClass(title: "A Safe Walk", cover: "red45image", number: "45", body: """
When we are taking our walks, please keep an eye on us. Our noses find the most interesting things to investigate!
We may try to wander off to check them but, but they may not be good for us. That's when we need you to keep us safe.

We could be checking out a snake or a cat, so make sure to keep us close. If we walk near an ant hill - pull us away. If we find a dead mouse or toad, you may want to distract us. If there is a broken glass ahead, walk us arouns it. And please stop us from drinking from a puddle. Also watch out for the traffic. Thanks for taking such good care of us.

You didn't know there were so many things we could get into, did you?
""", audioName: "red45"))
        dogCareCards.append(CardClass(title: "I Can Get Really Sick", cover: "red46image", number: "46", body: """
I don't want to sound like a scaredy cat (I mean dog!), but I can get sick - really sick - if you feed me he wrong things. Grapes, chocolate, onions, and avocados are definitely no-no's for me. Also, don't give me any pills like vitamins or aspirin without checking with my vet first.

Please don't leave poisons out that kill rats, mice, ants, or insets. I might get into them. they smell great, but they can kill me!

Does your mommy or daddys keep these things in a safe place?
""", audioName: "red46"))
        dogCareCards.append(CardClass(title: "Allergies", cover: "red47image", number: "47", body: """
Just because I'm a dog doesn't mean I cant have allergies. I can get allergies just like you! For example, I'm allergic to fleas. When they bite, it makes me itch so badly that I'll tear my fur off from scratching myself. So my human family takes me to the vet to prescribe special medicine for me.

Some of my friends have allergies too. Text gets a rash when he eats certain foods. Fritzie sneezes when he gets a snoot full of dust. Allergies like these are medical problems - and nothing to sneeze at! They are no fun. If your dog has allergies like we do, please take him to a vet.

Do you know anybody with allergies?
""", audioName: "red47"))
        dogCareCards.append(CardClass(title: "Check the Concrete", cover: "red48image", number: "48", body: """
Hi, I'm Miss Betty Lou Two Shoes. I do not like walking on hot pavement. Ouch! Ouch! It burns my feet. That's why I wear these cute little boots. Just joking! (But they really do sell booties for dogs to walk on hot concrete.)

Always check the concrete with your hands or feet to see how hot it is before you go for a walk with your dog. And don't forget we have this hot fur too. You might want to think about a cool, early morning or late evening walk. Remember my water. Oh yeah, and please bring my stroller in case I get tired!

Have you ever walked barefoot on hot concrete?
""", audioName: "red48"))
        dogCareCards.append(CardClass(title: "Rescue Groups", cover: "red49image", number: "49", body: """
There are different kinds of animal rescue groups. They come in as many flavors as there are dogs and cats who need saving! For example, there are purebreed rescue groups. So if you want a specific breed, look there first.

There are rescue groups for large, medium, and small dogs as well. There are also groups that rescue only blind or deaf pets. I heard you can also go online, whatever that is! You're sure to find a great guy like me looking for a great home like yours. Come and get me!

Have you checked out your local rescue groups when looking for a pet?
""", audioName: "red49"))
        dogCareCards.append(CardClass(title: "Fostering", cover: "red50image", number: "50",
                                      body: """
I was in foster care, doggie-style. A foster home is a short-term place where I lived after I was rescued and before I was places in my "forever" home.

Thank goodness for my foster parents! They taught me good manners and helped me get over my nervousness. They showed me that people (AND CATS) could be trusted. They fed me well, loved me constantly, and showed me it was OK to play and not hide in a corner. They helped me become the awesome dog I am today.

Did you know rescue groups need more foster families? Interested? Ask your parents to contact a local rescue group. Every dog in foster care is a dog saved!
""", audioName: "red50"))
        dogCareCards.append(CardClass(title: "Be Nice to Bugs", cover: "red51image", number: "51", body: """
If you see a bug crawling along, doing its thing, DON'T STEP ON IT. LEAVE IT ALONE! The bug has a place to go and a job to do...just like you do. It wants to live too.

If a bug if in our house, our human mommy catches it with a net and takes it outside whenever she can. It makes her feel good to save the bug. Join us! It's easy. Start by not stepping on bugs.

Have you ever thought about why you shouldn't step on a bug?
""", audioName: "red51"))
        dogCareCards.append(CardClass(title: "On Being Thankful", cover: "red52image", number: "52", body: """
I am so thankful. A nice lady saw me on the side of the road. I was starving. I was lost and scared. I had fleas all over me. I was really in bad shape and neeeded help...FAST!

The nice lady picked me up and took me to her vet. She saved my life. I was at the vet for a long time and he made me good as new again. And best of all, I found a home! The nice lady adopted me. I call get "Mom." Could I be any luckier? Like is so wonderful now. I even have a new doggie brother. I love me whole family and my family loves me.

What do you think of my happy story?
""", audioName: "red52"))
        dogCareCards.append(CardClass(title: "Train Your Dog to Be Nice", cover: "red53image", number: "53", body: """
Did you know that some people train dogs to be mean and to fight? What's up with that? I once heard a dog saying, "I'm sorry I hurt you. I didn't mean to. My owner taught me to be mean. He wants me to growl and fight, but I don't want to! I would rather be nice."

I agree with that. No one wants to be hurt!

Can you believe that some people train their dogs to fight?
""", audioName: "red53"))
        dogCareCards.append(CardClass(title: "Visit Our Website", cover: "red54image", number: "54", body: """
Visit us at www.happykids-happypets.com to see if we have a contest going on. You could win a Happy Kids-Happy Pets surprise mystery package!

All you have to do is send in your own story about how you care for your dog. You can write this by yourself or with the help of a friend or family member. Hurry and ask your parents if you can go to our website!
""", audioName: "red54"))
        
        return dogCareCards
    }
    
    //Function to provide all of the Yellow Card information in String Form
    static func yellowCards() -> [CardClass] {
        var dogCareCards = [CardClass]()
        //Temp cards to test
        dogCareCards.append(CardClass(title: "A Safe Walk", cover: "red45image", number: "45", body: """
When we are taking our walks, please keep an eye on us. Our noses find the most interesting things to investigate!
We may try to wander off to check them but, but they may not be good for us. That's when we need you to keep us safe.

We could be checking out a snake or a cat, so make sure to keep us close. If we walk near an ant hill - pull us away. If we find a dead mouse or toad, you may want to distract us. If there is a broken glass ahead, walk us arouns it. And please stop us from drinking from a puddle. Also watch out for the traffic. Thanks for taking such good care of us.

You didn't know there were so many things we could get into, did you?
""", audioName: "red45"))
        dogCareCards.append(CardClass(title: "Shelter Dogs Need a Home!", cover: "red1image", number: "1",
                                      body: """
There are many mutts and purebred dogs that need loving homes, just like yours. So when you're ready to add a dog to your family, don't forget to check the shelter, foster parents, or adoption events to find your very own special dog.

My Family says I'm special because I came from the shelter. Your dog will be too!

What are some things that are so special about adopting a dog from the shelter?
""", audioName: "red1"))
        dogCareCards.append(CardClass(title: "Why Mutts are Wonderful", cover: "red2image", number: "2",
                                      body: """
A mutt is a dog that is not a "purebred." It is a mixture of dog breeds. I'm a mutt. My grandfather was a Beagle; my grandmother was a mix of Maltese, Lhasa Apso, and something else. They each gave me their best qualities.

There is no other dog exactly like me. Even my brothers and sisters dont look like me, but we are each perfect. My human family tells me then love me. That is all that matters. Oh yeah, a couple more things...I love myself, and I love my family too.

How many wonderful mutts do you know? Can you name them?
""", audioName: "red2"))
        dogCareCards.append(CardClass(title: "Fleas, Fleas, Go Away!", cover: "red3image", number: "3",
                                      body: """
Fleas, fleas, go away - and don't come back another day. Has anyone ever had fleas on them? They bite, and it hurts! We'd rather have bees then fleas. At least we could enjoy snapping at them.

We don't mind the flea medicine our human mom puts on our backs every month: anything but a flea! She also gives us heart worm medicine every month. It tastes so good and protects our hearts.
But remember, it's only for us pets!

How do you make sure your pets are protected from fleas and heartworm?
""", audioName: "red3"))
        dogCareCards.append(CardClass(title: "Purebred or Mixed?", cover: "red4image", number: "4", body: """
My human mom used to only want a purebred dog. That means a dog with a mommy and daddy who come from the same breed. She was clueless about those of us who cmoe from a mixture of dogs. She didn't know how smart, friendly, and sweet we are.

The proof came when she met me and fell in love. I taught her that it's about the dog, not the purebreed. Now she loves mixed breeds as well as purebreds. We even have a new little sister who is a Chi-Peek-a-Boo or something like that. Who knows? Who cares? Whatever!

Does it matter to you if your dog is a purebred or mixed?
""", audioName: "red4"))
        dogCareCards.append(CardClass(title: "So you want a Dog?", cover: "red5image", number: "5", body: """
My human brother, Johnny, wanted a dog. He promised Mom and Dad that he would handle all the responsibilities that come with owning a dog. So they got Me.

But he doesn't do anything he promised he would do. He said he would walk me, feed me, and make sure I always had plenty of clean water. But he hardly does any of that. I sure am glad my human mommy takes care of me. If i had to wait for Johnny, I'd be in trouble!

What do you think about Johnny not keeping his promise?
""", audioName: "red5"))
        dogCareCards.append(CardClass(title: "Everyone Needs Space and Time", cover: "red6image", number: "6", body: """
Please don't leave me in a cage that is too small. I need to stretch my legs and move around. Think about how bored, cramped, and lonely you would feel being in a small cage for so many hours.

Make sure you have time for me. When you do leave for a long time, please exercise me before you go and give me plenty of room to be comfortable until you return home. Better yet, how about my own room while you're gone?

Do you give your pet enough space, exercise, love, and time?
""", audioName: "red6"))
        dogCareCards.append(CardClass(title: "Dogs' Needs", cover: "red7image", number: "7", body: """
Do you know what dogs need? They need food, clean water, lots of exercise, and potty breaks. They also need to be kepty warm enough in the winter and cool enough in the summer. And don't forget to socialize them when they are young, so they learn to get along with other people and dogs...maybe even cats! It's also very important that they be taken to the vet regularly for all of their shots and check-ups/

Most of all, dogs need plenty of attention, understanding, and LOVE!

Can you think of anything else a dog needs?
""", audioName: "red7"))
        dogCareCards.append(CardClass(title: "Im Older Now", cover: "red8image", number: "8", body: """
I can't chase balls anymore - and some days my hips and bones really ache. Please make sure the vet gives me medicine for pain as needed. Now I just want to sit in the sun and remember all those squirrels I kept out of the backyard.

Please be very gentle and don't push on me. Also make sure I have a padded, comfortable bed so I don't feel the hard floor.

Please understand that I need to move slower and take shorter walks. I am truly sorry if I have occasional accidents in the house.

And please know that I love you and I know that you love me. Life is still good.

What are some nice things to do for older dogs?
""", audioName: "red8"))
        dogCareCards.append(CardClass(title: "Waggy Tail", cover: "red9image", number: "9", body: """
How much is that doggie in the window, the one with the waggly tail? Just for your information, when my tail is wagging, it usually means I am happy and feeling safe. And that is a good sign. It means I probably won't bite.

I guess there can always be exceptions to the rule. I can change my mind if I get scared or someone is annoying me. also if my hair stands up on my back, keep in mind that I might be scared or angy.

Can you tell a dog's mood by his tail or hair?
""", audioName: "red9"))
        dogCareCards.append(CardClass(title: "We Don't Get It!", cover: "red10image", number: "10", body: """
We don't get how someone could be mean to animals!
We are loyal and would do anything for you. We love you so much, we dont cre if you sing off-key or even when you smell garlicky. Why would anyone want to hurt us?

We've heard our human mommy say she is shocked when she hears about someone hurting an animal. She can't imaging how someone could do that. We just want to be your best friend!

Do you have a pet who is your best friend?
""", audioName: "red10"))
        dogCareCards.append(CardClass(title: "Pick It Up", cover: "red11image", number: "11", body: """
What's the big deal about picking up my poop? I'm ready to keep walking and my human mommy has to stop, get the bag, scoop it up, and then hold it until we find a trash can. Can we go already? Oh, I forgot, I'm supposed to be working on my manners and being nice to others. But this dog was made for walking! Let's go!

P.S. I really do know that it is nice and respectful for Mom to "pick up" after me on our walks.

Do you pick up after your pet?
""", audioName: "red11"))
        dogCareCards.append(CardClass(title: "Did I Hear the Word \"Treat?\"", cover: "red12image", number: "12", body: """
My human says treats are good for my teeth, even though they do still need to be brushed. I just love the crunch and the taste.

It's about time for breakfast. Do you know what comes after that? The "T" word - TREAT! I can hardly wait! Sometimes I grab it and go hide under the bed to eat. I know it's not good manners to grab, but no dog is perfect.

Do you think Mom might give me two treats today?
""", audioName: "red12"))
        dogCareCards.append(CardClass(title: "Too Tight?", cover: "red13image", number: "13", body: """
I am super-glad my human mom checks my collar regularly to see if it fits me just right. Not too tight so I can breathe easily and be comfortable; not too loose so I don't catch it on anything or slip out of it.

Don't forget, I wear my collar around my neck 24/7 so it has to be a perfect fit.

How often do you check your pets collar to make sure its comfy?
""", audioName: "red13"))
        dogCareCards.append(CardClass(title: "Ouch! That Hurts!", cover: "red14image", number: "14", body: """
Sometimes my human baby sister hurts me. Ouch! I know she is little and doesn't know better, but it would be nice if my parents made sure she didn't pull my ears and tail, poke my eyes, yank my fur, climb on me, or hold me too tight.

Also, they need to make sure she does not hit me or throw her toys at me. I don't like it one bit! I am part of the family too. I hope my parens watch her until she is old enough to know to be more gentle with me.

Do you make sure your younger brother or sister is gentle with your pets?
""", audioName: "red14"))
        dogCareCards.append(CardClass(title: "Spay or Neuter", cover: "red15image", number: "15", body: """
Spaying and neutering are operations that a vet does to stop pets from having more kittens or puppies. Girl pets are spayed. Boy pets are neutered. This is a very important operation. Why? There are way too many animals without homes.

you can see them on the streets or in shelters. Many animals are put to sleep if they can't find homes. Puppies and kittens are so cute, but they do grow up and will have more babies. So please spay and neuter your pet!

Have you ever heard or spaying and neutering?
""", audioName: "red15"))
        dogCareCards.append(CardClass(title: "We Love to Socialize", cover: "red16image", number: "16", body: """
Our human mother makes play dates for us all the time. We get to meet new dogs, new kids, and occasionally a cat! You know why she does it? She says it makes us well-adjusted. It helps us get along with everyone.
She calls it socializing. What a big word! Wonder what she has on the calendar for tomorrow?

Do you socialize your pet?
""", audioName: "red16"))
        dogCareCards.append(CardClass(title: "Help, I'm Lost and Can't Find My Way Home", cover: "red17image", number: "17", body: """
My family wants to be sure that if I get lost, I can make it home again. That's why I wear an ID tage on my collar with my name on it. I also have a chip inside of me with my telephone number on it. That way my family can find me. I love my family.

Well now I am lost and can't find my way home. Will you help me find my family? Please call the number on my collar or take me to the vet to read the microchip inside of me.

Does your pet have a collar with an ID tag on it? A microchip?
""", audioName: "red17"))
        dogCareCards.append(CardClass(title: "Shhh!", cover: "red18image", number: "18", body: """
My favorite trick is to speak softly. Some people think that dogs have to bark loudly. What's up with that? When I speak softly, it sounds much nicer.

Please encourage me to speak softly or use my "indoor voice." I am so cute when I do that. I only bark loudly if a stranger comes to the door. My human daddy says I'm the best guard dog in the world.

How can you teach your dog to speak softly?
""", audioName: "red18"))
        dogCareCards.append(CardClass(title: "We Eat When We're Hungry", cover: "red19image", number: "19", body: """
when we were young, our human mommy would always leave out a bowl of good quality, dry dog food for us. There was always plenty of food, so we didn't feel the need to gobble it up all at once. we learned to only eat when we were hungry.

Of course our vet might not agree with that. Some people feed their dog once a day, but we think twice a day is better. 24 hours is a long time to wait! We also think if dogs are hungry, it's okay to give them vegetables to help fill them up.
P.S. We love when Mommy gives us a tablespoon of olive oil to keep our joints healthy/

How often do you feed your dog? Do you know if he/she likes veggies?
""", audioName: "red19"))
        dogCareCards.append(CardClass(title: "Two is Better Than One", cover: "red20image", number: "20", body: """
I was seriously on a mission. My human family and I picked out a new brother at the shelter today. It might be a little more work, but it's worth it whenever we can get a dog out of the shelter. We're going to have a great life together with long walks, care trips, playing fetch in the backyard, and lots of love. I'm so excited. I can hardly hide it...my tail is going 90 miles an hour!
Mission accomplished!

Next time you get a pet, what do you think about going to your local shelter, humane society, or a place that adops or fosters rescued animals?
""", audioName: "red20"))
        dogCareCards.append(CardClass(title: "It's Cold Outside", cover: "red21image", number: "21", body: """
Please, please don't leave me out in the cold during winter! If for some reason I can't stay in the house, make sure I have an insulated doghouse, shed, or garage with a rubber flap for the door so I can go in and out...and give me plenty of hay or blankets to snuggle into.

Make sure to keep the hay changed out often and blankets clean. Keeping me warm is what it's all about!

How do you keep your pets warm in the winter? Do you need to ask your vet for some ideas?
""", audioName: "red21"))
        dogCareCards.append(CardClass(title: "Betty Lou Says, \"Keep Me Warm and Cozy\"", cover: "red22image", number: "22", body: """
It's time to go shopping and to check out the latest styles at the pet store. I need a new coat. They have a special sale going on now!

Sometimes in the winter, it gets really cold, and my human mommy puts two coats on me or a sweater with a coat. She buys one larger than the other so she can keep me warm and cozy. But don't let me get too hot either. Yippee Skippee! I can't wait to wear my new coat.

Does your dog have a nice, warm winter coat?
""", audioName: "red22"))
        dogCareCards.append(CardClass(title: "Max and Me", cover: "red23image", number: "23", body: """
I met the greatest dog, Max, yesterday. I wanted to run up and sniff him right away. But Mom held me back. "See the yellow ribbon on his leash?" she asked me. "It means he needs more time to introduce himself to you. Maybe he's shy. Maybe he's aggressive. The yellow ribbon tells us to approach him slowly."

Max told me later that people and dogs who come on too fast give him the heebie-jeebies. We made sure to ask the owner; she said it was fine and we walked up slowly. Now Max and I are buddied. My mom is so smart!

Do you ask the owner if it's OK before you go up to their dog?
""", audioName: "red23"))
        dogCareCards.append(CardClass(title: "Don't Leave Me Tied Up!", cover: "red24image", number: "24", body: """
Please, never tie me to a tree. Not good. Put yourself in my shoes, I mean paws. Seriously, tied to a tree for hours, day after day? If a mean dog was trying to bit me, I couldn't run away. It is terribly uncomfortable, and it hurts my neck. It's also lonely. Even worse, I'm outside in the way rain, hot sun, or cold winter and snow. There's nowhere to go.

In time it could also make me very mean; I could show my teeth, jump on people walking by, and bite them. Why have a dog if it has to be tied to a tree everyday? How about bringing me inside with the family or a fenced-in yard instead?

How would you feel if you saw a dog tied to a tree day after day?
""", audioName: "red24"))
        dogCareCards.append(CardClass(title: "I Hear Ya'!", cover: "red25image", number: "25", body: """
Yikes! It's loud out here! Please keep the music down! My ears are much more sensitive than yours. You can't imagine how loud noise hurts my ears. Think of poor little ol' me.

Did you also know I hear thunder way before you do? So if you see me shaking before you hear anything you'll know why!

Did you know dogs have very sensitive ears?
""", audioName: "red25"))
        dogCareCards.append(CardClass(title: "How Hot Is It?", cover: "red26image", number: "26", body: """
Do not...repeat, DO NOT...leave us in a locked car. It is not fun when the sun is beating down. It could get to be up to 105 degrees or more inside the car, even if it is only 85 degrees outside!

We could start to have trouble breathing. If you see someone else's dog locked in a hot car, ask your mom or dad to call 911 and report it. If it is too cold in the car, we could freeze! It is best to NEVER leave a pet locked in the car because you don't know how hot or cold it really is inside the car.

Did you know not to ever leave your pet locked in a car?
""", audioName: "red26"))
        dogCareCards.append(CardClass(title: "Something to Chew On", cover: "red27image", number: "27", body: """
Please don't get mad at me if I chew something up. I still have a lot of "puppy" in me! Give me something for my teething. My teeth are hurting, and it makes me feel better to chew on something.

Just know that I will grow out of it one day. If you give me a rawhide bone, make sure I don't choke when I get near the end of it!

Do you make sure your puppy has plenty of toys to chew on?
""", audioName: "red27"))
        dogCareCards.append(CardClass(title: "Blind and Full of Love", cover: "red28image", number: "28", body: """
Don't feel sorry for me. I may be blind, but my nose is still working at 100%. Smell is a powerful sense to us dogs. My "sniffer" as almost as important to me as your eyes are to you.

However, you may need to help me a little. Keep me on a short leash so I don't wander into traffic. Stop when there are steps or curbs that I have to step up or down on and let me get my bearings first.

Finally, give me lots of TLC(Tender Loving Care). You'd do that anyway, wouldn't you? So you see, blindness is not such a big deal for me - as long as I have you in my life!

Did you know dogs rely on their sense of smell?
""", audioName: "red28"))
        dogCareCards.append(CardClass(title: "Don't Make Me Wait Too Long", cover: "red29image", number: "29", body: """
We older dogs have to go to the bathroom more often then when we were younger. Frequently I need to wake up my human mommy or daddy during the night so they can let me outside to go potty. I'm so glad they understand and don't get mad at me or make me wait a long time to go out.

Some people say, "My dog can hold it for hours and hours." Maybe they can, but it sure is NOT comfortable!

How did you feel when you had to "hold it" for a long time? What happened?
""", audioName: "red29"))
        dogCareCards.append(CardClass(title: "Antifreeze", cover: "red30image", number: "30", body: """
Yum Yum! We hear antifreeze smells wonderful and tastes really sweet - so it would be very tempting to try some. But it's also very poisonous; many dogs and cats have died after licking only an itsy bit off a street or driveway.

Please ask your mmom and dad to store antifreeze away from your pet. And always check to make sure none has leaked from the car. Or better yet, ask your parents to buy the new brands that don't smell or taste as good to us. Their car will run just fine - and so will we. Thank you!

Have you ever heard of dogs licking antifreeze?
""", audioName: "red30"))
        dogCareCards.append(CardClass(title: "No Bones About It!", cover: "red31image", number: "31", body: """
I love bones. I really do. They clean my teeth, exercise my jaw, and give me a workout. But not all bones are good for me. some can even be dangerous! Chicken or steak bones can splinter in my stomach.

also remember that when you give me a rawhide bone, stay with me and make sure I don't choke on it.

Are you careful what kind of bones you give your dog?
""", audioName: "red31"))
        dogCareCards.append(CardClass(title: "Don't Stop at the Nose", cover: "red32image", number: "32", body: """
some people say your dog is healthy if his nose is cool and moist...but that's not necessarily true. What's going on inside of him is even more important. Don't stop at his nose, but also look in his mouth for nice pink gums (not blue-ish)

Also make sure that his eyes are clear and that there are no yellow spots on the inside of his ears. This is a sign of a possible infection...or something worse. Bad breath and runny poop are also things to look for. Keep an eye out for these symptoms in your dog!

Do you know what signs to look for that warn if your dog is not healthy?
""", audioName: "red32"))
        dogCareCards.append(CardClass(title: "Betty Lou Says, \"I Do Love My Comfort\"", cover: "red33image", number: "33", body: """
My human mom, Betty, makes sure I have everything I need. Today she is going to get me a new bed. What a sight to see her trying the beds out for comfort in the store! "This bed is too hard," she says. "This bed is too soft", This bed is just right!" Sounds like another story I've heard before.

Do you know what story I'm talking about? Isn't it funny that my human mom and I have the same name?
""", audioName: "red33"))
        dogCareCards.append(CardClass(title: "No Teasing Please", cover: "red34image", number: "34", body: """
It's not a good idea to play with me while I'm eating or chewing on my bones. I might get angry. You wouldn't like it if I snatched your hamburger away from you, would you? Well I don't like when you play around with my food. After all, foos is a serious business!

So let's make a deal. Don't tease me while I'm eating my food or bones and I'll keep thinking you are the greatest human in the whole world. OK?

Do you know not to tease me when I'm eating?
""", audioName: "red34"))
        dogCareCards.append(CardClass(title: "When the New Baby Comes Home...", cover: "red35image", number: "35", body: """
My human mom and dad were expecting a baby boy for months. I knew he was coming and they prepared me for it. They told me they might not have as much time to spend with me and I might feel lonely. They said they still love me, but the baby would need a lot of their time.

When the baby finally came home, I still got hugs, treats, and walks. I also got a new, important job - to protect the baby. When he's older I can show him how to catch balls, ride in cars, and pee on trees. Until then, I'll keep him company and protet him. It's a very big job!

Do you know there is always plenty of love to go around?
""", audioName: "red35"))
        dogCareCards.append(CardClass(title: "When Walks Are Not Enough", cover: "red36image", number: "36", body: """
I'm what you call a high-energy dog. I need exercise every day. I've got to run...jump...swim...catch Frisbees...chase balls - whatever! A walk may be fine for other dogs but not for me, thank you. If I don't get serious exercise everyday. I'll be into everything. I may eat the furniture, run around in circles, and get into all kinds of trouble. I'll drive my human family crazy!

So grab a ball and throw it (but no sudden stops for my knees, please). Let me run with you while you take your bike to the park. Help me get rid of my extra energy!

Do you know any dogs like me?
""", audioName: "red36"))
        dogCareCards.append(CardClass(title: "Small Dogs", cover: "red37image", number: "37", body: """
I'm a small guy with short legs that carry all my weight. I cannot jump off furniture without risk of breaking a bone. (Hello, did you notice that I hurt my leg?)

I shouldn't roughhouse with humans or dogs much bigger than I am. They may hurt me. I need extra gentleness from children who might infure me without meaning to do so. I could get more fragile as I get older. I may be fragile, but I'm fierce. Just ask Jake, the Great Dane. He's afraid of me!

Did you know you have to extra careful with most small dogs?
""", audioName: "red37"))
        dogCareCards.append(CardClass(title: "When a New Pet Arrives...", cover: "red38image", number: "38", body: """
I heard my human mom and dad are bringing home a new pet today. I am so excited! Mom wans to be sure that my new sister feels welcomed and not overwhelmed, so she is introducing us slowlyto each other.

Mom said she'll keep me on a leash because I might scare my new sister by jumping on her. She says I need to be calm. Calm is tough, but I'll try. It I get too excited, Mom says she'll put me in the backyard to give my sister time to relax and get comfortable. I'll try really, really hard to be calm. I'm proud to be a big brother!

Have you ever introduced two pets to each other?
""", audioName: "red38"))
        dogCareCards.append(CardClass(title: "Know your Limits", cover: "red39image", number: "39", body: """
The kid next door rides his bicycle and lets his dog, Bill, race after him. they have a great time for an hour every afternoon and Bill gets a lot of exercise. That wouldn't work for me. Not one bit.

Bill is built for running - but I'm not. I'm built for snuggling in somebody's lap. I just couldn't run like Bill, ever! I shouldn't even try; it wouldn't be healthy for me. Thank goodness my human mom understands that. We take walks everyday, and that is plenty enough exercise for me. A dog needs to know his limits = and so does his human family.

Do you know how much exercise is right for your dog?
""", audioName: "red39"))
        dogCareCards.append(CardClass(title: "Do Unto Other Dogs...", cover: "red40image", number: "40", body: """
We just heard something called "The Golden Rule." It says, "Do unto other dogs as you would have other dogs do unto you." We couldn't have said it better!

If you want us to be gentle, you have to be gentle with us. If you want us to be well-adjusted, you need to adjust your time with us. If you want us to be happy, you need to treat us well. Wow! How simple is that? Just treat us with respect and you'll get great dogs back.

Do you treat your pet the way you want to be treated?
""", audioName: "red40"))
        dogCareCards.append(CardClass(title: "Get the Right Dog", cover: "red41image", number: "41", body: """
Not every dog is perfect for your family. Finding the right dog means many wonderful years together.
\u{2022} Size: Some dogs can be too big or too small for your home. Be sure to pick one that fits into your space.
\u{2022} Exercise: Some dogs need to run and some only need soft laps and walks.
\u{2022} Cost: Food, vet bills, grooming, and training can be expensive. What can you afford?
\u{2022} Care: Dogs need food, water, walks, baths, training, and LOVE. How much time are you willing to give?

Consider everyone in your family. Kids can hurt tiny dogs. But big, clummsy dogs can hurt kids. Everyone needs to be safe.
""", audioName: "red41"))
        dogCareCards.append(CardClass(title: "Different Weather", cover: "red42image", number: "42", body: """
            My family just moved to Florida. They told me I'd never be cold again. Now we have to think about other things, like being left alone in a hot car - even for 10 minutes! That could be very dangerous. Also, I can get flease and ticks all year long. Ugh!

            And there are these weird things called "alligators" and "pythons," so I have to be on a leash when I'm out. I have to drink plenty of water. I have to be careful when I'm out in the sun too. Dont forget that hot concrete can burn my feet!

            How can you protect your dog from the hot sun?
            """, audioName: "red42"))
        dogCareCards.append(CardClass(title: "Ask My Vet", cover: "red43image", number: "43", body: """
If I get hurt or sick and you don't know what to do, ask my vet. If I need medicine, before you give me YOUR medicine, ask my vet. If you need to know how to housebreak me or where to get good obedience training, ask my vet. If you need a kind and honest dog walker, doggie daycare, or a weekend babysitter, ask the vet.

The vet is an expert on all "dog things." He may even know a bit about our cat. She just threw up under the couch!

What questions can you ask your vet?
""", audioName: "red43"))
        dogCareCards.append(CardClass(title: "No More Unwanted Puppies!", cover: "red44image", number: "44", body: """
I was rescued from a puppy mill. Thank goodness! I spent five years just having puppies. It was awful. No grass. No sunshine. Just lots of puppies...way too many puppies! The nice people who rescued me took me to the vet to "fix" me so I would never have any more puppies. I'm happy now. No more unwanted puppies!

Have you ever heard of a puppy mill?
""", audioName: "red44"))
        //dogBreedCards.append(CardClass(title: <#T##String?#>, cover: <#T##String?#>, number: <#T##String?#>, body: <#T##String?#>, audioName: <#T##String?#>))
        return dogCareCards
    }
}
