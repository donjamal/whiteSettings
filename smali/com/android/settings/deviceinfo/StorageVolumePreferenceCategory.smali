.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 398
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 123
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 124
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 127
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 128
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 130
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    return-void

    .line 130
    :cond_0
    const v0, 0x7f0b043f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 117
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 135
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .parameter "excluding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 472
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 473
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 475
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 478
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 363
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 364
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 308
    .local v4, total:J
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 309
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .parameter "pref"
    .parameter "size"

    .prologue
    .line 352
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 353
    invoke-direct {p0, p2, p3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 355
    .local v0, order:I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 359
    .end local v0           #order:I
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 7

    .prologue
    const v6, 0x7f0b0335

    const v3, 0x7f0b032f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 238
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 250
    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b032c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b032d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_a

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 247
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b0321

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 256
    :cond_7
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 258
    :cond_8
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0330

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    :goto_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 262
    :cond_9
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b032e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 285
    :cond_a
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0332

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 22

    .prologue
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 141
    .local v6, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 150
    .local v9, currentUser:Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 151
    .local v14, otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_2

    const/16 v17, 0x1

    .line 153
    .local v17, showUsers:Z
    :goto_0
    new-instance v19, Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    const v19, 0x7f0b0323

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 158
    const v19, 0x7f0b0321

    const v20, 0x7f0a0003

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    const v19, 0x7f0b0325

    const v20, 0x7f0a0004

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 163
    const v19, 0x7f0b0328

    const v20, 0x7f0a0006

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 164
    const v19, 0x7f0b0329

    const v20, 0x7f0a0007

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 165
    const v19, 0x7f0b0327

    const v20, 0x7f0a0005

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 166
    const v19, 0x7f0b032b

    const v20, 0x7f0a0008

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 167
    const v19, 0x7f0b032a

    const v20, 0x7f0a0009

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "cache"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v19

    if-eqz v19, :cond_3

    :cond_0
    const/16 v16, 0x1

    .line 172
    .local v16, showDetails:Z
    :goto_1
    if-eqz v16, :cond_5

    .line 173
    if-eqz v17, :cond_1

    .line 174
    new-instance v19, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    if-eqz v17, :cond_5

    .line 185
    new-instance v19, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v20, 0x7f0b0347

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    const/4 v7, 0x0

    .line 188
    .local v7, count:I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 189
    .local v12, info:Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count:I
    .local v8, count:I
    rem-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_4

    const v5, 0x7f0a000a

    .line 191
    .local v5, colorRes:I
    :goto_3
    new-instance v18, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 193
    .local v18, userPref:Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 195
    .end local v8           #count:I
    .restart local v7       #count:I
    goto :goto_2

    .line 146
    .end local v5           #colorRes:I
    .end local v7           #count:I
    .end local v9           #currentUser:Landroid/content/pm/UserInfo;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/pm/UserInfo;
    .end local v14           #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16           #showDetails:Z
    .end local v17           #showUsers:Z
    .end local v18           #userPref:Lcom/android/settings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 147
    .local v10, e:Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Failed to get current user"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 151
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v9       #currentUser:Landroid/content/pm/UserInfo;
    .restart local v14       #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 171
    .restart local v17       #showUsers:Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 189
    .restart local v8       #count:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #info:Landroid/content/pm/UserInfo;
    .restart local v16       #showDetails:Z
    :cond_4
    const v5, 0x7f0a000b

    goto :goto_3

    .line 199
    .end local v8           #count:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/pm/UserInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 201
    .local v13, isRemovable:Z
    :goto_4
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 202
    if-eqz v13, :cond_6

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b032c

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b032d

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    const/4 v4, 0x1

    .line 209
    .local v4, allowFormat:Z
    :goto_5
    if-eqz v4, :cond_7

    .line 210
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0331

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0332

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 218
    .local v15, pm:Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 219
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOrder(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b033d

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b033e

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 230
    :cond_8
    :goto_6
    return-void

    .line 199
    .end local v4           #allowFormat:Z
    .end local v13           #isRemovable:Z
    .end local v15           #pm:Landroid/content/pm/IPackageManager;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 208
    .restart local v13       #isRemovable:Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 224
    .restart local v4       #allowFormat:Z
    .restart local v15       #pm:Landroid/content/pm/IPackageManager;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 228
    :catch_1
    move-exception v19

    goto :goto_6
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 416
    const/4 v0, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 425
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_2

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 436
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 441
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 388
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 384
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 392
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 369
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 373
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 374
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .parameter "isUsbConnected"
    .parameter "usbFunction"

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 378
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 380
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 6
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 297
    sub-long v0, p1, p3

    .line 299
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 300
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 301
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 303
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 304
    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 16
    .parameter "details"

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 318
    .local v8, showDetails:Z
    :goto_0
    if-nez v8, :cond_2

    .line 349
    :goto_1
    return-void

    .line 317
    .end local v8           #showDetails:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 321
    .restart local v8       #showDetails:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 326
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 328
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    .line 330
    .local v1, dcimSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 332
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 335
    .local v6, musicSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 337
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    .line 338
    .local v3, downloadsSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 344
    .local v9, userPref:Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v13, v9, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v12, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 345
    .local v10, userSize:J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 348
    .end local v9           #userPref:Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v10           #userSize:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method
