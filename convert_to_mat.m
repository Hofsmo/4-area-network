%% Create mpc struct for the 4-area network
mpc = struct('bus',[], 'branch',[], 'gen',[], 'gencost',[], 'areas',[]);
files = fieldnames(mpc);
for i = 1:numel(files)
    file = files{i};
    if file == "gencost"
        skip = 2;
    else
        skip = 1;
    end
    mpc.(file) = dlmread(sprintf("4area_network_%s.csv", file), ';', skip, 0);
end
mpc.version=2;
mpc.baseMVA = 100;

save("4_area", "mpc")