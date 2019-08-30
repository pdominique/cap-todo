namespace todo;

entity Tasks {
    key ID: Integer;
    title: String;
    done: Boolean;
    plannedTasks: Association to many PlannedTasks on plannedTasks.task = $self;
}

entity People {
    key ID: Integer;
    name: String;
    plannedTasks: Association to many PlannedTasks on plannedTasks.person = $self;
}

entity PlannedTasks {
	key task: Association to Tasks;
	key person: Association to People;
    key startDate: DateTime;
    key endDate: DateTime;
    tentative: Boolean;
}