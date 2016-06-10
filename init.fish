function c --description "c [tag]"
    set CONFIG $HOME/.config/gotoshell
	mkdir -p $CONFIG
    if count $argv > /dev/null
        cd (cat $CONFIG/$argv[1])
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

