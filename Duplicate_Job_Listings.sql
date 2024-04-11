SELECT (
        count(*) - (select count(*) FROM(
                                        select DISTINCT DESCRIPTION, COMPANY_ID FROM JOB_LISTINGS
                                        ) C 
                    )
        ) 
as duplicate_companies FROM job_listings;

