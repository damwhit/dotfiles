abbr -a -g be bundle exec
abbr -a -g pruby bundle exec rbprettier --write '**/*.rb'
abbr -a -g pjs prettier --write "src/**/*.js"

function em
   command emacs $argv &
end
