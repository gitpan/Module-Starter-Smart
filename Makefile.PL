use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Module::Starter::Smart',
    AUTHOR              => 'Ruey-Cheng Chen <rueycheng@gmail.com>',
    VERSION_FROM        => 'lib/Module/Starter/Smart.pm',
    ABSTRACT_FROM       => 'lib/Module/Starter/Smart.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'ExtUtils::Command' => 0,
	'File::Spec' => 0,
	'parent' => 0,
	'Module::Starter' => 1.58,
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url => 'https://github.com/rueycheng/Module-Starter-Smart.git',
                web => 'https://github.com/rueycheng/Module-Starter-Smart',
            },
        },
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Module-Starter-Smart-*' },
);
