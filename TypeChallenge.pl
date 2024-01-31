# -*- Author: Ali -*-
# -*- Info: Typing Speed Game -*-

use strict;
use warnings;
use TimeHiRes qw(time);

my @sentences = (
    The quick brown fox jumps over the lazy dog.,
    Sphinx of black quartz, judge my vow.,
    Pack my box with five dozen liquor jugs.,
    Mr. Jock, TV quiz PhD, bags few lynx.,
);

sub get_random_sentence {
    return $sentences[int(rand(scalar @sentences))];
}

sub play_typing_game {
    my $sentence = get_random_sentence();
    print Type the following sentence as quickly as possiblenn;
    print $sentencenn;
    
    print Press Enter when ready...;
    STDIN;
    
    my $start_time = time();
    print Type the sentencen;
    my $user_input = STDIN;
    my $end_time = time();
    
    chomp $user_input;
    
    if ($user_input eq $sentence) {
        my $time_taken = $end_time - $start_time;
        my $speed = int(length($sentence)  $time_taken  60);
        print nCongratulations! You typed it correctly.n;
        print Time taken $time_taken secondsn;
        print Typing speed $speed characters per minuten;
    } else {
        print nOops! Your input doesn't match the sentence.n;
    }
}

# Main loop
while (1) {
    print Welcome to the Typing Speed Game!n;
    play_typing_game();
    
    print nPlay again (yn) ;
    my $choice = STDIN;
    chomp $choice;
    
    last unless lc($choice) eq 'y';
}

print Thanks for playing!n;
