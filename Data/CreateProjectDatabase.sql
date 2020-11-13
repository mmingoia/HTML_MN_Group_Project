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
	nonvoter_illness_pct NUMERIC,
	nonvoter_reg_pct NUMERIC,
	online_reg INTEGER,
	wait NUMERIC,
	residual NUMERIC,
	pct_reg_of_vep_vrs NUMERIC,
	vep_turnout NUMERIC,
	midterm INTEGER
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

CREATE TABLE DemographicData(
	YearState TEXT PRIMARY KEY,
	ElectionYear INTEGER,
	StateAbbriviation TEXT,
	StateName TEXT,
	PercentCitizenWhite NUMERIC,
	PercentCitizenBlack NUMERIC,
	PercentCitizenAsian NUMERIC,
	PercentCitizenHispanic NUMERIC,
	TotalVotingAgePopulation INTEGER,
	TotalVotingAgeCitizen INTEGER,
	TotalPercentCitizen NUMERIC,
	TotalRegisteredVoters INTEGER,
	TotalPercentRegisteredCitizens NUMERIC,
	TotalTotalVotes INTEGER,
	TotalPercentVotedCitizen NUMERIC,
	MaleVotingAgePopulation INTEGER,
	MaleVotingAgeCitizen INTEGER,
	MalePercentCitizen NUMERIC,
	MaleRegisteredVoters INTEGER,
	MalePercentRegisteredCitizens NUMERIC,
	MaleTotalVotes INTEGER,
	MalePercentVotedCitizen NUMERIC,
	FemaleVotingAgePopulation INTEGER,
	FemaleVotingAgeCitizen INTEGER,
	FemalePercentCitizen NUMERIC,
	FemaleRegisteredVoters INTEGER,
	FemalePercentRegisteredCitizens NUMERIC,
	FemaleTotalVotes INTEGER,
	FemalePercentVotedCitizen NUMERIC,
	WhiteNonHispanicVotingAgePopulation INTEGER,
	WhiteNonHispanicVotingAgeCitizen INTEGER,
	WhiteNonHispanicPercentCitizen NUMERIC,
	WhiteNonHispanicRegisteredVoters INTEGER,
	WhiteNonHispanicPercentRegisteredCitizens NUMERIC,
	WhiteNonHispanicTotalVotes INTEGER,
	WhiteNonHispanicPercentVotedCitizen NUMERIC,
	BlackVotingAgePopulation INTEGER,
	BlackVotingAgeCitizen INTEGER,
	BlackPercentCitizen NUMERIC,
	BlackRegisteredVoters INTEGER,
	BlackPercentRegisteredCitizens NUMERIC,
	BlackTotalVotes INTEGER,
	BlackPercentVotedCitizen NUMERIC,
	AsianPacificIslanderVotingAgePopulation INTEGER,
	AsianPacificIslanderVotingAgeCitizen INTEGER,
	AsianPacificIslanderPercentCitizen NUMERIC,
	AsianPacificIslanderRegisteredVoters INTEGER,
	AsianPacificIslanderPercentRegisteredCitizens NUMERIC,
	AsianPacificIslanderTotalVotes INTEGER,
	AsianPacificIslanderPercentVotedCitizen NUMERIC,
	HispanicVotingAgePopulation INTEGER,
	HispanicVotingAgeCitizen INTEGER,
	HispanicPercentCitizen NUMERIC,
	HispanicRegisteredVoters INTEGER,
	HispanicPercentRegisteredCitizens NUMERIC,
	HispanicTotalVotes INTEGER,
	HispanicPercentVotedCitizen NUMERIC
);

SELECT * FROM DemographicData;


-- Joining Data from Multiple Tables for analysis and saving as new table
CREATE TABLE turnoutanalysisdata AS
SELECT
	td.yearstate,
	td.electionyear,
	td.StateAbbreviation,
	td.StateName,
	td.VoterTurnout,
	comp.Competivness,
	vld.website_pollingplace,
	vld.website_reg_status,
	vld.website_precinct_ballot,
	vld.website_absentee_status,
	vld.website_provisional_status,
	vld.reg_rej,
	vld.prov_partic,
	vld.prov_rej_all,
	vld.abs_rej_all_ballots,
	vld.abs_nonret,
	vld.uocava_rej,
	vld.uocava_nonret,
	vld.eavs_completeness,
	vld.post_election_audit,
	vld.nonvoter_illness_pct,
	vld.nonvoter_reg_pct,
	vld.online_reg,
	vld.wait,
	vld.residual,
	vld.pct_reg_of_vep_vrs,
	vld.midterm,
	demo.PercentCitizenWhite,
	demo.PercentCitizenBlack,
	demo.PercentCitizenAsian,
	demo.PercentCitizenHispanic
FROM TurnoutData as td
INNER JOIN DemographicData as demo
	ON td.yearstate = demo.yearstate
INNER JOIN VotingLawsData as vld
	ON td.yearstate = vld.yearstate
INNER JOIN CompetivnessData as comp
	on td.yearstate = comp.yearstate;

SELECT * FROM turnoutanalysisdata;


-- Joining Data from Multiple Tables for analysis and saving as new table for National Turnout Analysis
CREATE TABLE nationalturnoutdata AS
SELECT
	td.electionyear,
	td.HighestOffice,
	td.VEP_VotingEligiblePopulation,
	vld.midterm
FROM TurnoutData as td
INNER JOIN VotingLawsData as vld
	ON td.yearstate = vld.yearstate;

SELECT * FROM nationalturnoutdata;







