function c --description "c [tag]"
    set CONFIG $HOME/.config/gotoshell
	mkdir -p $CONFIG
    if count $argv > /dev/null
		set file $CONFIG/$argv[1]
		if test -e file
			cd (cat $file)
		else
			echo "Tag Not Used."
    else
        cd (cat $CONFIG/default)
    end 
end

function cs --description "cs [tag]"
    set CONFIG $HOME/.config/gotoshell
	mkdir -p $CONFIG
    if count $argv > /dev/null
        pwd > $CONFIG/$argv[1]
    else
        pwd > $CONFIG/default
    end 
end

