.class final Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessagePermissionChoice:I

.field private mMessageRejectedTimes:I

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mPhonebookRejectedTimes:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "profileManager"
    .parameter "device"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 174
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 176
    iput-object p3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 177
    iput-object p4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 179
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 180
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 253
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    :cond_0
    return-void

    .line 257
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 259
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 260
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .parameter "connectAllProfiles"

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, preferredProfiles:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 238
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 238
    :cond_3
    invoke-interface {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 247
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-nez v1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .parameter "profile"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 605
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 606
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;

    .line 607
    .local v0, callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 609
    .end local v0           #callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 297
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 481
    return-void
.end method

.method private fetchMessagePermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 739
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 741
    return-void
.end method

.method private fetchMessageRejectTimes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 744
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 746
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 747
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 415
    :cond_0
    return-void
.end method

.method private fetchPhonebookPermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 686
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 688
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 690
    return-void
.end method

.method private fetchPhonebookRejectTimes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 693
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 695
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 696
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 373
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchPhonebookPermissionChoice()V

    .line 374
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchMessagePermissionChoice()V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchPhonebookRejectTimes()V

    .line 376
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchMessageRejectTimes()V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 379
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 380
    return-void
.end method

.method private saveMessageRejectTimes()V
    .locals 4

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 752
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    if-nez v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 758
    return-void

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private savePhonebookRejectTimes()V
    .locals 4

    .prologue
    .line 699
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 702
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    if-nez v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 707
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    return-void

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 484
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 485
    .local v1, uuids:[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 487
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 488
    .local v2, localUuids:[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 503
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 361
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 364
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 635
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 636
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 652
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 635
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 639
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 641
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 639
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 644
    :cond_5
    iget-boolean v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 645
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 644
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 648
    :cond_8
    iget-short v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 649
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 652
    :cond_9
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .locals 2
    .parameter "connectAllProfiles"

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 210
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 291
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 279
    return-void
.end method

.method disconnect()V
    .locals 5

    .prologue
    .line 183
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 184
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 189
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settings/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 190
    .local v0, PbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 192
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 194
    :cond_1
    return-void
.end method

.method disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 619
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 620
    :cond_0
    const/4 v0, 0x0

    .line 622
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, connectableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 581
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getMessagePermissionChoice()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    return v0
.end method

.method getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .parameter "profile"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 353
    .local v0, state:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v0           #state:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 466
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 467
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 468
    .local v2, status:I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 473
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 4

    .prologue
    .line 449
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 450
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 451
    .local v2, status:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 452
    const/4 v3, 0x1

    .line 456
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 217
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .parameter "bondState"

    .prologue
    const/4 v1, 0x0

    .line 539
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 541
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 542
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 543
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 544
    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 545
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->savePhonebookRejectTimes()V

    .line 546
    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 547
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->saveMessageRejectTimes()V

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 552
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 558
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 560
    :cond_2
    return-void

    .line 555
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .locals 5
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 136
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 150
    :cond_2
    instance-of v0, p1, Lcom/android/settings/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 153
    :cond_3
    instance-of v0, p1, Lcom/android/settings/bluetooth/MapProfile;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 160
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 163
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 4

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 530
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 536
    return-void
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 419
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 512
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 513
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 405
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 406
    return-void
.end method

.method registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 595
    monitor-exit v1

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 563
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 564
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 565
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 567
    :cond_0
    return-void
.end method

.method setMessagePermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    const/4 v2, 0x2

    .line 716
    if-ne p1, v2, :cond_0

    .line 717
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 718
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->saveMessageRejectTimes()V

    .line 719
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    if-ge v1, v2, :cond_0

    .line 734
    :goto_0
    return-void

    .line 724
    :cond_0
    iput p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 726
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 728
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 733
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 399
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 401
    :cond_0
    return-void

    .line 396
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method setPhonebookPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    const/4 v2, 0x2

    .line 665
    if-ne p1, v2, :cond_0

    .line 666
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 667
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->savePhonebookRejectTimes()V

    .line 668
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    if-ge v1, v2, :cond_0

    .line 683
    :goto_0
    return-void

    .line 673
    :cond_0
    iput p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 675
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 677
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 682
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 437
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 438
    iput-short p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 439
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 441
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 427
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 428
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 430
    :cond_0
    return-void
.end method

.method startPairing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 305
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    .line 313
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .locals 6

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 328
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 332
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 334
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 336
    .local v2, successful:Z
    if-eqz v2, :cond_1

    .line 338
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_1
    return-void
.end method

.method unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 601
    monitor-exit v1

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
