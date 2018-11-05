#!/usr/bin/env perl6

use v6;

unit class TikaWrapper;

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

# wait for the external program to terminate 
# await $promise;

my $t = TikaWrapper.new;
$t.start;

signal(SIGINT).tap: {
	$t.stop if $t.defined;
	exit;
}

sleep 5;
LEAVE {
	$t.stop if $t.defined;
}
