#replace whitespcace with no space
stringr::str_replace_all(paste(species_info$elementGlobalId,species_name)," ","") # inverted comma with space and without space
#and then paste with sep using "" with no space like below
aa<- paste("data/",stringr::str_replace_all(paste(species_info$elementGlobalId,species_name)," ",""),".shp",sep="")
