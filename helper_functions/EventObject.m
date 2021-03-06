classdef EventObject
% EVENTMARKER - Class for EventObject
%
%   Copyright 2021 Michael J. Prerau, Ph.D. - http://www.sleepEEG.org
%   This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
%   (http://creativecommons.org/licenses/by-nc-sa/4.0/)   
%
%   Last modifed: 04/28/2021
%********************************************************************

    %%%%%%%%%%%%%%%% public properties %%%%%%%%%%%%%%%%%%
    properties (Access = public)
        name %Text name of event type
        type_ID %Event type ID
        region %Boolean for being a region
        event_ID %Unique event ID
        
        %If a region, this allows for vertical constraint
        constrain
        
        obj_handle=[]
        label_handle=[]
    end
    
    %%%%%%%%%%%%%%% protected methods %%%%%%%%%%%%%%%%%%%%%%
    methods (Access = public)
        
        %***********************************************
        %             CONSTRUCTOR METHOD
        %***********************************************
        
        function obj=EventObject(varargin)
            %Set up default param values
            new_id=round(now);
            args={['object_' num2str(new_id) ], new_id, false, true};
            args(1:length(varargin))=varargin;
            [obj.name, obj.type_ID, obj.region, obj.constrain]=args{:};
        end
    end
end