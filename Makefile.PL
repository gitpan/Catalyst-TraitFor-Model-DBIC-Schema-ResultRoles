use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Catalyst::TraitFor::Model::DBIC::Schema::ResultRoles',
    AUTHOR              => q{Lukas Thiemeier <lukas@thiemeier.net>},
    VERSION_FROM        => 'lib/Catalyst/TraitFor/Model/DBIC/Schema/ResultRoles.pm',
    ABSTRACT_FROM       => 'lib/Catalyst/TraitFor/Model/DBIC/Schema/ResultRoles.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Catalyst-TraitFor-Model-DBIC-Schema-ResultRoles-*' },
);
