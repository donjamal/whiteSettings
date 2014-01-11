.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsOnlyImeSettings:Z

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private final mOnImePreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mOnImePreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 595
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;)Lcom/android/settings/inputmethod/InputMethodPreference;
    .locals 6
    .parameter "imi"

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 462
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 465
    .local v1, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, settingsActivity:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    :goto_0
    new-instance v3, Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v3, p0, v0, v5, p1}, Lcom/android/settings/inputmethod/InputMethodPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 476
    .local v3, pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v3, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    return-object v3

    .line 470
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "languageCode"
    .parameter "locales"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, count:I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 366
    .local v4, localeCode:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 368
    add-int/lit8 v1, v1, 0x1

    .line 369
    if-le v1, v5, :cond_0

    .line 374
    .end local v4           #localeCode:Ljava/lang/String;
    :goto_1
    return v6

    .line 365
    .restart local v4       #localeCode:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v4           #localeCode:Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 585
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 586
    .local v1, devices:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 587
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 588
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    const/4 v3, 0x1

    .line 592
    .end local v0           #device:Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 586
    .restart local v0       #device:Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    .end local v0           #device:Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private showKeyboardLayoutDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 543
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, fragment:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 447
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 449
    .local v2, curPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 450
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 452
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 572
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 575
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 577
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 582
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :goto_1
    return-void

    .line 577
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 580
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 487
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 489
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 490
    .local v2, devices:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 491
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 492
    .local v1, device:Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 495
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, inputDeviceDescriptor:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 498
    .local v7, keyboardLayoutDescriptor:Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 501
    .local v6, keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 502
    .local v8, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 503
    if-eqz v6, :cond_2

    .line 504
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    :goto_2
    new-instance v10, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 515
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5       #inputDeviceDescriptor:Ljava/lang/String;
    .restart local v7       #keyboardLayoutDescriptor:Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 498
    goto :goto_1

    .line 506
    .restart local v6       #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .restart local v8       #pref:Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f0b04ae

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 520
    .end local v1           #device:Landroid/view/InputDevice;
    .end local v2           #devices:[I
    .end local v3           #i:I
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 521
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_5

    .line 522
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 523
    .local v8, pref:Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 524
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 526
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 528
    .end local v4           #i:I
    .end local v8           #pref:Landroid/preference/Preference;
    .restart local v3       #i:I
    :cond_5
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 529
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 530
    .local v0, count:I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 531
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 532
    .restart local v8       #pref:Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 533
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 530
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 536
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    .end local v0           #count:I
    .end local v3           #i:I
    :goto_5
    return-void

    .line 538
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 483
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 484
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 10

    .prologue
    .line 406
    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 408
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 409
    .local v5, imp:Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 434
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #imp:Lcom/android/settings/inputmethod/InputMethodPreference;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 411
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 412
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v7}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    .line 413
    .local v4, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 414
    .local v0, N:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 415
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 416
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;)Lcom/android/settings/inputmethod/InputMethodPreference;

    move-result-object v6

    .line 417
    .local v6, pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mOnImePreferenceChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v6, v7}, Lcom/android/settings/inputmethod/InputMethodPreference;->setOnImePreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 418
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 413
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 421
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 422
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 423
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 424
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/Preference;

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 429
    :cond_3
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 430
    .local v6, pref:Landroid/preference/Preference;
    instance-of v7, v6, Lcom/android/settings/inputmethod/InputMethodPreference;

    if-eqz v7, :cond_4

    .line 431
    check-cast v6, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local v6           #pref:Landroid/preference/Preference;
    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_4

    .line 434
    :cond_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 443
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 3
    .parameter "userDictionaryPreference"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 197
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v1

    .line 198
    .local v1, localeSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 561
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 563
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_descriptor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, inputDeviceDescriptor:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 567
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    .line 569
    .end local v0           #inputDeviceDescriptor:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 116
    const v0, 0x7f0b0005

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    :goto_1
    new-instance v0, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    .line 138
    const-string v0, "hard_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 139
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 141
    const-string v0, "game_controller_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 145
    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    .line 161
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 162
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    const-string v1, "current_input_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/settings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/SpellCheckersPreference;

    .line 178
    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 182
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 184
    return-void

    .line 125
    :cond_3
    const-string v0, "phone_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 118
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 317
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 322
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 327
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 300
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 312
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 332
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    .line 360
    :goto_0
    return v4

    .line 335
    :cond_0
    instance-of v5, p2, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 336
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 360
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 338
    :cond_2
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 341
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 343
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    move-object v0, p2

    .line 344
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 345
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 346
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 347
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_5

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 346
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 354
    .end local v1           #i:I
    :cond_6
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 239
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 240
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    const/4 v9, 0x0

    invoke-virtual {v6, p0, v9}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 242
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v6, :cond_1

    .line 243
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 245
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, language:Ljava/lang/String;
    const-string v6, "zz"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 253
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, country:Ljava/lang/String;
    const-string v6, "ZZ"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    const-string v5, "[Developer] Accented English (zz_ZZ)"

    .line 267
    .end local v2           #country:Ljava/lang/String;
    .local v5, localeString:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #localeString:Ljava/lang/String;
    :cond_0
    const-string v6, "key_user_dictionary_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 281
    :cond_1
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 282
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 283
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 285
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_6

    move v6, v7

    :goto_2
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 256
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v3           #i:I
    .restart local v1       #conf:Landroid/content/res/Configuration;
    .restart local v2       #country:Ljava/lang/String;
    .restart local v4       #language:Ljava/lang/String;
    :cond_2
    const-string v6, "ZY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 257
    const-string v5, "[Developer] Fake Bi-Directional (zz_ZY)"

    .restart local v5       #localeString:Ljava/lang/String;
    goto :goto_0

    .line 259
    .end local v5           #localeString:Ljava/lang/String;
    :cond_3
    const-string v5, ""

    .restart local v5       #localeString:Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v2           #country:Ljava/lang/String;
    .end local v5           #localeString:Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 263
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #localeString:Ljava/lang/String;
    goto/16 :goto_0

    .line 265
    .end local v5           #localeString:Ljava/lang/String;
    :cond_5
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #localeString:Ljava/lang/String;
    goto/16 :goto_0

    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #localeString:Ljava/lang/String;
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v3       #i:I
    :cond_6
    move v6, v8

    .line 285
    goto :goto_2

    .line 290
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v3           #i:I
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 294
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 295
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 296
    return-void
.end method

.method public onSetupKeyboardLayouts(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 553
    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 556
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 557
    return-void
.end method
