#enquireMQTest
=============
Demo: http://saratheneale.github.io/enquireMQTest/enquireTest.html


I created this project to hone in on a problem with enquire.js (or something else, I have no idea).

##The Situation:

I have an image that should be full height of the browser. I don't care about width. For that reason, I have to use height based media queries.

For Reasons&trade; it is highly desireable to do these media queries via JS rather than traditional CSS.

##The Problem:

Increase the height of the page too fast, and the appropriate media query doesn't fire/unfire.

I've made a traditonal Media Queries page that demonstrates that there's not a problem the old fashioned way.

###More Background

When the gap between media queries is larger, this doesn't happen. This tells me, it has to do with the speed that a user adjusts browser height.


The console shows when a MQ is matched, unmatched, the zoom level, and the height of the browser.

When the gap happens, you'll notice several unmatches fire all at the same browser height. The problem is that these queries should not be firing at that browser height.



##The Solution:

More insights are welcome, but here's my current workaround.

I was registering the media queries in the order from largest to smallest. I reveresed the order, and then the problem became a too large image when you shurnk the browser fast. (The unmatches were not getting called in the right order.) see http://saratheneale.github.io/enquireMQTest/attempt1.html

Then I made each media query more specific AND got rid of the unmatch function completely (based on the philosophy that unmatch is used for cleanup not opposite of match). NOW my problem is solved. see http://saratheneale.github.io/enquireMQTest/solution.html

This seems to be somewhat related to the mediaMatch API and the order that it executes things in. I don't entirely understand this issue and would welcome more documentation or discussion on it.

