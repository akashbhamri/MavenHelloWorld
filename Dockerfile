EXECUTE master.dbo.IndexOptimize
    @Databases = 'USER_DATABASES',
    @FragmentationLow = NULL,
    @FragmentationMedium = NULL,
    @FragmentationHigh = 'INDEX_REBUILD_ONLINE,INDEX_REBUILD',
    @FragmentationLevel1 = 5,
    @FragmentationLevel2 = 30,
    @TimeLimit = 28800,
    @Indexes = 'ALL_INDEXES',
    @LogToTable = 'Y',
    @SortInTempdb = 'Y';