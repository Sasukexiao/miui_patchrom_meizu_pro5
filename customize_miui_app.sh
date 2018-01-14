#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
APKTOOL=$PORT_ROOT/tools/apktool

curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name "*.patch"`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

if [ $1 = "TeleService" ];then
    applyPatch $1 $2
fi

if [ $1 = "InCallUI" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "SecurityCenter" ];then
    applyPatch $1 $2
	#Fix MIUI SecurityCenter icon dislocation
	sed -i -e 's/sdkInfo: null/sdkInfo:/' -e '/sdkInfo:/a\  minSdkVersion: '\''23'\''\n  targetSdkVersion: '\''23'\''' $2/apktool.yml
fi

if [ $1 = "MiuiSystemUI" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
    applyPatch $1 $2
fi

if [ $1 = "PersonalAssistant" ];then
    applyPatch $1 $2
fi

#if [ $1 = "miuisystem" ];then
#    applyPatch $1 $2
#fi

if [ $1 = "Mms" ];then
    sed -i 's/  - 16/  - 16\n  - 18/g' $2/apktool.yml
    make out/framework-res.apk
	$APKTOOL if out/framework-res.apk
fi

if [ $1 = "XiaomiServiceFramework" ];then
    applyPatch $1 $2
fi
