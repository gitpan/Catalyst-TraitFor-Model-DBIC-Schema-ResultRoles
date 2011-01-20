package MyApp;
use Moose;
use namespace::autoclean;

use Catalyst::Runtime 5.80;

extends 'Catalyst';

our $VERSION = '0.01';
$VERSION = eval $VERSION;

__PACKAGE__->config(
	name => 'MyApp',
	disable_component_resolution_regex_fallback => 1,

	'Model::DB' => {
		traits => 'ResultRoles',
		rr_debug => 0,
		rr_quiet => 1,
	},
);

__PACKAGE__->setup();

1;
