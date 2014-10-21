#!/usr/bin/perl

@lab204_data = `cat lab204_dell.serials`;
#@dell_warranty_data = `cat lab204_dell.serials`;   

foreach $line (@lab204_data) {
	chomp($line);
	($hn,$sn) = split(/:/,$line);
	## $pur_date = `grep -w $sn dell_warranty.info | cut -d":" -f2 `;
	$warr_date = `grep -w $sn dell_warranty.info | cut -d":" -f3 `;
	print $warr_date;	
}
