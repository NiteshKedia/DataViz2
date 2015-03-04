
relevant={'Final','semi','quarter'};
data2json=cell(11,1);
for i=2004:2014
    
    indexfinal = intersect(find(ismember(round1,'Final')),find(year==i));
    P1Final = player1(indexfinal);P1countryFinal = country1(indexfinal);P1AcesFinal = ace1(indexfinal);
    P2Final = player2(indexfinal);P2countryFinal = country2(indexfinal);P2AcesFinal = ace2(indexfinal);
    
    resultfinal = results(indexfinal);
    
    indexsemi1 = intersect(intersect(find(ismember(round1,'semi')),find(year==i)),find(ismember(player1,P1Final)));
    indexsemi2 = intersect(intersect(find(ismember(round1,'semi')),find(year==i)),find(ismember(player1,P2Final)));
    P1Semi1 = player1(indexsemi1);P1countrySemi1 = country1(indexsemi1);P1AcesSemi1 = ace1(indexsemi1);
    P2Semi1 = player2(indexsemi1);P2countrySemi1 = country2(indexsemi1);P2AcesSemi1 = ace2(indexsemi1);
    P1Semi2 = player1(indexsemi2);P1countrySemi2 = country1(indexsemi2);P1AcesSemi2 = ace1(indexsemi2);
    P2Semi2 = player2(indexsemi2);P2countrySemi2 = country2(indexsemi2);P2AcesSemi2 = ace2(indexsemi2);
    resultsemi1= results(indexsemi1);
    resultsemi2 = results(indexsemi2);
    
    indexquat1 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P1Semi1)));
    indexquat2 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P2Semi1)));
    indexquat3 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P1Semi2)));
    indexquat4 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P2Semi2)));    
    P1quat1 = player1(indexquat1);P1countryquat1 = country1(indexquat1);P1Acesquat1 = ace1(indexquat1);AverageAcesP1Q1 = nanmean(ace1(find(ismember(player1,P1quat1))));AverageFirstServeP1Q1 = nanmean(avgFirstServe1(find(ismember(player1,P1quat1))));AverageDoubleFaultsP1Q1 = nanmean(double1(find(ismember(player1,P1quat1))));AverageFastestServeP1Q1 = nanmean(fastServe1(find(ismember(player1,P1quat1))));AverageSecondServeP1Q1 = nanmean(avgSecServe1(find(ismember(player1,P1quat1))));
    P2quat1 = player2(indexquat1);P2countryquat1 = country2(indexquat1);P2Acesquat1 = ace2(indexquat1);AverageAcesP2Q1 = nanmean(ace2(find(ismember(player2,P2quat1))));AverageFirstServeP2Q1 = nanmean(avgFirstServe2(find(ismember(player2,P2quat1))));AverageDoubleFaultsP2Q1 = nanmean(double2(find(ismember(player2,P2quat1))));AverageFastestServeP2Q1 = nanmean(fastServe2(find(ismember(player2,P2quat1))));AverageSecondServeP2Q1 = nanmean(avgSecServe2(find(ismember(player2,P2quat1))));
    P1quat2 = player1(indexquat2);P1countryquat2 = country1(indexquat2);P1Acesquat2 = ace1(indexquat2);AverageAcesP1Q2 = nanmean(ace1(find(ismember(player1,P1quat2))));AverageFirstServeP1Q2 = nanmean(avgFirstServe1(find(ismember(player1,P1quat2))));AverageDoubleFaultsP1Q2 = nanmean(double1(find(ismember(player1,P1quat2))));AverageFastestServeP1Q2 = nanmean(fastServe1(find(ismember(player1,P1quat2))));AverageSecondServeP1Q2 = nanmean(avgSecServe1(find(ismember(player1,P1quat2))));
    P2quat2 = player2(indexquat2);P2countryquat2 = country2(indexquat2);P2Acesquat2 = ace2(indexquat2);AverageAcesP2Q2 = nanmean(ace2(find(ismember(player2,P2quat2))));AverageFirstServeP2Q2 = nanmean(avgFirstServe2(find(ismember(player2,P2quat2))));AverageDoubleFaultsP2Q2 = nanmean(double2(find(ismember(player2,P2quat2))));AverageFastestServeP2Q2 = nanmean(fastServe2(find(ismember(player2,P2quat2))));AverageSecondServeP2Q2 = nanmean(avgSecServe2(find(ismember(player2,P2quat2))));
    P1quat3 = player1(indexquat3);P1countryquat3 = country1(indexquat3);P1Acesquat3 = ace1(indexquat3);AverageAcesP1Q3 = nanmean(ace1(find(ismember(player1,P1quat3))));AverageFirstServeP1Q3 = nanmean(avgFirstServe1(find(ismember(player1,P1quat3))));AverageDoubleFaultsP1Q3 = nanmean(double1(find(ismember(player1,P1quat3))));AverageFastestServeP1Q3 = nanmean(fastServe1(find(ismember(player1,P1quat3))));AverageSecondServeP1Q3 = nanmean(avgSecServe1(find(ismember(player1,P1quat3))));
    P2quat3 = player2(indexquat3);P2countryquat3 = country2(indexquat3);P2Acesquat3 = ace2(indexquat3);AverageAcesP2Q3 = nanmean(ace2(find(ismember(player2,P2quat3))));AverageFirstServeP2Q3 = nanmean(avgFirstServe2(find(ismember(player2,P2quat3))));AverageDoubleFaultsP2Q3 = nanmean(double2(find(ismember(player2,P2quat3))));AverageFastestServeP2Q3 = nanmean(fastServe2(find(ismember(player2,P2quat3))));AverageSecondServeP2Q3 = nanmean(avgSecServe2(find(ismember(player2,P2quat3))));
    P1quat4 = player1(indexquat4);P1countryquat4 = country1(indexquat4);P1Acesquat4 = ace1(indexquat4);AverageAcesP1Q4 = nanmean(ace1(find(ismember(player1,P1quat4))));AverageFirstServeP1Q4 = nanmean(avgFirstServe1(find(ismember(player1,P1quat4))));AverageDoubleFaultsP1Q4 = nanmean(double1(find(ismember(player1,P1quat4))));AverageFastestServeP1Q4 = nanmean(fastServe1(find(ismember(player1,P1quat4))));AverageSecondServeP1Q4 = nanmean(avgSecServe1(find(ismember(player1,P1quat4))));
    P2quat4 = player2(indexquat4);P2countryquat4 = country2(indexquat4);P2Acesquat4 = ace2(indexquat4);AverageAcesP2Q4 = nanmean(ace2(find(ismember(player2,P2quat4))));AverageFirstServeP2Q4 = nanmean(avgFirstServe2(find(ismember(player2,P2quat4))));AverageDoubleFaultsP2Q4 = nanmean(double2(find(ismember(player2,P2quat4))));AverageFastestServeP2Q4 = nanmean(fastServe2(find(ismember(player2,P2quat4))));AverageSecondServeP2Q4 = nanmean(avgSecServe2(find(ismember(player2,P2quat4))));
    resultquat1= results(indexquat1);
    resultquat2 = results(indexquat2);
    resultquat3= results(indexquat3);
    resultquat4 = results(indexquat4);
    
%     struct('name',P1quat1,'children',[struct('name',P1quat1);struct('name',P2quat1)])
%     struct('name',P1quat2,'children',[struct('name',P1quat2);struct('name',P2quat2)])
%     struct('name',P1quat3,'children',[struct('name',P1quat3);struct('name',P2quat3)])
%     struct('name',P1quat4,'children',[struct('name',P1quat4);struct('name',P2quat4)])
%     
%     struct('name',P1Semi1,'children',[struct('name',P1quat1,'children',[struct('name',P1quat1);struct('name',P2quat1)]);struct('name',P1quat2,'children',[struct('name',P1quat2);struct('name',P2quat2)])])
%     struct('name',P1Semi2,'children',[struct('name',P1quat3,'children',[struct('name',P1quat3);struct('name',P2quat3)]);struct('name',P1quat4,'children',[struct('name',P1quat4);struct('name',P2quat4)])])
    
        data2json{i-2003} = struct('year',i,'data',...
            struct('name',P1Final,'round','Winner','country',P1countryFinal,'Aces',P1AcesFinal,'icon',strcat(P1Final,'.png'),'result',resultfinal,'children',...
            [struct('name',P1Semi1,'round','Semi','country',P1countrySemi1,'Aces',P1AcesSemi1,'icon',strcat(P1Semi1,'.png'),'result',resultsemi1,'children',...
                    [struct('name',P1quat1,'round','Quarter','country',P1countryquat1,'Aces',P1Acesquat1,'icon',strcat(P1quat1,'.png'),'result',resultquat1,'children',...
                        [struct('name',P1quat1,'round','Bottom','country',P1countryquat1,'Aces',AverageAcesP1Q1,'avgFirstServe',AverageFirstServeP1Q1,'avgSecondServe',AverageSecondServeP1Q1,'avgFastServe',AverageFastestServeP1Q1,'avgDoubleFaults',AverageDoubleFaultsP1Q1,'icon',strcat(P1quat1,'.png'));...
                        struct('name',P2quat1,'round','Bottom','country',P2countryquat1,'Aces',AverageAcesP2Q1,'avgFirstServe',AverageFirstServeP2Q1,'avgSecondServe',AverageSecondServeP2Q1,'avgFastServe',AverageFastestServeP2Q1,'avgDoubleFaults',AverageDoubleFaultsP2Q1,'icon',strcat(P2quat1,'.png'))]);...
                    struct('name',P1quat2,'round','Quarter','country',P1countryquat2,'Aces',P1Acesquat2,'icon',strcat(P1quat2,'.png'),'result',resultquat2,'children',...
                        [struct('name',P1quat2,'round','Bottom','country',P1countryquat2,'Aces',AverageAcesP1Q2,'avgFirstServe',AverageFirstServeP1Q2,'avgSecondServe',AverageSecondServeP1Q2,'avgFastServe',AverageFastestServeP1Q2,'avgDoubleFaults',AverageDoubleFaultsP1Q2,'icon',strcat(P1quat2,'.png'));...
                        struct('name',P2quat2,'round','Bottom','country',P2countryquat1,'Aces',AverageAcesP2Q2,'avgFirstServe',AverageFirstServeP2Q2,'avgSecondServe',AverageSecondServeP2Q2,'avgFastServe',AverageFastestServeP2Q2,'avgDoubleFaults',AverageDoubleFaultsP2Q2,'icon',strcat(P2quat2,'.png'))])]);...
            struct('name',P1Semi2,'country',P1countrySemi2,'round','Semi','Aces',P1AcesSemi2,'icon',strcat(P1Semi2,'.png'),'result',resultsemi2,'children',...
                    [struct('name',P1quat3,'round','Quarter','country',P1countryquat3,'Aces',P1Acesquat3,'icon',strcat(P1quat3,'.png'),'result',resultquat3,'children',...
                        [struct('name',P1quat3,'round','Bottom','country',P1countryquat3,'Aces',AverageAcesP1Q3,'avgFirstServe',AverageFirstServeP1Q3,'avgSecondServe',AverageSecondServeP1Q3,'avgFastServe',AverageFastestServeP1Q3,'avgDoubleFaults',AverageDoubleFaultsP1Q3,'icon',strcat(P1quat3,'.png'));...
                        struct('name',P2quat3,'round','Bottom','country',P2countryquat3,'Aces',AverageAcesP2Q3,'avgFirstServe',AverageFirstServeP2Q3,'avgSecondServe',AverageSecondServeP2Q3,'avgFastServe',AverageFastestServeP2Q3,'avgDoubleFaults',AverageDoubleFaultsP2Q3,'icon',strcat(P2quat3,'.png'))]);...
                    struct('name',P1quat4,'round','Quarter','country',P1countryquat4,'Aces',P1Acesquat4,'icon',strcat(P1quat4,'.png'),'result',resultquat4,'children',...
                            [struct('name',P1quat4,'round','Bottom','country',P1countryquat4,'Aces',AverageAcesP1Q4,'avgFirstServe',AverageFirstServeP1Q4,'avgSecondServe',AverageSecondServeP1Q4,'avgFastServe',AverageFastestServeP1Q4,'avgDoubleFaults',AverageDoubleFaultsP1Q4,'icon',strcat(P1quat4,'.png'));...
                             struct('name',P2quat4,'round','Bottom','country',P2countryquat4,'Aces',AverageAcesP2Q4,'avgFirstServe',AverageFirstServeP2Q4,'avgSecondServe',AverageSecondServeP2Q4,'avgFastServe',AverageFastestServeP2Q4,'avgDoubleFaults',AverageDoubleFaultsP2Q4,'icon',strcat(P2quat4,'.png'))])])]));
    
    
%     data2json = struct('year',i,'data',struct('name',P1Final,'children',[struct('name',P1Final,'children',[struct]);struct('name',P2Final,'children',2)]));
    
end

datafinal = [data2json{1:11}];
savejson('finaldata',datafinal)