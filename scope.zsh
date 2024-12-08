# Function to search for text in a directory and copy matching content to clipboard
scope() {
  if [[ $# -lt 1 ]]; then
    echo "Usage: scope <search_text> [search_directory]"
    return 1
  fi

  local search_text="$1"
  local search_dir="${2:-.}"

  # Check if the search directory exists
  if [[ ! -d "$search_dir" ]]; then
    echo "Error: Directory '$search_dir' does not exist."
    return 1
  fi

  # Perform the search and concatenate the contents
  local content
  content=$(grep -rl "$search_text" "$search_dir" 2>/dev/null | xargs cat 2>/dev/null)

  if [[ -z "$content" ]]; then
    echo "No matching files found containing '$search_text' in '$search_dir'."
    return 1
  fi

  # Copy the content to the clipboard
  echo -n "$content" | pbcopy

  if [[ $? -eq 0 ]]; then
    # Calculate the number of characters copied
    local char_count
    char_count=$(echo -n "$content" | wc -c | tr -d ' ')
    echo "Copied $char_count characters from files containing '$search_text' to the clipboard."
  else
    echo "An error occurred while copying to the clipboard."
    return 1
  fi
}
