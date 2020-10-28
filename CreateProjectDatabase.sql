CREATE TABLE TurnoutData (
  YearState TEXT PRIMARY KEY,
  ElectionYear INTEGER,
  StateAbbreviation TEXT,
  StateName TEXT,
  VoterTurnout NUMERIC,
  VEPTotalBallotsCounted NUMERIC,
  VAPHighestOffice NUMERIC,
  TotalBallotsCounted INTEGER,
  HighestOffice INTEGER,
  VEP_VotingEligiblePopulation INTEGER,
  VAP_VotingAgePopulation INTEGER,
  PercentNonCitizen NUMERIC,
  Prison INTEGER,
  Probation INTEGER,
  Parole INTEGER,
  TotalIneligibleFelon INTEGER
);

SELECT * FROM TurnoutData;


CREATE TABLE CompetivnessData (
	YearState TEXT PRIMARY KEY,
 	ElectionYear INTEGER,
	StateAbbreviation TEXT,
	DemocratCandidateVotes INTEGER,
	RepublicanCandidateVotes INTEGER,
	OtherCandidateVotes INTEGER,
	TotalVotes INTEGER,
	PercentDemocrat NUMERIC,
	PercentRepublican NUMERIC, 
	PercentOther NUMERIC,
	FirstPlace NUMERIC,
	SecondPlace NUMERIC,
	Competivness NUMERIC
);


SELECT * FROM CompetivnessData;