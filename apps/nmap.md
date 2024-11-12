## **Target Specification**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>nmap 192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Scan a single IP</td>
</tr>
<tr class="even">
<td></td>
<td>nmap 192.168.1.1 192.168.2.1</td>
<td class="has-text-align-left" data-align="left">Scan specific IPs</td>
</tr>
<tr class="odd">
<td></td>
<td>nmap 192.168.1.1-254</td>
<td class="has-text-align-left" data-align="left">Scan a range</td>
</tr>
<tr class="even">
<td></td>
<td>nmap scanme.nmap.org</td>
<td class="has-text-align-left" data-align="left">Scan a domain</td>
</tr>
<tr class="odd">
<td></td>
<td>nmap 192.168.1.0/24</td>
<td class="has-text-align-left" data-align="left">Scan using CIDR
notation</td>
</tr>
<tr class="even">
<td>-iL</td>
<td>nmap -iL targets.txt</td>
<td class="has-text-align-left" data-align="left">Scan targets from a
file</td>
</tr>
<tr class="odd">
<td>-iR</td>
<td>nmap -iR 100</td>
<td class="has-text-align-left" data-align="left">Scan 100 random
hosts</td>
</tr>
<tr class="even">
<td>-exclude</td>
<td>nmap -exclude 192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Exclude listed
hosts</td>
</tr>
</tbody>
</table>
</figure>

## **Nmap Scan** **Techniques**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-sS</td>
<td>nmap 192.168.1.1 -sS</td>
<td class="has-text-align-left" data-align="left">TCP SYN port scan
(Default)</td>
</tr>
<tr class="even">
<td>-sT</td>
<td>nmap 192.168.1.1 -sT</td>
<td class="has-text-align-left" data-align="left">TCP connect port scan
(Default without root privilege)</td>
</tr>
<tr class="odd">
<td>-sU</td>
<td>nmap 192.168.1.1 -sU</td>
<td class="has-text-align-left" data-align="left">UDP port scan</td>
</tr>
<tr class="even">
<td>-sA</td>
<td>nmap 192.168.1.1 -sA</td>
<td class="has-text-align-left" data-align="left">TCP ACK port scan</td>
</tr>
<tr class="odd">
<td>-sW</td>
<td>nmap 192.168.1.1 -sW</td>
<td class="has-text-align-left" data-align="left">TCP Window port
scan</td>
</tr>
<tr class="even">
<td>-sM</td>
<td>nmap 192.168.1.1 -sM</td>
<td class="has-text-align-left" data-align="left">TCP Maimon port
scan</td>
</tr>
</tbody>
</table>
</figure>

## **Host Discovery**

<figure class="wp-block-table stx-post-table">
<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-sL</td>
<td>nmap 192.168.1.1-3 -sL</td>
<td class="has-text-align-left" data-align="left">No Scan. List targets
only</td>
</tr>
<tr class="even">
<td>-sn</td>
<td>nmap 192.168.1.1/24 -sn</td>
<td class="has-text-align-left" data-align="left">Disable port scanning.
Host discovery only.</td>
</tr>
<tr class="odd">
<td>-Pn</td>
<td>nmap 192.168.1.1-5 -Pn</td>
<td class="has-text-align-left" data-align="left">Disable host
discovery. Port scan only.</td>
</tr>
<tr class="even">
<td>-PS</td>
<td>nmap 192.168.1.1-5 -PS22-25,80</td>
<td class="has-text-align-left" data-align="left">TCP SYN discovery on
port x.<br />
Port 80 by default</td>
</tr>
<tr class="odd">
<td>-PA</td>
<td>nmap 192.168.1.1-5 -PA22-25,80</td>
<td class="has-text-align-left" data-align="left">TCP ACK discovery on
port x.<br />
Port 80 by default</td>
</tr>
<tr class="even">
<td>-PU</td>
<td>nmap 192.168.1.1-5 -PU53</td>
<td class="has-text-align-left" data-align="left">UDP discovery on port
x.<br />
Port 40125 by default</td>
</tr>
<tr class="odd">
<td>-PR</td>
<td>nmap 192.168.1.1-1/24 -PR</td>
<td class="has-text-align-left" data-align="left">ARP discovery on local
network</td>
</tr>
<tr class="even">
<td>-n</td>
<td>nmap 192.168.1.1 -n</td>
<td class="has-text-align-left" data-align="left">Never do DNS
resolution</td>
</tr>
</tbody>
</table>
</figure>

## Nmap Command Generator

Say goodbye to the hassle of trying to remember the exact syntax for
your Nmap commands! With our Nmap Command Generator, you can simply say
what you need Nmap to do and we will generate the command for you.

Generate

## **Port Specification**

<figure class="wp-block-table stx-post-table">
<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-p</td>
<td>nmap 192.168.1.1 -p 21</td>
<td class="has-text-align-left" data-align="left">Port scan for port
x</td>
</tr>
<tr class="even">
<td>-p</td>
<td>nmap 192.168.1.1 -p 21-100</td>
<td class="has-text-align-left" data-align="left">Port range</td>
</tr>
<tr class="odd">
<td>-p</td>
<td>nmap 192.168.1.1 -p U:53,T:21-25,80</td>
<td class="has-text-align-left" data-align="left">Port scan multiple TCP
and UDP ports</td>
</tr>
<tr class="even">
<td>-p</td>
<td>nmap 192.168.1.1 -p-</td>
<td class="has-text-align-left" data-align="left">Port scan all
ports</td>
</tr>
<tr class="odd">
<td>-p</td>
<td>nmap 192.168.1.1 -p http,https</td>
<td class="has-text-align-left" data-align="left">Port scan from service
name</td>
</tr>
<tr class="even">
<td>-F</td>
<td>nmap 192.168.1.1 -F</td>
<td class="has-text-align-left" data-align="left">Fast port scan (100
ports)</td>
</tr>
<tr class="odd">
<td>-top-ports</td>
<td>nmap 192.168.1.1 -top-ports 2000</td>
<td class="has-text-align-left" data-align="left">Port scan the top x
ports</td>
</tr>
<tr class="even">
<td>-p-65535</td>
<td>nmap 192.168.1.1 -p-65535</td>
<td class="has-text-align-left" data-align="left">Leaving off initial
port in range makes the scan start at port 1</td>
</tr>
<tr class="odd">
<td>-p0-</td>
<td>nmap 192.168.1.1 -p0-</td>
<td class="has-text-align-left" data-align="left">Leaving off end port
in range<br />
makes the scan go through to port 65535</td>
</tr>
</tbody>
</table>
</figure>

## **Service and Version Detection**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-sV</td>
<td>nmap 192.168.1.1 -sV</td>
<td class="has-text-align-left" data-align="left">Attempts to determine
the version of the service running on port</td>
</tr>
<tr class="even">
<td>-sV -version-intensity</td>
<td>nmap 192.168.1.1 -sV -version-intensity 8</td>
<td class="has-text-align-left" data-align="left">Intensity level 0 to
9. Higher number increases possibility of correctness</td>
</tr>
<tr class="odd">
<td>-sV -version-light</td>
<td>nmap 192.168.1.1 -sV -version-light</td>
<td class="has-text-align-left" data-align="left">Enable light mode.
Lower possibility of correctness. Faster</td>
</tr>
<tr class="even">
<td>-sV -version-all</td>
<td>nmap 192.168.1.1 -sV -version-all</td>
<td class="has-text-align-left" data-align="left">Enable intensity level
9. Higher possibility of correctness. Slower</td>
</tr>
<tr class="odd">
<td>-A</td>
<td>nmap 192.168.1.1 -A</td>
<td class="has-text-align-left" data-align="left">Enables OS detection,
version detection, script scanning, and traceroute</td>
</tr>
</tbody>
</table>
</figure>

## **OS Detection**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-O</td>
<td>nmap 192.168.1.1 -O</td>
<td class="has-text-align-left" data-align="left"><a
href="https://www.stationx.net/nmap-os-detection/" target="_blank"
rel="noreferrer noopener">Remote OS detection</a> using TCP/IP stack
fingerprinting</td>
</tr>
<tr class="even">
<td>-O -osscan-limit</td>
<td>nmap 192.168.1.1 -O -osscan-limit</td>
<td class="has-text-align-left" data-align="left">If at least one open
and one closed TCP port are not found it will not try OS detection
against host</td>
</tr>
<tr class="odd">
<td>-O -osscan-guess</td>
<td>nmap 192.168.1.1 -O -osscan-guess</td>
<td class="has-text-align-left" data-align="left">Makes Nmap guess more
aggressively</td>
</tr>
<tr class="even">
<td>-O -max-os-tries</td>
<td>nmap 192.168.1.1 -O -max-os-tries 1</td>
<td class="has-text-align-left" data-align="left">Set the maximum number
x of OS detection tries against a target</td>
</tr>
<tr class="odd">
<td>-A</td>
<td>nmap 192.168.1.1 -A</td>
<td class="has-text-align-left" data-align="left">Enables OS detection,
version detection, script scanning, and traceroute</td>
</tr>
</tbody>
</table>
</figure>

## **Timing and Performance**

<figure class="wp-block-table stx-post-table stnx-nowrap-2nd">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-T0</td>
<td>nmap 192.168.1.1 -T0</td>
<td class="has-text-align-left" data-align="left">Paranoid (0) Intrusion
Detection System evasion</td>
</tr>
<tr class="even">
<td>-T1</td>
<td>nmap 192.168.1.1 -T1</td>
<td class="has-text-align-left" data-align="left">Sneaky (1) Intrusion
Detection System evasion</td>
</tr>
<tr class="odd">
<td>-T2</td>
<td>nmap 192.168.1.1 -T2</td>
<td class="has-text-align-left" data-align="left">Polite (2) slows down
the scan to use less bandwidth and use less target machine
resources</td>
</tr>
<tr class="even">
<td>-T3</td>
<td>nmap 192.168.1.1 -T3</td>
<td class="has-text-align-left" data-align="left">Normal (3) which is
default speed</td>
</tr>
<tr class="odd">
<td>-T4</td>
<td>nmap 192.168.1.1 -T4</td>
<td class="has-text-align-left" data-align="left">Aggressive (4) speeds
scans; assumes you are on a reasonably fast and reliable network</td>
</tr>
<tr class="even">
<td>-T5</td>
<td>nmap 192.168.1.1 -T5</td>
<td class="has-text-align-left" data-align="left">Insane (5) speeds
scan; assumes you are on an extraordinarily fast network</td>
</tr>
</tbody>
</table>
</figure>

## **Timing and Performance Switches**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong><strong>EXAMPLE INPUT</strong></strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong><strong>DESCRIPTION</strong></strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-host-timeout &lt;time&gt;</td>
<td>1s; 4m; 2h</td>
<td class="has-text-align-left" data-align="left">Give up on target
after this long</td>
</tr>
<tr class="even">
<td>-min-rtt-timeout/max-rtt-timeout/initial-rtt-timeout &lt;time&gt;</td>
<td>1s; 4m; 2h</td>
<td class="has-text-align-left" data-align="left">Specifies probe round
trip time</td>
</tr>
<tr class="odd">
<td>-min-hostgroup/max-hostgroup &lt;size&lt;size&gt;</td>
<td>50; 1024</td>
<td class="has-text-align-left" data-align="left">Parallel host scan
group sizes</td>
</tr>
<tr class="even">
<td>-min-parallelism/max-parallelism &lt;numprobes&gt;</td>
<td>10; 1</td>
<td class="has-text-align-left" data-align="left">Probe
parallelization</td>
</tr>
<tr class="odd">
<td>-max-retries &lt;tries&gt;</td>
<td>3</td>
<td class="has-text-align-left" data-align="left">Specify the maximum
number of port scan probe retransmissions</td>
</tr>
<tr class="even">
<td>-min-rate &lt;number&gt;</td>
<td>100</td>
<td class="has-text-align-left" data-align="left">Send packets no slower
than &lt;number&gt; per second</td>
</tr>
<tr class="odd">
<td>-max-rate &lt;number&gt;</td>
<td>100</td>
<td class="has-text-align-left" data-align="left">Send packets no faster
than &lt;number&gt; per second</td>
</tr>
</tbody>
</table>
</figure>

## **NSE Scripts**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong><strong>EXAMPLE</strong></strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong><strong>DESCRIPTION</strong></strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-sC</td>
<td>nmap 192.168.1.1 -sC</td>
<td class="has-text-align-left" data-align="left">Scan with default NSE
scripts. Considered useful for discovery and safe</td>
</tr>
<tr class="even">
<td>-script default</td>
<td>nmap 192.168.1.1 -script default</td>
<td class="has-text-align-left" data-align="left">Scan with default NSE
scripts. Considered useful for discovery and safe</td>
</tr>
<tr class="odd">
<td>-script</td>
<td>nmap 192.168.1.1 -script=banner</td>
<td class="has-text-align-left" data-align="left">Scan with a single
script. Example banner</td>
</tr>
<tr class="even">
<td>-script</td>
<td>nmap 192.168.1.1 -script=http*</td>
<td class="has-text-align-left" data-align="left">Scan with a wildcard.
Example http</td>
</tr>
<tr class="odd">
<td>-script</td>
<td>nmap 192.168.1.1 -script=http,banner</td>
<td class="has-text-align-left" data-align="left">Scan with two scripts.
Example http and banner</td>
</tr>
<tr class="even">
<td>-script</td>
<td>nmap 192.168.1.1 -script "not intrusive"</td>
<td class="has-text-align-left" data-align="left">Scan default, but
remove intrusive scripts</td>
</tr>
<tr class="odd">
<td>-script-args</td>
<td>nmap -script snmp-sysdescr -script-args snmpcommunity=admin
192.168.1.1</td>
<td class="has-text-align-left" data-align="left">NSE script with
arguments</td>
</tr>
</tbody>
</table>
</figure>

## **Useful NSE Script Examples**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>COMMAND</strong></strong></strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong><strong>DESCRIPTION</strong></strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td class="has-text-align-left" data-align="left">nmap -Pn
-script=http-sitemap-generator scanme.nmap.org</td>
<td class="has-text-align-left" data-align="left">http site map
generator</td>
</tr>
<tr class="even">
<td class="has-text-align-left" data-align="left">nmap -n -Pn -p 80
-open -sV -vvv -script banner,http-title -iR 1000</td>
<td class="has-text-align-left" data-align="left">Fast search for random
web servers</td>
</tr>
<tr class="odd">
<td class="has-text-align-left" data-align="left">nmap -Pn
-script=dns-brute domain.com</td>
<td class="has-text-align-left" data-align="left">Brute forces DNS
hostnames guessing subdomains</td>
</tr>
<tr class="even">
<td class="has-text-align-left" data-align="left">nmap -n -Pn -vv -O -sV
-script
smb-enum*,smb-ls,smb-mbenum,smb-os-discovery,smb-s*,smb-vuln*,smbv2* -vv
192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Safe SMB scripts to
run</td>
</tr>
<tr class="odd">
<td class="has-text-align-left" data-align="left">nmap -script whois*
domain.com</td>
<td class="has-text-align-left" data-align="left">Whois query</td>
</tr>
<tr class="even">
<td class="has-text-align-left" data-align="left">nmap -p80 -script
http-unsafe-output-escaping scanme.nmap.org</td>
<td class="has-text-align-left" data-align="left">Detect cross site
scripting vulnerabilities</td>
</tr>
<tr class="odd">
<td class="has-text-align-left" data-align="left">nmap -p80 -script
http-sql-injection scanme.nmap.org</td>
<td class="has-text-align-left" data-align="left">Check for SQL
injections</td>
</tr>
</tbody>
</table>
</figure>

## **Firewall / IDS Evasion and Spoofing**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong><strong>EXAMPLE</strong></strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong><strong>DESCRIPTION</strong></strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-f</td>
<td>nmap 192.168.1.1 -f</td>
<td class="has-text-align-left" data-align="left">Requested scan
(including ping scans) use tiny fragmented IP packets. Harder for packet
filters</td>
</tr>
<tr class="even">
<td>-mtu</td>
<td>nmap 192.168.1.1 -mtu 32</td>
<td class="has-text-align-left" data-align="left">Set your own offset
size</td>
</tr>
<tr class="odd">
<td>-D</td>
<td>nmap -D 192.168.1.101,192.168.1.102,192.168.1.103,192.168.1.23
192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Send scans from
spoofed IPs</td>
</tr>
<tr class="even">
<td>-D</td>
<td>nmap -D decoy-ip1,decoy-ip2,your-own-ip,decoy-ip3,decoy-ip4
remote-host-ip</td>
<td class="has-text-align-left" data-align="left">Above example
explained</td>
</tr>
<tr class="odd">
<td>-S</td>
<td>nmap -S www.microsoft.com www.facebook.com</td>
<td class="has-text-align-left" data-align="left">Scan Facebook from
Microsoft (-e eth0 -Pn may be required)</td>
</tr>
<tr class="even">
<td>-g</td>
<td>nmap -g 53 192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Use given source port
number</td>
</tr>
<tr class="odd">
<td>-proxies</td>
<td>nmap -proxies http://192.168.1.1:8080, http://192.168.1.2:8080
192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Relay connections
through HTTP/SOCKS4 proxies</td>
</tr>
<tr class="even">
<td>-data-length</td>
<td>nmap -data-length 200 192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Appends random data to
sent packets</td>
</tr>
</tbody>
</table>
</figure>

**Example IDS Evasion command**

nmap -f -t 0 -n -Pn --data-length 200 -D  
192.168.1.101,192.168.1.102,192.168.1.103,192.168.1.23 192.168.1.1

## **Output**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong><strong>EXAMPLE</strong></strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong><strong>DESCRIPTION</strong></strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-oN</td>
<td>nmap 192.168.1.1 -oN normal.file</td>
<td class="has-text-align-left" data-align="left">Normal output to the
file normal.file</td>
</tr>
<tr class="even">
<td>-oX</td>
<td>nmap 192.168.1.1 -oX xml.file</td>
<td class="has-text-align-left" data-align="left">XML output to the file
xml.file</td>
</tr>
<tr class="odd">
<td>-oG</td>
<td>nmap 192.168.1.1 -oG grep.file</td>
<td class="has-text-align-left" data-align="left">Grepable output to the
file grep.file</td>
</tr>
<tr class="even">
<td>-oA</td>
<td>nmap 192.168.1.1 -oA results</td>
<td class="has-text-align-left" data-align="left">Output in the three
major formats at once</td>
</tr>
<tr class="odd">
<td>-oG -</td>
<td>nmap 192.168.1.1 -oG -</td>
<td class="has-text-align-left" data-align="left">Grepable output to
screen. -oN -, -oX - also usable</td>
</tr>
<tr class="even">
<td>-append-output</td>
<td>nmap 192.168.1.1 -oN file.file -append-output</td>
<td class="has-text-align-left" data-align="left">Append a scan to a
previous scan file</td>
</tr>
<tr class="odd">
<td>-v</td>
<td>nmap 192.168.1.1 -v</td>
<td class="has-text-align-left" data-align="left">Increase the verbosity
level (use -vv or more for greater effect)</td>
</tr>
<tr class="even">
<td>-d</td>
<td>nmap 192.168.1.1 -d</td>
<td class="has-text-align-left" data-align="left">Increase debugging
level (use -dd or more for greater effect)</td>
</tr>
<tr class="odd">
<td>-reason</td>
<td>nmap 192.168.1.1 -reason</td>
<td class="has-text-align-left" data-align="left">Display the reason a
port is in a particular state, same output as -vv</td>
</tr>
<tr class="even">
<td>-open</td>
<td>nmap 192.168.1.1 -open</td>
<td class="has-text-align-left" data-align="left">Only show open (or
possibly open) ports</td>
</tr>
<tr class="odd">
<td>-packet-trace</td>
<td>nmap 192.168.1.1 -T4 -packet-trace</td>
<td class="has-text-align-left" data-align="left">Show all packets sent
and received</td>
</tr>
<tr class="even">
<td>-iflist</td>
<td>nmap -iflist</td>
<td class="has-text-align-left" data-align="left">Shows the host
interfaces and routes</td>
</tr>
<tr class="odd">
<td>-resume</td>
<td>nmap -resume results.file</td>
<td class="has-text-align-left" data-align="left">Resume a scan</td>
</tr>
</tbody>
</table>
</figure>

## **Helpful Nmap Output examples**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong><strong><strong>COMMAND</strong></strong></strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong><strong>DESCRIPTION</strong></strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>nmap -p80 -sV -oG - -open 192.168.1.1/24 | grep open</td>
<td class="has-text-align-left" data-align="left">Scan for web servers
and grep to show which IPs are running web servers</td>
</tr>
<tr class="even">
<td>nmap -iR 10 -n -oX out.xml | grep "Nmap" | cut -d " " -f5 &gt;
live-hosts.txt</td>
<td class="has-text-align-left" data-align="left">Generate a list of the
IPs of live hosts</td>
</tr>
<tr class="odd">
<td>nmap -iR 10 -n -oX out2.xml | grep "Nmap" | cut -d " " -f5 &gt;&gt;
live-hosts.txt</td>
<td class="has-text-align-left" data-align="left">Append IP to the list
of live hosts</td>
</tr>
<tr class="even">
<td>ndiff scanl.xml scan2.xml</td>
<td class="has-text-align-left" data-align="left">Compare output from
nmap using the ndif</td>
</tr>
<tr class="odd">
<td>xsltproc nmap.xml -o nmap.html</td>
<td class="has-text-align-left" data-align="left">Convert nmap xml files
to html files</td>
</tr>
<tr class="even">
<td>grep " open " results.nmap | sed -r ‘s/ +/ /g’ | sort | uniq -c |
sort -rn | less</td>
<td class="has-text-align-left" data-align="left">Reverse sorted list of
how often ports turn up</td>
</tr>
</tbody>
</table>
</figure>

## **Miscellaneous Nmap Flags**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th><strong>SWITCH</strong></th>
<th><strong>EXAMPLE</strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-6</td>
<td>nmap -6 2607:f0d0:1002:51::4</td>
<td class="has-text-align-left" data-align="left">Enable IPv6
scanning</td>
</tr>
<tr class="even">
<td>-h</td>
<td>nmap -h</td>
<td class="has-text-align-left" data-align="left">nmap help screen</td>
</tr>
</tbody>
</table>
</figure>

## **Other Useful Nmap Commands**

<figure class="wp-block-table stx-post-table">
<table>
<thead>
<tr class="header">
<th class="has-text-align-left"
data-align="left"><strong><strong>COMMAND</strong></strong></th>
<th class="has-text-align-left"
data-align="left"><strong><strong><strong>DESCRIPTION</strong></strong></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td class="has-text-align-left" data-align="left">nmap -iR 10
-PS22-25,80,113,1050,35000 -v -sn</td>
<td class="has-text-align-left" data-align="left">Discovery only on
ports x, no port scan</td>
</tr>
<tr class="even">
<td class="has-text-align-left" data-align="left">nmap 192.168.1.1-1/24
-PR -sn -vv</td>
<td class="has-text-align-left" data-align="left">Arp discovery only on
local network, no port scan</td>
</tr>
<tr class="odd">
<td class="has-text-align-left" data-align="left">nmap -iR 10 -sn
-traceroute</td>
<td class="has-text-align-left" data-align="left">Traceroute to random
targets, no port scan</td>
</tr>
<tr class="even">
<td class="has-text-align-left" data-align="left">nmap 192.168.1.1-50
-sL -dns-server 192.168.1.1</td>
<td class="has-text-align-left" data-align="left">Query the Internal DNS
for hosts, list targets only</td>
</tr>
<tr class="odd">
<td class="has-text-align-left" data-align="left">nmap 192.168.1.1
--packet-trace</td>
<td class="has-text-align-left" data-align="left">Show the details of
the packets that are sent and received during a scan and capture the
traffic.</td>
</tr>
</tbody>
</table>
</figure>
