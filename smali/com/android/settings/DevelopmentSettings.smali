.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/CheckBoxPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/CheckBoxPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/CheckBoxPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTerminal:Landroid/preference/CheckBoxPreference;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mForceMsaa:Landroid/preference/CheckBoxPreference;

.field private mForceRtlLayout:Landroid/preference/CheckBoxPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mLastEnabledState:Z

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mUnavailable:Z

.field private mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

.field private mWaitForDebugger:Landroid/preference/CheckBoxPreference;

.field private mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "restrictions_pin_set"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateRuntimeValue()V

    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .parameter "prefKey"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 326
    .local v0, pref:Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 328
    return-object v0
.end method

.method private currentRuntimeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    const-string v0, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 710
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    :goto_0
    return v0

    .line 713
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 714
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1319
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1321
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1325
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1328
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1329
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1331
    :cond_2
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 662
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 665
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 669
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 672
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 673
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 677
    goto :goto_0
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 340
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_0

    .line 341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1427
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1429
    :cond_0
    :goto_0
    return v1

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 386
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 388
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 503
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 504
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 506
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 508
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 504
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v0           #cb:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 512
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 513
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 514
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 515
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 516
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 517
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 518
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 519
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 521
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 619
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 399
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 401
    .local v1, pref:Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 403
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 404
    return-void
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 456
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 457
    .local v1, cr:Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 458
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 460
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 461
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 465
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 467
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 469
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 471
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v5, "mock_location"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 473
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateRuntimeValue()V

    .line 474
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 475
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 476
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 477
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 478
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 480
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 481
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 482
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 483
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 484
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 485
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 486
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 487
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 488
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 489
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 490
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 491
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 492
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 493
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 494
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 495
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 496
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 497
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 498
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 499
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 500
    return-void

    :cond_1
    move v2, v4

    .line 458
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 461
    goto/16 :goto_1

    :cond_3
    move v2, v4

    .line 465
    goto/16 :goto_2

    :cond_4
    move v2, v4

    .line 467
    goto :goto_3

    :cond_5
    move v2, v4

    .line 469
    goto :goto_4

    :cond_6
    move v3, v4

    .line 471
    goto :goto_5
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1014
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1015
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1016
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1017
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 994
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 995
    .local v1, scale:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 996
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 998
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 999
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1000
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1001
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 1002
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1003
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1011
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 999
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    .end local v2           #val:F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1008
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1009
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1079
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1080
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1081
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1082
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1083
    .local v2, val:I
    if-lt v2, v1, :cond_1

    .line 1084
    if-eqz v0, :cond_0

    .line 1085
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1087
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1088
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1096
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1081
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1092
    .end local v2           #val:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1093
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1094
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 686
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 688
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 690
    .local v0, adbEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 691
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 692
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 702
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 688
    goto :goto_0

    .line 694
    .restart local v0       #adbEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 695
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 696
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 697
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 700
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 962
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 964
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 901
    const-string v0, "debug.hwui.overdraw"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    if-nez v0, :cond_0

    .line 903
    const-string v0, ""

    .line 906
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 907
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 908
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 909
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 910
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 916
    :goto_1
    return-void

    .line 907
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 915
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 928
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 628
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wait_for_debugger"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 640
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06a0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 642
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 647
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 628
    goto :goto_0

    .line 636
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    goto :goto_1

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b069f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 752
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 753
    if-eqz v2, :cond_0

    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 756
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 757
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 759
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 761
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 762
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 763
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 765
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 766
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 767
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 768
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 763
    goto :goto_0

    :cond_2
    move v0, v1

    .line 767
    goto :goto_1

    .line 771
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 937
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 939
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 811
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 571
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 572
    .local v1, hdcpChecking:Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 573
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, summaries:[Ljava/lang/String;
    const/4 v3, 0x1

    .line 577
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 578
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 579
    move v3, v2

    .line 583
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 584
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 587
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 577
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 988
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 990
    return-void
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 820
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1054
    const-string v0, "debug.egl.trace"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    if-nez v0, :cond_0

    .line 1056
    const-string v0, ""

    .line 1059
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1060
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1061
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1069
    :goto_1
    return-void

    .line 1060
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1029
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    if-nez v0, :cond_0

    .line 1032
    const-string v0, ""

    .line 1035
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1036
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1037
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1045
    :goto_1
    return-void

    .line 1036
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0637

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0636

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 735
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 737
    return-void
.end method

.method private updateRuntimeValue()V
    .locals 8

    .prologue
    .line 552
    const-string v6, "select_runtime"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 553
    .local v3, selectRuntime:Landroid/preference/ListPreference;
    if-eqz v3, :cond_1

    .line 554
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->currentRuntimeValue()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, summaries:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 558
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 559
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 560
    move v2, v1

    .line 564
    :cond_0
    aget-object v6, v5, v2

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 565
    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 568
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 558
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #index:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1114
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1116
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 892
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 881
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 853
    const-string v0, "debug.hwui.show_non_rect_clip"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    if-nez v0, :cond_0

    .line 856
    const-string v0, "hide"

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 860
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 861
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 862
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 863
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 869
    :goto_1
    return-void

    .line 860
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 868
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 745
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 747
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 726
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 727
    return-void

    .line 726
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 828
    const-string v0, "debug.hwui.profile"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    if-nez v0, :cond_0

    .line 830
    const-string v0, ""

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 834
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 835
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 836
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 837
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 843
    :goto_1
    return-void

    .line 834
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 842
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 650
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 653
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 950
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 953
    return-void
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 1021
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1022
    .local v0, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1023
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    .end local v0           #scale:F
    :goto_1
    return-void

    .line 1021
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1100
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1101
    .local v0, limit:I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1102
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    .end local v0           #limit:I
    :goto_1
    return-void

    .line 1100
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 602
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 603
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    return-void

    .line 604
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 4

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 968
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 970
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 972
    if-eqz v1, :cond_1

    .line 973
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 977
    :goto_1
    return-void

    .line 968
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 975
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 919
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 922
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 923
    return-void

    .line 919
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 931
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 934
    return-void

    .line 931
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 611
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 794
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 795
    if-eqz v1, :cond_1

    .line 796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 797
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 799
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    const/16 v0, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 801
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 803
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 943
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 945
    const-string v2, "debug.force_rtl"

    if-eqz v1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 947
    return-void

    .line 943
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 945
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 814
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 816
    return-void

    .line 814
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 981
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 823
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 825
    return-void

    .line 823
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1072
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1074
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1075
    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1050
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1051
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    return-void

    .line 730
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1111
    return-void

    .line 1108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 895
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 898
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 884
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 887
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 872
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 875
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 876
    return-void

    .line 872
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 742
    return-void

    .line 740
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 777
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 778
    if-eqz v1, :cond_1

    .line 779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 780
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 781
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 782
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 784
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_1
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 723
    :goto_1
    return-void

    .line 719
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 846
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 849
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 850
    return-void

    .line 846
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    return-void

    .line 656
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 959
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method filterRuntimeOptions(Landroid/preference/Preference;)V
    .locals 12
    .parameter "selectRuntime"

    .prologue
    .line 524
    move-object v2, p1

    check-cast v2, Landroid/preference/ListPreference;

    .line 525
    .local v2, pref:Landroid/preference/ListPreference;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v6, validValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v5, validSummaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, summaries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v8

    if-ge v1, v9, :cond_1

    .line 530
    aget-object v7, v8, v1

    .line 531
    .local v7, value:Ljava/lang/String;
    aget-object v4, v3, v1

    .line 532
    .local v4, summary:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/lib/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 533
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v4           #summary:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 538
    .local v0, count:I
    const/4 v9, 0x1

    if-gt v0, v9, :cond_2

    .line 540
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 545
    :goto_1
    return-void

    .line 542
    :cond_2
    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 543
    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 353
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 355
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 357
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 358
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1147
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1148
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1149
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1150
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1151
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1120
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 1121
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_1

    .line 1122
    if-eqz p2, :cond_2

    .line 1123
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1124
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1125
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b04f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1133
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1143
    :cond_1
    :goto_0
    return-void

    .line 1135
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1138
    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1139
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1334
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1335
    if-ne p2, v1, :cond_1

    .line 1336
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1337
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1339
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1340
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1341
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1346
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1347
    if-ne p2, v1, :cond_0

    .line 1349
    :try_start_0
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1350
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    .line 1351
    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    const-string v1, "DevelopmentSettings"

    const-string v2, "Unable to clear adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1356
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 1357
    if-ne p2, v1, :cond_4

    .line 1358
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1359
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1361
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1362
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 1365
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 224
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 228
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    .line 230
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 236
    const-string v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 239
    .local v0, debugDebuggingCategory:Landroid/preference/PreferenceGroup;
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 240
    const-string v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 241
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    if-eqz v0, :cond_2

    .line 243
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_2
    const-string v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    iput-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    .line 252
    :cond_3
    const-string v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 253
    const-string v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    .line 254
    const-string v3, "keep_screen_on"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 255
    const-string v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    .line 256
    const-string v3, "allow_mock_location"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 257
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 258
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 261
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 262
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 263
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 264
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 267
    :cond_4
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 268
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    .line 270
    const-string v3, "verify_apps_over_usb"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    .line 271
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_5

    .line 272
    if-eqz v0, :cond_7

    .line 273
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    :cond_5
    :goto_1
    const-string v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 279
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 280
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 281
    const-string v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 282
    const-string v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    .line 283
    const-string v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 284
    const-string v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 285
    const-string v3, "force_msaa"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    .line 286
    const-string v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 287
    const-string v3, "show_non_rect_clip"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 288
    const-string v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 289
    const-string v3, "show_hw_layers_udpates"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    .line 290
    const-string v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    .line 291
    const-string v3, "force_rtl_layout_all_locales"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    .line 292
    const-string v3, "debug_hw_overdraw"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 293
    const-string v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    .line 294
    const-string v3, "window_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 295
    const-string v3, "transition_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 296
    const-string v3, "animator_duration_scale"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 297
    const-string v3, "overlay_display_devices"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 298
    const-string v3, "enable_opengl_traces"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 300
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 302
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v3, "app_process_limit"

    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 306
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 308
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v3, "select_runtime"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 312
    .local v2, selectRuntime:Landroid/preference/Preference;
    if-eqz v2, :cond_6

    .line 313
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {p0, v2}, Lcom/android/settings/DevelopmentSettings;->filterRuntimeOptions(Landroid/preference/Preference;)V

    .line 317
    :cond_6
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 318
    .local v1, hdcpChecking:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 319
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-direct {p0, v1}, Lcom/android/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 275
    .end local v1           #hdcpChecking:Landroid/preference/Preference;
    .end local v2           #selectRuntime:Landroid/preference/Preference;
    :cond_7
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1388
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 1389
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1372
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1373
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1376
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1383
    :cond_1
    :goto_0
    return-void

    .line 1377
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1378
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 1379
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1381
    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1255
    const-string v2, "select_runtime"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1256
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v2

    .line 1257
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1258
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1259
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1260
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1261
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04f1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v3, v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1263
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1273
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DevelopmentSettings$2;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1279
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1315
    :cond_0
    :goto_0
    return v0

    .line 1282
    :cond_1
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1283
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 1285
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    goto :goto_0

    .line 1287
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 1288
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1290
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 1291
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1293
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1294
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1296
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1297
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1299
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1300
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1302
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1303
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1305
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1306
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1308
    :cond_9
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1309
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1311
    :cond_a
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1312
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    move v0, v1

    .line 1315
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1160
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    :goto_0
    return v1

    .line 1164
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1166
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1167
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1168
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b04f6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1175
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1177
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1179
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1181
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1183
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    .line 1184
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1185
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b04f8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1190
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 1191
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1192
    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    .line 1195
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    .line 1199
    :cond_9
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 1200
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_3

    .line 1204
    :cond_b
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 1205
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1206
    :cond_c
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 1207
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_4

    .line 1210
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_f

    .line 1211
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/AppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1212
    :cond_f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    .line 1213
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1214
    :cond_10
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 1215
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1216
    :cond_11
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12

    .line 1217
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1218
    :cond_12
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    .line 1219
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1220
    :cond_13
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 1221
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1222
    :cond_14
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    .line 1223
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1224
    :cond_15
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 1225
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1226
    :cond_16
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 1227
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1228
    :cond_17
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    .line 1229
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1230
    :cond_18
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 1231
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1232
    :cond_19
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    .line 1233
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1234
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 1235
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1236
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    .line 1237
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1238
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 1239
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1240
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1e

    .line 1241
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1242
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1244
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_20

    .line 1245
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1247
    :cond_20
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 408
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 410
    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 413
    .local v1, emptyView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 414
    if-eqz v1, :cond_0

    .line 415
    const v2, 0x7f0b04e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 447
    .end local v1           #emptyView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 425
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 431
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "development_settings_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 433
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 434
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 436
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v2, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 444
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 445
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 427
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 367
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 369
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 371
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 375
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 381
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 382
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 383
    return-void
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1392
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1394
    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1396
    :cond_0
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter "checkBox"
    .parameter "value"

    .prologue
    .line 450
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 451
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 452
    return-void
.end method
