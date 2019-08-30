using todo as td from '../db/data-model';

service TodoService {
    entity Tasks as projection on td.Tasks;
     entity People as projection on td.People;
     entity PlannedTasks as projection on td.PlannedTasks;
}