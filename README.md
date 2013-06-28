ThinkingBridge
---------------

Getting Started
---------------

To get started with ThinkingBridge, you'll need to get
familiar with [Git and Repo](http://source.android.com/download/using-repo).

To initialize your local repository using the ThinkingBridge trees, use a command like this:

    repo init -u git://github.com/ThinkingBridge/platform_manifest.git -b jb-mr1

Then to sync up:

    repo sync

Building A310e
------------------------
Go -- hardware/qcom/ and delete the legacy folders

Display-legacy from here-- https://github.com/wr4eng/android_hardware_qcom_display-legacy
Place it in hardware/qcom/
rename the folder as display-legacy

------------------------

Build Run

	. build/envsetup.sh

	brunch thinkingbridge_pico-userdebug -j3

