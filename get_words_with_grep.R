getwords_grep = function(isi_pesan,cari_kata){
        result <- data.frame(1:length(isi_pesan))
        result[,1] <- as.integer(result[,1])
        for (i in 1:length(cari_kata)) {
                result[,i]= grepl(cari_kata[i],isi_pesan)
        }
        result 
        result[result==FALSE] <-NA
        result
}

getwords_bersih = function(hasilnya,variabel,isi_pesan){#variabel dan isi_pesan bentuk text
        {
                colnames(hasilnya)<-variabel # change variables name
                hasilnya = hasilnya[,colSums(is.na(hasilnya))!=nrow(hasilnya)]
                # remove all column that contain only NA
        }
        df <- sapply(hasilnya, as.character)
        df[is.na(df)] <- NA
        df = as.data.frame(df)
        hasilnya <- cbind(isi_pesan,df)
        hasilnya
}

