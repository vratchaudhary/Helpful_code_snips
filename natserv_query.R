species.list<-read.csv("/Users/vratika_chaudhary/OneDrive - NatureServe/MRT_OUTPUTS/USFWSSE/species_profile.csv")

data.s<-species.list
ncol(data.s)
for( i in 1:nrow(species.list)){
  species<-species.list[i,6]
  element_id<-species.list[i,2]

    temp<-natserv::ns_search_spp(text_adv = list(searchToken = species, matchAgainst = "scientificName", operator = "equals"))$results$roundedGRank

    temp<-temp

  data.s[i,12]<-temp
  
}
