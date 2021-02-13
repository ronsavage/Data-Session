package Data::Session::Serialize::Storable;

use parent 'Data::Session::Base';
no autovivification;
use strict;
use warnings;

use Storable;

our $VERSION = '1.17';

# -----------------------------------------------

sub freeze
{
	my($self, $data) = @_;

	return Storable::freeze($data);

} # End of freeze.

# -----------------------------------------------

sub new
{
	my($class) = @_;

	return bless({}, $class);

} # End of new.

# -----------------------------------------------

sub thaw
{
	my($self, $data) = @_;

	return Storable::thaw($data);

} # End of thaw.

# -----------------------------------------------

1;

=pod

=head1 NAME

L<Data::Session::Serialize::Storable> - A persistent session manager

=head1 Synopsis

See L<Data::Session> for details.

Warning: Storable should be avoided until this problem is fixed:
L<http://rt.cpan.org/Public/Bug/Display.html?id=36087>

=head1 Description

L<Data::Session::Serialize::Storable> allows L<Data::Session> to manipulate sessions with
L<Storable>.

To use this module do this:

=over 4

=item o Specify a driver of type Storable as Data::Session -> new(type => '... serialize:Storable')

=back

=head1 Case-sensitive Options

See L<Data::Session/Case-sensitive Options> for important information.

=head1 Method: new()

Creates a new object of type L<Data::Session::Serialize::Storable>.

C<new()> takes a hash of key/value pairs, some of which might mandatory. Further, some combinations
might be mandatory.

The keys are listed here in alphabetical order.

They are lower-case because they are (also) method names, meaning they can be called to set or get
the value at any time.

=over 4

=item o verbose => $integer

Print to STDERR more or less information.

Typical values are 0, 1 and 2.

This key is normally passed in as Data::Session -> new(verbose => $integer).

This key is optional.

=back

=head1 Method: freeze($data)

Returns $data frozen by L<Storable>.

=head1 Method: thaw($data)

Returns $data thawed by L<Storable>.

=head1 Support

Log a bug on RT: L<https://rt.cpan.org/Public/Dist/Display.html?Name=Data-Session>.

=head1 Author

L<Data::Session> was written by Ron Savage I<E<lt>ron@savage.net.auE<gt>> in 2010.

Home page: L<http://savage.net.au/index.html>.

=head1 Copyright

Australian copyright (c) 2010, Ron Savage.

	All Programs of mine are 'OSI Certified Open Source Software';
	you can redistribute them and/or modify them under the terms of
	The Artistic License, a copy of which is available at:
	http://www.opensource.org/licenses/index.html

=cut