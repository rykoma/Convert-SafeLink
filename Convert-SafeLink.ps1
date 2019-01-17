function Convert-SafeLink {
    param(
        [Parameter(Mandatory=$True,Position=1,ValueFromPipeline=$True)]
        [System.Uri]$SafeLink
    )

    [System.Uri]::UnescapeDataString($SafeLink.Query.Split('&')[0].Split('=', 2)[1])
}