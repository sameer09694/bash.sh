<pre><font color="#34E2E2">#!/bin/bash</font>

<font color="#34E2E2"># Add any additional packages you want to install here</font>
<font color="#34E2E2"><b>packages</b></font>=<font color="#5FD7FF">(</font>
<font color="#FFD7D7">  </font><font color="#FCE94F">&quot;</font><font color="#AD7FA8">https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb</font><font color="#FCE94F">&quot;</font>
<font color="#FFD7D7">  </font><font color="#FCE94F">&quot;</font><font color="#AD7FA8">https://download.anydesk.com/linux/anydesk_7.0.6-1_amd64.deb</font><font color="#FCE94F">&quot;</font>
<font color="#FFD7D7">  </font><font color="#FCE94F">&quot;</font><font color="#AD7FA8">https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10702/wps-office_11.1.0.10702_amd64.deb</font><font color="#FCE94F">&quot;</font>
<font color="#5FD7FF">)</font>

<font color="#34E2E2"># Download and install packages</font>
<font color="#FCE94F">for</font> package <font color="#FCE94F">in</font> <font color="#FCE94F">&quot;</font><font color="#5FD7FF">${packages[</font>@<font color="#5FD7FF">]}</font><font color="#FCE94F">&quot;</font>; <font color="#FCE94F">do</font>
  wget <font color="#FCE94F">&quot;</font><font color="#5FD7FF">$package</font><font color="#FCE94F">&quot;</font>
<font color="#FCE94F">done</font>

sudo dpkg <font color="#FFD7D7">-i</font> *.deb
sudo apt-get install <font color="#FFD7D7">-f</font>

<font color="#34E2E2"># Install JumpCloud</font>
sudo curl <font color="#FFD7D7">--tlsv1.2</font> <font color="#FFD7D7">--silent</font> <font color="#FFD7D7">--show-error</font> <font color="#FFD7D7">--header</font> <font color="#FCE94F">&apos;</font><font color="#AD7FA8">x-connect-key: 2c035afaf0b3d4bb6672ba85499014f7cf50d739</font><font color="#FCE94F">&apos;</font> https://kickstart.jumpcloud.com/Kickstart | sudo bash

<font color="#34E2E2"># Optionally, you can remove the downloaded packages after installation</font>
<font color="#34E2E2"># rm -f *.deb</font>

<font color="#FCE94F">echo</font><font color="#AD7FA8"> </font><font color="#FCE94F">&quot;</font><font color="#AD7FA8">Installation completed.</font><font color="#FCE94F">&quot;</font>

</pre>
