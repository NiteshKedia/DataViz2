
relevant={'Final','semi','quarter'};
data2json=cell(11,1);
for i=2004:2014
    
    indexfinal = intersect(find(ismember(round1,'Final')),find(year==i));
    P1Final = player1(indexfinal);
    P2Final = player2(indexfinal);
    resultfinal = results(indexfinal);
    
    indexsemi1 = intersect(intersect(find(ismember(round1,'semi')),find(year==i)),find(ismember(player1,P1Final)));
    indexsemi2 = intersect(intersect(find(ismember(round1,'semi')),find(year==i)),find(ismember(player1,P2Final)));
    P1Semi1 = player1(indexsemi1);
    P2Semi1 = player2(indexsemi1);
    P1Semi2 = player1(indexsemi2);
    P2Semi2 = player2(indexsemi2);
    resultsemi1= results(indexsemi1);
    resultsemi2 = results(indexsemi2);
    
    indexquat1 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P1Semi1)));
    indexquat2 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P2Semi1)));
    indexquat3 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P1Semi2)));
    indexquat4 = intersect(intersect(find(ismember(round1,'quarter')),find(year==i)),find(ismember(player1,P2Semi2)));    
    P1quat1 = player1(indexquat1);
    P2quat1 = player2(indexquat1);
    P1quat2 = player1(indexquat2);
    P2quat2 = player2(indexquat2);
    P1quat3 = player1(indexquat3);
    P2quat3 = player2(indexquat3);
    P1quat4 = player1(indexquat4);
    P2quat4 = player2(indexquat4);
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
            struct('name',P1Final,'icon',strcat(P1Final,'.png'),'result',resultfinal,'children',...
                            [struct('name',P1Semi1,'icon',strcat(P1Semi1,'.png'),'result',resultsemi1,'children',...
                                    [struct('name',P1quat1,'icon',strcat(P1quat1,'.png'),'result',resultquat1,'children',...
                                        [struct('name',P1quat1,'icon',strcat(P1quat1,'.png'));...
                                        struct('name',P2quat1,'icon',strcat(P2quat1,'.png'))]);...
                                    struct('name',P1quat2,'icon',strcat(P1quat2,'.png'),'result',resultquat2,'children',...
                                        [struct('name',P1quat2,'icon',strcat(P1quat2,'.png'));...
                                        struct('name',P2quat2,'icon',strcat(P2quat2,'.png'))])]);...
                            struct('name',P1Semi2,'icon',strcat(P1Semi2,'.png'),'result',resultsemi2,'children',...
                                    [struct('name',P1quat3,'icon',strcat(P1quat3,'.png'),'result',resultquat3,'children',...
                                        [struct('name',P1quat3,'icon',strcat(P1quat3,'.png'));...
                                        struct('name',P2quat3,'icon',strcat(P2quat3,'.png'))]);...
                                    struct('name',P1quat4,'icon',strcat(P1quat4,'.png'),'result',resultquat4,'children',...
                                            [struct('name',P1quat4,'icon',strcat(P1quat4,'.png'));...
                                             struct('name',P2quat4,'icon',strcat(P2quat4,'.png'))])])]));
    
    
%     data2json = struct('year',i,'data',struct('name',P1Final,'children',[struct('name',P1Final,'children',[struct]);struct('name',P2Final,'children',2)]));
    
end

datafinal = [data2json{1:11}];
savejson('finaldata',datafinal)