.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .parameter "dpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 837
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 839
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 840
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 844
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 845
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 846
    iput-object p4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 847
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 798
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    .line 805
    :goto_0
    return v0

    .line 800
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801fd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801fe

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 801
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 802
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f08020e

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 803
    const/4 v0, 0x3

    goto :goto_0

    .line 805
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "holder"
    .parameter "icon"

    .prologue
    .line 979
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 980
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 982
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 983
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 985
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 5
    .parameter "header"
    .parameter "holder"

    .prologue
    .line 959
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 961
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, accType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 964
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 968
    .end local v0           #accType:Ljava/lang/String;
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 970
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 971
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    :goto_1
    return-void

    .line 966
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 974
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 812
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f080023

    const v9, 0x1020016

    const v8, 0x1020010

    const/4 v4, 0x0

    .line 852
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 853
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 854
    .local v2, headerType:I
    const/4 v5, 0x0

    .line 856
    .local v5, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 857
    new-instance v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 858
    .local v3, holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 899
    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 906
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 955
    :goto_2
    return-object v5

    .line 860
    :pswitch_0
    new-instance v5, Landroid/widget/TextView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x1010208

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v5       #view:Landroid/view/View;
    move-object v6, v5

    .line 862
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 866
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040062

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 868
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 869
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 871
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 873
    const v6, 0x7f08000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 877
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040060

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 879
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 880
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 882
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 884
    const v6, 0x7f0800eb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 885
    const v6, 0x7f08007d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto :goto_0

    .line 889
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040061

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 892
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 893
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 895
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 901
    .end local v3           #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object v5, p2

    .line 902
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 908
    :pswitch_4
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 913
    :pswitch_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0801fd

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 914
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 918
    :goto_3
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 916
    :cond_1
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 922
    :pswitch_6
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f08020e

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 923
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v0

    .line 924
    .local v0, hasCert:Z
    if-eqz v0, :cond_5

    .line 925
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 926
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    .line 928
    .local v4, isManaged:Z
    :cond_2
    if-eqz v4, :cond_4

    .line 929
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x7f020060

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 934
    :goto_4
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/settings/Settings$HeaderAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    .end local v0           #hasCert:Z
    .end local v4           #isManaged:Z
    :cond_3
    :goto_5
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 931
    .restart local v0       #hasCert:Z
    .restart local v4       #isManaged:Z
    :cond_4
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 943
    .end local v4           #isManaged:Z
    :cond_5
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 944
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 951
    .end local v0           #hasCert:Z
    :pswitch_7
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 906
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 994
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 995
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 989
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 990
    return-void
.end method
