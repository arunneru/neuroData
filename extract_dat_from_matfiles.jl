using MAT; using DelimitedFiles
file = matopen("G:/Arun/neural_data/hc-6/Fiv/Fivpos09.mat")
pos_dict = read(file, "pos")
pos = pos_dict[9][4]["data"]
writedlm("FivePos09_04.csv", pos, ",")