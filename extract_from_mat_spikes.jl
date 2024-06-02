using MAT; using DelimitedFiles; using Formatting
file = matopen("G:/Arun/neural_data/hc-6/Fiv/Fivspikes09.mat")
pos_dict = read(file, "spikes")
# print(pos_dict)
tet_list = [7, 16, 22]
# print(tet_list)
for tet in tet_list
    posy = pos_dict[9][4][tet]
    # print(pos)
    siz_pos = size(posy)[2]
    for iter in range(1,stop=siz_pos)
        print(iter)
        if !isempty(keys(posy[iter]))
            dat = posy[iter]["data"] 
            if !isempty(dat)
                    filename_ = "G:/Arun/neural_data/hc-6/Fiv/processed_data/FiveSpikes09_04_$tet-$iter.csv"
                writedlm(filename_, dat, ",")
            end
        end
    end
end
