# SYNOPSIS
#   mp3down [options]
#
# USAGE
#   Options
# {id} youtube id

function mp3down
  if type -t youtube-dl > /dev/null
    if count $argv > /dev/null
      youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $argv[1]
    else
      echo " example usage [ mp3down EgqUJOudrcM ] "
    end
  else
    echo "📂  Please install youtube-dl first!"
  end
end
