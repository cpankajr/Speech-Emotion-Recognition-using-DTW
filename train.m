%% train.m

for i=1:15
    fname=sprintf('English Emotion database\\DC\\a%d.wav',i);
    [k,fs]=wavread(fname);
    p=SilenceRemoval(k,fs);
    cc=melcepst(p,fs);
    ref(i).mfcc=cc;
    ref(i).emot=1;
end
for i=1:15
    fname=sprintf('English Emotion database\\DC\\d%d.wav',i);
    [k,fs]=wavread(fname);
    p=SilenceRemoval(k,fs);
    cc=melcepst(p,fs);
    ref(i+15).mfcc=cc;
    ref(i+15).emot=2;
end
for i=1:15
    fname=sprintf('English Emotion database\\DC\\f%d.wav',i);
    [k,fs]=wavread(fname);
    p=SilenceRemoval(k,fs);
    cc=melcepst(p,fs);
    ref(i+30).mfcc=cc;
    ref(i+30).emot=3;
end
for i=1:15
    fname=sprintf('English Emotion database\\DC\\h%d.wav',i);
    [k,fs]=wavread(fname);
    p=SilenceRemoval(k,fs);
    cc=melcepst(p,fs);
    ref(i+45).mfcc=cc;
    ref(i+45).emot=4;
end
for i=1:30
    fname=sprintf('English Emotion database\\DC\\n%d.wav',i);
    [k,fs]=wavread(fname);
    p=SilenceRemoval(k,fs);
    cc=melcepst(p,fs);
    ref(i+60).mfcc=cc;
    ref(i+60).emot=5;
end
for i=1:15
    fname=sprintf('English Emotion database\\DC\\sa%d.wav',i);
    [k,fs]=wavread(fname);
    p=SilenceRemoval(k,fs);
    cc=melcepst(p,fs);
    ref(i+90).mfcc=cc;
    ref(i+90).emot=6;
end
for i=1:15
    fname=sprintf('English Emotion database\\DC\\su%d.wav',i);
    [k,fs]=wavread(fname);
    p=SilenceRemoval(k,fs);
    cc=melcepst(p,fs);
    ref(i+105).mfcc=cc;
    ref(i+105).emot=7;
end
save 'mfcc.mat' ref;
close all;