#!/bin/bash
#query=$(printf '%s' "$*" | sed 's/ /\%20/g')
#echo "$query"
#curl -o torrent.ini https://nyaa.si/?f=0&c=0_0&q=$query&s=seeders&o=desc
#magnet=$(cat torrent.ini | grep -E 'magnet\:\?'| sed 's/href\=/ /g'|awk '{print $2}'| sed 's/"/ /g'| head -n 10|sed 's/ //g')

#echo "$magnet"



#Version 
version="1.0.1"
old_ifs="${IFS}"
cache_dir="${HOME}/.cache/nyaa-cli"
dependencies=("curl", "cat", "sed", "awk", "rm", "pup", "patch", "mkdir", "mpv", "peerflix" )

github_source="https://raw.githubusercontent.com/meteor314/my-cli/master/ny-cli"
#Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White


#Colorsized text function

print_green() { # Print green text
	echo -e "${Green}" "${*}"
}
no_color() { # Print green text
	echo -e "${Color_Off}" "${*}"
}
print_red() { # Print green text
	echo -e "${Red}" "${*}"
}

print_blue() { # Print green text
	echo -e "${Blue}" "${*}"
}


######################
# Auxilary functions #
######################

show_help() {
	while IFS= read -r line; do
		printf "%s\n" "${line}"
	done <<-EOF
	
    ny-cli ${version} ( github.com/meteor314/ny-cli )
	Bash script for  torrent via the terminal
	Usage:
	  ny-cli [Options]
	Options:
	  -h, --help		Print this help page
	  -V, --version		Print version number
	  -u, --update		Fetch latest version from the Github repository
	  -c, --cache-size	Print cache size (${cache_dir})
	  -C, --clear-cache	Clear cache (${cache_dir})
	EOF
}


###################
# Cache functions #
###################

show_cache_size() {
	# If cache_dir does not exist, create it
	if [[ ! -d "${cache_dir}" ]]; then
		mkdir --parents "${cache_dir}"
	fi

	cache_size="$(du -sh "${cache_dir}" | awk '{print $1}')"

	print_green "Cache size: ${cache_size} (${cache_dir})"
}

clear_cache() {
	show_cache_size

	prompt "Proceed with clearing the cache?" "[Y/N]: "

	# Convert user input to lowercase
	user_input="$(printf "%s" "${reply}" | tr "[:upper:]" "[:lower:]")"

	if [[ "${user_input}" == "y" ]]; then
		rm -r "${cache_dir:?}/"
		print_green "Cache successfully cleared"
	fi
}

################
# Show Version #
################

show_version() {
	print_green "Version: ${version}"
}


#################
# Update Script #
#################

update_script() {
	print_green "Fetching Github repository..."

	# Get latest source code and compare it with this script
	changes="$(curl --silent "${github_source}" | diff -u "${0}" -)"

	if [[ -z "${changes}" ]]; then # If variable 'changes' is empty 
		print_green "Script is up to date"
	else
		if printf '%s\n' "${changes}" | patch --silent "${0}" -; then
			print_green "Script successfully updated"
		else
			print_red "ERROR: Something went wrong"
		fi
	fi
}


while [[ "${1}" ]]; do
	case "${1}" in
		-h|--help)
			show_help
			exit 0
			;;
		-V|--version)
			show_version
			exit 0
			;;
		-u|--update)
			update_script
			exit 0
			;;
		-c|--cache-size)
			show_cache_size
			exit 0
			;;
		-C|--clear-cache)
			clear_cache
			exit 0
			;;
		*)	
			show_help
			exit 1
			;;
	esac

	shift
done


#################
# Main Function #
#################
print_green "Search Torrent : "
read query

echo $query
#shopt -s nocasematch    #Dont care about the character case
#text=$(cat text.ini)
#regex=cat *.ini | grep -Eo "magnet:(.)[a-zA-Z0-9./?=_%:-]*" | sort -u
#[[ $text =~ $regex ]] && echo ${BASH_REMATCH[2]}
# get link href with regex
#echo "$text"


#cat *.ini | grep -Eo "magnet:(.)[a-zA-Z0-9./?=_%:-]*" | sort -u



#curl -s --compressed 'https://nyaa.si' > text.html
#cat text.html | pup ".text-center a" > text.ini


#cat text.html | grep -Eo "magnet:(.)[a-zA-Z0-9./?=_%:-]*"  | fzf && peerflix -l

#peerflix -l -k $magnet