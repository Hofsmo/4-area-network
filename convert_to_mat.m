%% Create mpc struct for the 4-area network
mpc = struct('bus',[], 'branch',[], 'gen',[], 'gencost',[], 'areas',[],...
    'loaddata', []);
files = fieldnames(mpc);
for i = 1:numel(files)
    file = files{i};
    if file == "gencost"
        R = 2;
        C = 0;
    elseif file == "loaddata"
        R = 2;
        C = 1;
    else
        R = 1;
        C= 0;
    end
    mpc.(file) = dlmread(sprintf("4area_network_%s.csv", file), ';', R, C);
end
mpc.version=2;
mpc.baseMVA = 100;

% Set the load to the first operating state in the loaddata
load_idx = ismember(mpc.bus(:,1), mpc.loaddata(:, 1));
mpc.bus(load_idx, 3) = mpc.loaddata(:, 4);

save("4_area", "mpc")