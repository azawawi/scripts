#!/usr/bin/env perl6

use v6;

unit class TikaWrapper;

use LWP::Simple;

has $.tika-server-process;

method start {
	my $proc = Proc::Async.new('java', '-jar', 'tika-server-1.19.1.jar');
	
	$proc.stdout.tap(
		-> $v   { print "Output: $v" },
		quit => { say 'caught exception ' ~ .^name }
	);
	$proc.stderr.tap(
		-> $v { print "Error:  $v" }
	);

	say $proc;
	$!tika-server-process = $proc;

	say "Starting Tika Server...";
	my $promise = $proc.start;
	say "Started!";
	#TODO what to do with promise
}

method stop {
	say "Stopping Tika Server...";
	$!tika-server-process.kill if $.tika-server-process.defined;
	say "Stopped!";
}

method version {
	my $version = LWP::Simple.get("http://127.0.0.1:9998/version");
}


my $t = TikaWrapper.new;
$t.start;

# Handle Ctrl-C
signal(SIGINT).tap: {
	$t.stop if $t.defined;
	exit;
}

#TODO find if server is up or not...
sleep 2;
say "Tika Version: " ~ $t.version;

sleep 15;
LEAVE {
	$t.stop if $t.defined;
}
