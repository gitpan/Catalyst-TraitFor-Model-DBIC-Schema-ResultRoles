use strict;
use warnings;
use Test::More tests => 5;

use lib "t/lib";

diag 'Testing MyApp with "Catalyst::TraitFor::Model::DBIC::Schema::ResultRoles"'; 
use_ok("Catalyst::Test", "MyApp") 
	&& diag 'Schema loaded successfully';

my $id = 1;

diag qq'executing request "/books/authors_by_id/$id"';
my $response = request('/books/authors_by_id/'.$id);
ok( $response->is_success , qq 'Request for "/books/authors_by_id/$id" failed') ;
ok( $response->content =~ /authors for book id \d+: (\w+\s\w+(,\s){0,1})*/,
	qq 'Request for "/books/authors_by_id/$id" failed'
) && diag $response->content;

diag qq'executing request "/books/author_count/$id"';
my $a_count = get("/books/author_count/$id");
ok( 
	$a_count =~ /Book with id \d+ has \d+ authors/, 
	qq 'get "/books/author_count/$id" failed' 
) && diag $a_count;

diag qq'executing request "/books/authors_count/$id"';
my $related = get("/books/related_books/".$id);
ok( 
	$related =~ /related books for id \d+: ((\w+\s)+\((\w+\s\w+(,\s){0,1})+\))*/, 
	qq 'get "/books/related_books/$id" failed'  
) && diag $related;


