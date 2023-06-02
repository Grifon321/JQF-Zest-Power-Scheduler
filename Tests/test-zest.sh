#!/bin/bash

TIMEOFTEST="6h"
ZESTDATA="jqf-zest"
AFLDATA="jqf-zest-AFL"
QUADDATA="jqf-zest-AFL-QUAD"
ENTROPIC="jqf-zest-Entropic"

echo $$ > Logger.txt
echo "Starting the tests at" >> Logger.txt
date >> Logger.txt
echo "   " >> Logger.txt
for Suite in ant bce clo mvn rhi
do

	echo "Starting suite ${Suite} for ${ZESTDATA}\n\n" >> Logger.txt	
	for ((i = 1; i <= 10; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} for ${AFLDATA}" >> Logger.txt	
	echo "   " >> Logger.txt
	for ((i = 1; i <= 10; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} for ${QUADDATA}" >> Logger.txt
	echo "   " >> Logger.txt
	for ((i = 1; i <= 10; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} for ${ENTROPIC} 256" >> Logger.txt
	echo "   " >> Logger.txt
	for ((i = 1; i <= 10; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} for ${Entropic} 4096" >> Logger.txt	
	echo "   " >> Logger.txt
	for ((i = 1; i <= 10; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	wait
	echo "Done with 10 tests of Suite ${Suite}" >> Logger.txt
	echo "   " >> Logger.txt

	date >> Logger.txt
	echo "   " >> Logger.txt
	echo "Starting suite ${Suite} for ${ZESTDATA}" >> Logger.txt
	echo "   " >> Logger.txt
	for ((i = 11; i <= 20; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${ZESTDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator ../res/Zest-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Zest-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} for ${AFLDATA}" >> Logger.txt	
	echo "   " >> Logger.txt
	for ((i = 11; i <= 20; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${AFLDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator ../res/Afl-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Afl-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} for ${QUADDATA}" >> Logger.txt	
	echo "   " >> Logger.txt
	for ((i = 11; i <= 20; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${QUADDATA} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator ../res/Quad-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Quad-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} fro ${ENTROPIC} 256" >> Logger.txt
	echo "   " >> Logger.txt
	for ((i = 11; i <= 20; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator 256 ../res/Entropic256-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic256-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	echo "Starting suite ${Suite} for ${ENTROPIC} 4096" >> Logger.txt
	echo "   " >> Logger.txt
	for ((i = 11; i <= 20; i++))
	do
		case $Suite in
			ant)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.ant.ProjectBuilderTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			bce)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.bcel.ParserTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			clo)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.closure.CompilerTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			mvn)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.maven.ModelReaderTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
			rhi)
				timeout ${TIMEOFTEST} ../bin/${ENTROPIC} -c $(../scripts/examples_classpath.sh) \
				    edu.berkeley.cs.jqf.examples.rhino.CompilerTest testWithGenerator 4096 ../res/Entropic4096-${Suite}-${i} & >> Logger.txt
				test_PID=$!
				echo "Entropic4096-${Suite}-$i is being done with the PID = ${test_PID}:" >> Logger.txt
			;;
		esac
	done
	wait
	echo "Done with 20 tests of Suite ${Suite}\n\n" >> Logger.txt
	echo "   " >> Logger.txt
	date >> Logger.txt
	echo "   " >> Logger.txt
done
echo "All done!" >> Logger.txt
date >> Logger.txt

