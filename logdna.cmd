{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red63\green63\blue63;\red234\green234\blue234;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs20 \cf0 @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%chocolateybin\
choco install logdna-agent -y\
logdna-agent -k d8e14421399a44a9a35dfc49c7f5f0aa # this is your unique Agent API Key\
:: by default the agent monitors %ALLUSERSPROFILE%logs\
logdna-agent -d \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 D:\\home\\LogFiles\\\cf0 \cb1 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
nssm start logdna-agent}