#!/usr/bin/perl

use warnings;
use strict;
use v5.012;

my @projects = qw/roundn polynomial reverse shuffle circshift diff 
							find dims issorted isnumeric isnan isfinite isinteger 
							isinf zip linspace incrspace logspace abs sqrt signum 
							erf erfc erfinv erfcinv add subtract multiply divide
    					eq neq gt geq lt leq deg2rad rad2deg hypot unique gcd
    					lcm l1norm l2norm linfnorm lpnorm dot cross min argmin
    					nanmin argnanmin incrmin mmin cmin max argmax nanmax 
							argnanmax incrmax mmax cmax range sum nansum incrsum
    					msum csum mean nanmean incrmean mmean incrmmean wmean
    					gmean nangmean hmean nanhmean qmean nanqmean variance
    					nanvariance incrvariance stdev nanstdev incrstdev mode
    					median quantile quantiles iqr idr midrange midhinge 
							midsummary midmean lmidmean umidmean trimean skewness
    					kurtosis hamming/;



my $base = 'https://github.com/compute-io/';

for my $proj (@projects) {
	if(-d $proj) {
		next;
	}
	my $url = $base . $proj;
	my $command = "git clone $url";
	say "Requesting url = $url...";
	system($command);
	sleep 5;
}


