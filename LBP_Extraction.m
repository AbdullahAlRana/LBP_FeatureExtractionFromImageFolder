folLoc = 'C:\Users\Abdul\Desktop\Center';
flPt = fullfile(folLoc, '*.png');
theFiles = dir(flPt);
f = zeros(length(theFiles),59);
for k = 1 : length(theFiles)
    fileName = theFiles(k).name;
    flLoc = fullfile(theFiles(k).folder, fileName);
    fprintf(1, 'Now reading %s\n', flLoc);
    img = imread(flLoc);
    gr = rgb2gray(img);
    imshow(gr);
    drawnow;
    f(k,:) = extractLBPFeatures(gr);
end