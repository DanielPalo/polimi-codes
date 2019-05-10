function [dataArray] = vel(filename)
%VEL dataArray = [positionX,Ux,Uy]
%% Initialize variables.
delimiter = '\t';
startRow = 1;
%% Read columns of data as text:
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f %f %f %*[^\n] ';
%% Open the text file.
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
fclose(fileID);
end

