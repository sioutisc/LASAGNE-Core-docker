#!/bin/bash

echo
echo "Hello there! and welcome to ..."
echo

figlet "LASAGNE"

echo
echo "The default CMD of this container executes the TextParser example located at:"
echo "    > $TAF_ROOT/examples/TextParser"
echo
echo "The TextParser example takes a paragraph of text, extracts the words,"
echo "then sorts them in different ways."
echo
echo "The text of the example paragraph is listed below..."
echo
echo "============================================================================="
echo

cat $TAF_ROOT/examples/TextParser/SOA_Abstract.txt

echo
echo
echo "============================================================================="
echo
echo "Press 'enter' to execute the TextParser example, then"
echo
echo "Press 'enter' again to quit the container when finished"

read -n1 -r -p "" key

cd $DAF_ROOT/bin

./TAFServer -TAFServices DSTO.conf:textparser -ORBListenEndpoints iiop://:8989 & export TAF_PID=$!

echo "Waiting 2 secs for the TAFServer to start..."
echo

sleep 2

cd $TAF_ROOT/examples/TextParser

./TextParserClient -ORBInitRef TAF_XMPL_TextParserService=iiop://localhost:8989/TAF_XMPL_TextParserService -f SOA_Abstract.txt & export TXT_PID=$!

read -n1 -r -p "Executing ... press 'enter' to quit..." key

kill $TXT_PID

kill $TAF_PID
