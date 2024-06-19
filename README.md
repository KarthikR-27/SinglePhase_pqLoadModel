# SinglePhase_pqLoadModel
This folder contains the working models of proposed dynamic load model based on "instantaneous p-q theory". 
1) SimpleTestFeeder_PQload.slx is a simple model, where the proposed p-q theory-based load model was tested using a source, line and a p-q load

The proposed load model was tested using standard IEEE34 node test feeder. The loads in the test feeder are represented using proposed p-q theory-based
load model and the corresponding file is "IEEE34_PQload.slx". To execute this file,one has to have the below files in the same working folder- 
1) LoadLib.slx is the library file of the proposed instantaneous p-q theory based dynmaic load model
2) The initailization file "init_IEEE34nodetestfeeder.m" is the initialization file is used for running the 

The "IEEE34_SPSload.slx" file is the test feeder with single-phase Simulink dynmaic load and it is enough to have 
"init_IEEE34nodetestfeeder.m" initialization file to execute the model.
