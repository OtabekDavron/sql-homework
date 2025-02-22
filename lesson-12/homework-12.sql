Declare @todate datetime, @fromdate datetime
set @fromdate = '2025-01-01'
set @todate = '2025-12-31';

With DateSequence( [Date] ) as
(
    Select @fromdate as [Date]
        union all
    Select dateadd(day, 1, [Date])
        from DateSequence
        where Date < @todate
)
Select cast([Date] as bigint) as ID,
[Date],
identity Day,

from DateSequence
OPTION (MAXRECURSION 0);

--Continue your code from here
