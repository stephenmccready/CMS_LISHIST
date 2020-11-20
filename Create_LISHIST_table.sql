IF OBJECT_ID('[dbo].[tbl_LISHIST_Detail]') IS NOT NULL DROP TABLE [dbo].[tbl_LISHIST_Detail]

CREATE TABLE [dbo].[tbl_LISHIST_Detail](
	[LISHISTDetailId] [int] IDENTITY(1,1) NOT NULL,
	[RecordType] [varchar](1) NULL,
	[MCOContractNumber] [varchar](5) NULL,
	[PBPNumber] [varchar](3) NULL,
	[BeneficiaryID] [varchar](12) NULL,
	[Surname] [varchar](12) NULL,
	[FirstName] [varchar](7) NULL,
	[MiddleInitial] [varchar](1) NULL,
	[Sex] [varchar](1) NULL,
	[DateofBirth] [varchar](8) NULL,
	[LowIncomePeriodStartDate] [varchar](8) NULL,
	[LowIncomePeriodEndDate] [varchar](8) NULL,
	[LIPSPercentage] [varchar](3) NULL,
	[PremiumLISAmount] [varchar](8) NULL,
	[LowIncomeCo-payLevelID] [varchar](1) NULL,
		--	1 = High.
		--	2 = Low.
		--	3 = $0.
		--	4 = 15%.
		--	Co-pay level IDs 1 and 2 change each year.
	[BeneficiarySourceofSubsidyCode] [varchar](1) NULL,
		--	A = Determined Eligible for LIS by the SSA or a State Medicaid Agency.
		--	D = Deemed Eligible for LIS.
	[LISActivityFlag] [varchar](1) NULL,
		--	N = No change in reported LIS data since last month’s data file.
		--	Y = One of the following may have changed since the last month’s data file:
			--	 Co-payment level
			--	 Low-income premium subsidy level
			--	 Low-income period start or end date
	[PBPStartDate] [varchar](8) NULL,
	[NetPartDPremiumAmount] [varchar](8) NULL,
	[ContractYear] [varchar](4) NULL,
	[InstitutionalStatusIndicator] [varchar](1) NULL,
		--	1 = Institutionalized.
		--	2 = Non-Institutionalized.
		--	3 = Home and Community- Based Services (HCBS).
		--	9 = Not applicable.
	[PBPEnrollmentTerminationDate] [varchar](8) NULL,
	[Filler01] [varchar](56) NULL,
	[DataImported] [datetime] NOT NULL,
	[FileName] [varchar](128) NOT NULL
) ON [PRIMARY]
