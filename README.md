ThinkingBridge
===========


Getting Started
---------------

To get started with ThinkingBridge, you'll need to get
familiar with [Git and Repo](http://source.android.com/download/using-repo).

To initialize your local repository using the ThinkingBridge trees, use a command like this:

    repo init -u git://github.com/ThinkingBridge/platform_manifest.git -b jb-mr1

Then to sync up:

    repo sync

Building (Only for Pico)
------------------------

Place the vendor blobs from here-- https://github.com/7alvi/ics-vendor-pico
In vendor/htc/pico/ (create the directories)

Go to hardware/qcom/ and delete the legacy folders

Download display-legacy from here-- https://github.com/7alvi/android_hardware_qcom_display-legacy-1
Place it in hardware/qcom/
rename the folder as display-legacy

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

Run

. build/envsetup.sh

Run

brunch thinkingbridge_pico-userdebug -j3
