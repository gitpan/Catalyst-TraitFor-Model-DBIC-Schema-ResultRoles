use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME		=> 'Catalyst::TraitFor::Model::DBIC::Schema::ResultRoles',
	DISTNAME	=> 'Catalyst-TraitFor-Model-DBIC-Schema-ResultRoles',
	AUTHOR		=> q{Lukas Thiemeier <lukast@cpan.org>},
	VERSION_FROM	=> 'lib/Catalyst/TraitFor/Model/DBIC/Schema/ResultRoles.pm',
	ABSTRACT	=> 'automatically applying Moose Roles do Catalyst::Model::DBIC::Schema - resultclasses',
	($ExtUtils::MakeMaker::VERSION >= 6.3002
		? ('LICENSE'=> 'perl')
		: ()),
	PL_FILES            => {},
	PREREQ_PM => {
		'Moose::Role' => "1.21",
		'Moose::Util' => "1.21",
		'Module::Find' => "0.10",
		'namespace::autoclean' => "0.11",

	},
	CONFIGURE_REQUIRES => {
		'ExtUtils::MakeMaker' => "6.56",
	},
	BUILD_REQUIRES =>{
		'Test::More' => "0.96",
		'Moose' => "1.21",
		'MooseX::NonMoose' => "0.17",
		'Catalyst::Runtime' => "5.80",
		'Catalyst::Model::DBIC::Schema', => "0.48",
		'DBIx::Class' => "0.08126",
		'SQL::Translator' => "0.11007",
	},
	dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
	clean               => { FILES => 'Catalyst-TraitFor-Model-DBIC-Schema-ResultRoles-*' },
);
