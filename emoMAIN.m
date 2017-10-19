%MAIN1.m
clear;
close all;
clc;
load mfcc.mat;
[FileName,PathName] = uigetfile('*.wav','Select the Sound file');
file=fullfile(PathName, FileName);
fprintf('Reading %s.....\n',FileName);
  pause(1);
  [kk,fs]=audioread(file);
    pk=SilenceRemoval(kk,fs);
    fprintf('Silence Removed\n');
    ck=melcepst(pk,fs);
   test.mfcc=ck;


%  type your classifier code in new m file
% make it as function
% call here that function to capare the values mfcc of testing file and refrence
% file
% after comparing the both value
% you will get your matched refrence file
% then call its emotion no

% according to your emotion no you will get emotion 
% write switch case for that here
close all;