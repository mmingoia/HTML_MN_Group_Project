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

CREATE TABLE VotingLawsData (
	YearState TEXT PRIMARY KEY,
	StateAbbreviation TEXT,
	StateName TEXT,
	ElectionYear INTEGER,
	website_pollingplace INTEGER,
	website_reg_status INTEGER,
	website_precinct_ballot INTEGER,
	website_absentee_status INTEGER,
	website_provisional_status INTEGER,
	reg_rej NUMERIC,
	prov_partic NUMERIC,
	prov_rej_all NUMERIC,
	abs_rej_all_ballots NUMERIC,
	abs_nonret NUMERIC,
	uocava_rej NUMERIC,
	uocava_nonret NUMERIC,
	eavs_completeness NUMERIC,
	post_election_audit INTEGER,
	nonvoter_illness_onyear_pct NUMERIC,
	nonvoter_illness_offyear_pct NUMERIC,
	nonvoter_reg_onyear_pct NUMERIC,
	nonvoter_reg_offyear_pct NUMERIC,
	online_reg INTEGER,
	wait NUMERIC,
	residual NUMERIC,
	pct_reg_of_vep_vrs NUMERIC,
	vep_turnout NUMERIC
);

SELECT * FROM VotingLawsData;

CREATE TABLE NationalReasonsData (
	ElectionYear INTEGER,
	NonVotersInThousands INTEGER,
	IllnessOrDisability NUMERIC,
	OutofTownAwayFromHome NUMERIC,
	Forgot NUMERIC,
	NotInterested NUMERIC,
	TooBusy NUMERIC,
	TransportationProblems NUMERIC,
	Didnotlikecandidatesorcampaignissues NUMERIC,
	Registrationproblems NUMERIC,
	Badweatherconditions NUMERIC,
	Inconvenientpollingplaceorhourorlinestoolong NUMERIC,
	Otherreason NUMERIC,
	Refused NUMERIC
);


SELECT * FROM NationalReasonsData;