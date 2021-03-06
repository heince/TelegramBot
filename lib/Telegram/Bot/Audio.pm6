unit class Telegram::Bot::Audio; 
use Telegram::Bot::Core;
also does Telegram::Bot::Core::JsonParseable;

use JSON::Tiny;
use Telegram::Bot::Core;

has $.file-id;
has $.duration;
has $.performer;
has $.title;
has $.mime-type;
has $.file-size;

method parse-from-json($json) {
  self.new(
    file-id => $json{"file_id"},
    duration => $json{"duration"},
    performer => $json{"performer"},
    title => $json{"title"},
    mime-type => $json{"mime_type"},
    file-size => $json{"file_size"}
  )
}
