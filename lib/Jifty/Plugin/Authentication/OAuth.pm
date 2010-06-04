use strict;
use warnings;

package Jifty::Plugin::Authentication::OAuth;
use base qw/Jifty::Plugin/;

our $VERSION = '0.01';

=head1 NAME

Jifty::Plugin::Authentication::OAuth - OAuth authentication plugin for Jifty

=head2 DESCRIPTION

Provides standalone OAuth authentication for your Jifty application.

=head1 SYNOPSIS

Add the following to your F<etc/config.yml> under the C<framework> section:

    Plugins:
        - Authentication::OAuth: {}

=cut

__PACKAGE__->mk_accessors(qw/consumer_key consumer_secret/);

=head2 init

=cut

sub init {
    my $self = shift;
    my %args = @_;

    for my $arg (keys %args) {
        if ($self->can($arg)) {
            $self->$arg($args{$arg});
        }
        else {
            warn "Unknown argument: $arg";
        }
    }
}

=head1 AUTHOR

Shawn M Moore

=head1 LICENSE

Copyright 2010 Best Practical Solutions, LLC.

This program is free software and may be modified and distributed under the same terms as Perl itself.

=cut

1;

